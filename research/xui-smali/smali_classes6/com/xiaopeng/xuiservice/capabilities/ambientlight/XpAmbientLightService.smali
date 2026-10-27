.class public Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;,
        Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;
    }
.end annotation


# static fields
.field private static final APPEND:I = 0x1

.field private static final CHANGE:I = 0x0

.field private static final KEY_ATL_SW:Ljava/lang/String; = "atl_speaker"

.field private static final MODEPATH:Ljava/lang/String; = "/system/etc/xuiservice/ambient/modes"

.field public static final MSG_BILOG:I = 0x64

.field public static final MSG_BRIGHT:I = 0x6

.field public static final MSG_COLORTYPE:I = 0x7

.field public static final MSG_DOUBLECOLOR:I = 0x9

.field public static final MSG_ENABLE:I = 0x1

.field public static final MSG_ERR_EFFECT:I = 0xd

.field public static final MSG_ERR_MODE:I = 0xe

.field public static final MSG_MONOCOLOR:I = 0x8

.field public static final MSG_PLAY:I = 0x2

.field public static final MSG_REGIONBRIGHT:I = 0xc

.field public static final MSG_REGIONCOLOR:I = 0xb

.field public static final MSG_REQUEST:I = 0x0

.field public static final MSG_SETMODE:I = 0x4

.field public static final MSG_STOP:I = 0x3

.field public static final MSG_SUBMODE:I = 0x5

.field public static final MSG_THEMECOLOR:I = 0xa

.field private static final PATH:Ljava/lang/String; = "/system/etc/xuiservice/ambient/controller.conf"

.field private static final TAG:Ljava/lang/String; = "XpAmbientLightService"

.field private static final THEMEPATH:Ljava/lang/String; = "/system/etc/xuiservice/ambient/themes"

.field private static final TICK_PERIOD:I = 0x32

.field private static final linNames:[Ljava/lang/String;

.field private static sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# instance fields
.field private final MIN:I

.field private hasApply:Z

.field private hasCarSpeed:Z

.field private hasCatchHue:Z

.field private volatile hasChange:Z

.field private hasController:Z

.field private hasDebug:Z

.field private hasDoorLight:Z

.field private hasEnable:Z

.field private hasFlowing:Z

.field private hasIgOn:Z

.field private hasInit:Z

.field private hasLite:Z

.field private hasMcuOn:Z

.field private volatile hasRhythmBrightChange:Z

.field private volatile hasSpeedBrightChange:Z

.field private hasSwitchOn:Z

.field private hasVisualizer:Z

.field private mBright:I

.field private mBuilder:Landroid/car/hardware/atl/AtlConfiguration$Builder;

.field private mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

.field private mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

.field private mColor:I

.field private mColorTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

.field private mDisplayId:I

.field private mDoubleColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDutyCycleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectPartitions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFactor:I

.field private mFadeIn:I

.field private mFadeOut:I

.field private mFadeTime:I

.field private mFlowHashCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFlowingEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mGroup:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHashCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHueColor:I

.field private mHueDataListener:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mModePartitions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayEffect:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayFlowingEffect:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mRatio:F

.field private mRegionBrightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegionColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRhythmBright:I

.field private mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

.field private mSpeedBright:I

.field private mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

.field private mThemeColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;",
            ">;"
        }
    .end annotation
.end field

.field private mTickRatio:I

.field private mTime:J

.field private mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    const-string v0, "lin1"

    const-string v1, "lin2"

    const-string v2, "lin3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->linNames:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 2510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->MIN:I

    .line 99
    new-instance v1, Landroid/util/ArraySet;

    const-string v2, "stable"

    const-string v3, "breath"

    const-string v4, "speed"

    const-string v5, "music"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModes:Ljava/util/Set;

    .line 100
    new-instance v1, Landroid/util/ArraySet;

    const-string v2, "mono"

    const-string v3, "double"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    .line 101
    new-instance v1, Landroid/util/ArraySet;

    const-string v2, "all"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    .line 102
    new-instance v1, Landroid/util/ArraySet;

    const-string v2, "all"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    .line 104
    const-string v1, "persist.sys.xpeng.ambient_debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDebug:Z

    .line 105
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getAtlType()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    .line 107
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDoorLight:Z

    .line 108
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->getInstance()Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    .line 115
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    .line 117
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 118
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 119
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    .line 121
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    .line 122
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    .line 123
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    .line 124
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    .line 125
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    .line 127
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTime:J

    .line 128
    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeIn:I

    const/16 v4, 0x3e8

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeOut:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFactor:I

    .line 129
    iput v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTickRatio:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDisplayId:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mGroup:I

    .line 131
    const/4 v4, 0x0

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRatio:F

    .line 136
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSwitchOn:Z

    .line 137
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    .line 138
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    .line 139
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    .line 140
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mMonoColorMap:Ljava/util/Map;

    .line 141
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDoubleColorMap:Ljava/util/Map;

    .line 142
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeColorMap:Ljava/util/Map;

    .line 143
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionColorMap:Ljava/util/Map;

    .line 144
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionBrightMap:Ljava/util/Map;

    .line 146
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    .line 147
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayFlowingEffect:Ljava/lang/String;

    .line 148
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRandom:Ljava/util/Random;

    .line 149
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHashCodeMap:Ljava/util/Map;

    .line 150
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowHashCodeMap:Ljava/util/Map;

    .line 2511
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mContext:Landroid/content/Context;

    .line 2512
    const-string v1, "/system/etc/xuiservice/ambient/modes"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadAmbientModes(Ljava/lang/String;)V

    .line 2514
    const-string v1, "XpAmbientLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XpAmbientLightService, hasController="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-eqz v1, :cond_10

    .line 2517
    const-string v0, "/system/etc/xuiservice/ambient/controller.conf"

    const-class v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    .line 2518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    .line 2520
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load /system/etc/xuiservice/ambient/controller.conf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v3, :cond_3

    const-string v3, " succeed"

    goto :goto_3

    :cond_3
    const-string v3, " failed"

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 2523
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "fade_in"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2524
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "fade_in"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeIn:I

    :goto_4
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeIn:I

    .line 2525
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "fade_out"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2526
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "fade_out"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeOut:I

    :goto_5
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeOut:I

    .line 2527
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "factor"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2528
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    const-string v1, "factor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_6
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFactor:I

    :goto_6
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFactor:I

    .line 2530
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paramsMap: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->paramsMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->strategyMap:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 2534
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->strategyMap:Ljava/util/Map;

    const-string v1, "doorlight"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2535
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->strategyMap:Ljava/util/Map;

    const-string v1, "doorlight"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    :cond_8
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDoorLight:Z

    .line 2537
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strategyMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->strategyMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->colorTypes:Ljava/util/Set;

    if-eqz v0, :cond_a

    .line 2541
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->colorTypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    .line 2543
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    const-string v1, "theme"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2547
    const-string v0, "/system/etc/xuiservice/ambient/themes"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->loadThemesColor(Ljava/lang/String;)V

    .line 2550
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->modePartitionsMap:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 2551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->modePartitionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    .line 2553
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partition(mode): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->effectPartitionsMap:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 2557
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->effectPartitionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    .line 2559
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partition(effect): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->regionsMap:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 2563
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->regionsMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    .line 2565
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    :cond_e
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-eqz v0, :cond_12

    .line 2569
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    if-eqz v2, :cond_f

    const-string v2, " lite "

    goto :goto_7

    :cond_f
    const-string v2, " "

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flowing ambient light"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2571
    :cond_10
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v1, :cond_11

    .line 2572
    new-instance v1, Landroid/util/ArraySet;

    const-string v4, "stable"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModes:Ljava/util/Set;

    .line 2573
    new-instance v1, Landroid/util/ArraySet;

    const-string v4, "mono"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    .line 2575
    const-string v1, "XpAmbientLightService"

    const-string v4, "init AtlConfiguration"

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    new-instance v1, Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-direct {v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;-><init>()V

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    .line 2578
    invoke-virtual {v1, v4}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    .line 2579
    invoke-virtual {v1, v3}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLeftAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    .line 2580
    invoke-virtual {v1, v3}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isRightAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    .line 2581
    invoke-virtual {v1, v2}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->colorType(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    const-string v2, "all"

    .line 2582
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMonoColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    .line 2583
    invoke-virtual {v1, v3}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isFadeEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v1

    .line 2584
    invoke-virtual {v1, v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->fadingTime(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v0

    const/16 v1, 0x64

    .line 2585
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->intensity(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBuilder:Landroid/car/hardware/atl/AtlConfiguration$Builder;

    goto :goto_8

    .line 2587
    :cond_11
    const/16 v0, 0x96

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeIn:I

    .line 2588
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeOut:I

    .line 2589
    const/16 v0, 0xf

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFactor:I

    .line 2590
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->registerObserver()V

    .line 2593
    :cond_12
    :goto_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2594
    .local v1, "partition":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2595
    .local v2, "mode":Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2596
    .local v3, "colorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 2598
    .local v4, "brightMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2599
    .local v6, "region":Ljava/lang/String;
    invoke-direct {p0, v1, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderRegionColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    invoke-direct {p0, v1, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    .end local v6    # "region":Ljava/lang/String;
    goto :goto_a

    .line 2603
    :cond_13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderPartitions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2604
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    :cond_14
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderBright(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mMonoColorMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMonoColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDoubleColorMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeColorMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionColorMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionBrightMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    .end local v1    # "partition":Ljava/lang/String;
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "colorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "brightMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_9

    .line 2615
    :cond_15
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partition modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightPartitionModes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$5;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHueDataListener:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    .line 2628
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$6;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    .line 2656
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->addMcuManagerCallback()V

    .line 2657
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->addVcuManagerCallback()V

    .line 2659
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 2692
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XpAmbientLightThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2693
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2695
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    .line 2776
    const-string v0, "ambient"

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$1GIVkSrkksj5D83YdH1zHouG7ns;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$1GIVkSrkksj5D83YdH1zHouG7ns;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 2779
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderPartitions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightEnable(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handlePlayFlowingEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handlePlayEffect(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopFlowingEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSubAmbientLightMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetFlowingAmbientLightBright(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightBright(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mGroup:I

    return v0
.end method

.method static synthetic access$11000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetFlowingAmbientLightColor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mGroup:I

    return p1
.end method

.method static synthetic access$11100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightMonoColor(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/util/Pair;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleSetAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHueColor:I

    return v0
.end method

.method static synthetic access$1202(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHueColor:I

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRhythmBright:I

    return v0
.end method

.method static synthetic access$1302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRhythmBright:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mSpeedBright:I

    return v0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mSpeedBright:I

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mMonoColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDoubleColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionBrightMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDoorLight:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTickRatio:I

    return v0
.end method

.method static synthetic access$2702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTickRatio:I

    return p1
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderBright(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Landroid/util/Pair;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeTime:I

    return v0
.end method

.method static synthetic access$3202(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeTime:I

    return p1
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->withFlowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRhythmBrightChange:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRhythmBrightChange:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSpeedBrightChange:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSpeedBrightChange:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->fadeOut()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;IILjava/util/Map;Ljava/util/Map;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setGroupLightData(IILjava/util/Map;Ljava/util/Map;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMonoColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColor:I

    return v0
.end method

.method static synthetic access$4102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColor:I

    return p1
.end method

.method static synthetic access$4200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBright:I

    return v0
.end method

.method static synthetic access$4202(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBright:I

    return p1
.end method

.method static synthetic access$4300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->fadeIn()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZZI[B)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesFade(ZZI[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZII[B)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeByteFlowing(ZII[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingBright()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesBright(I[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesColor(I[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100()[Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->linNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I[B)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesAddr(I[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowHashCodeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->upper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlLinData(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$5600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toColorStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlFlowData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;III)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->makeFlowingData(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isFlowingRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->startCaptureRatio()V

    return-void
.end method

.method static synthetic access$6300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->startCaptureHue(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCarSpeed:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCarSpeed:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopCaptureRatio()V

    return-void
.end method

.method static synthetic access$6600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDisplayId:I

    return v0
.end method

.method static synthetic access$6700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopCaptureHue(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSwitchOn:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSwitchOn:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getRawCarSpeed()F

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlOpen(Z)V

    return-void
.end method

.method static synthetic access$7600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getMcuStatusOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasMcuOn:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasMcuOn:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;F)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # F

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseSpeedBright(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTime:J

    return-wide v0
.end method

.method static synthetic access$9102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # J

    .line 67
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTime:J

    return-wide p1
.end method

.method static synthetic access$9200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->factor()I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRatio:F

    return v0
.end method

.method static synthetic access$9302(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # F

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRatio:F

    return p1
.end method

.method static synthetic access$9400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasInit:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasInit:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setSHCReq(Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->resetAtlMultiCtrl()V

    return-void
.end method

.method static synthetic access$9700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setBrightnessLevel(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->runModeEffect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleRequestAmbientLight(ZLjava/lang/String;)V

    return-void
.end method

.method private addMcuManagerCallback()V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1263
    return-void
.end method

.method private addVcuManagerCallback()V
    .locals 2

    .line 1266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1291
    return-void
.end method

.method private checkBright(I)Z
    .locals 1
    .param p1, "bright"    # I

    .line 901
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkColor(I)Z
    .locals 1
    .param p1, "color"    # I

    .line 897
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRgbColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    const/16 v0, 0x14

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkColorType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "colorType"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkEffectPartition(Ljava/lang/String;)Z
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkModePartition(Ljava/lang/String;)Z
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkPolicy(I)Z
    .locals 1
    .param p1, "priority"    # I

    .line 905
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

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

.method private checkRegion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkThemeColor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2783
    move-object/from16 v10, p2

    const/4 v0, -0x1

    .line 2784
    .local v0, "ret":I
    const-string v1, "*dump-XpAmbientLightService"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    if-eqz v10, :cond_1d

    .line 2787
    const/4 v11, 0x0

    move v12, v0

    move v0, v11

    .local v0, "i":I
    .local v12, "ret":I
    :goto_0
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-ge v13, v0, :cond_1e

    .line 2788
    aget-object v0, v10, v13

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "--setColorType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "--setGroupLightData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "--setPower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "--showFlowingEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "--setFlowingColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "--setBright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "--stopEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "--setRegionBright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "--requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "--playEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string v1, "--setMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_2

    :sswitch_b
    const-string v1, "--playFlowingEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_2

    :sswitch_c
    const-string v1, "--setThemeColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_d
    const-string v1, "--stopFlowingEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_2

    :sswitch_e
    const-string v1, "--setMonoColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_f
    const-string v1, "--setFlowingBright"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_2

    :sswitch_10
    const-string v1, "--showEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_2

    :sswitch_11
    const-string v1, "--setRegionColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_2

    :sswitch_12
    const-string v1, "--setDoubleColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_2

    :cond_0
    :goto_1
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_21

    .line 2970
    :pswitch_0
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2972
    add-int/lit8 v0, v13, 0x1

    :try_start_0
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2974
    .local v0, "bright":I
    invoke-virtual {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setFlowingAmbientLightBright(I)I

    move-result v1

    move v12, v1

    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlowingBright"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v12, :cond_1

    const-string v2, " succeed"

    goto :goto_3

    :cond_1
    const-string v2, " failed"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2977
    goto/16 :goto_21

    .line 2976
    .end local v0    # "bright":I
    :catch_0
    move-exception v0

    goto/16 :goto_21

    .line 2959
    :pswitch_1
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2961
    add-int/lit8 v0, v13, 0x1

    :try_start_1
    aget-object v0, v10, v0

    invoke-direct {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2963
    .local v0, "color":I
    invoke-virtual {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setFlowingAmbientLightColor(I)I

    move-result v1

    move v12, v1

    .line 2964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlowingColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v12, :cond_2

    const-string v2, " succeed"

    goto :goto_4

    :cond_2
    const-string v2, " failed"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2965
    .end local v0    # "color":I
    :catch_1
    move-exception v0

    .line 2966
    :goto_5
    goto/16 :goto_21

    .line 2954
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopFlowingAmbientLightEffect()I

    move-result v12

    .line 2956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopFlowingEffect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_3

    const-string v1, " succeed"

    goto :goto_6

    :cond_3
    const-string v1, " failed"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    goto/16 :goto_21

    .line 2944
    :pswitch_3
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2945
    add-int/lit8 v0, v13, 0x1

    aget-object v0, v10, v0

    .line 2946
    .local v0, "effect":Ljava/lang/String;
    array-length v1, v10

    sub-int/2addr v1, v4

    if-ge v13, v1, :cond_4

    add-int/lit8 v1, v13, 0x2

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_4
    move v1, v11

    .line 2947
    .local v1, "count":I
    :goto_7
    array-length v3, v10

    sub-int/2addr v3, v2

    if-ge v13, v3, :cond_5

    add-int/lit8 v2, v13, 0x3

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    nop

    :cond_5
    move v2, v5

    .line 2949
    .local v2, "isCoupled":Z
    invoke-virtual {v8, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I

    move-result v12

    .line 2950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playFlowingEffect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_6

    const-string v4, " succeed"

    goto :goto_8

    :cond_6
    const-string v4, " failed"

    :goto_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    .end local v0    # "effect":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "isCoupled":Z
    goto/16 :goto_21

    .line 2941
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFlowingEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showFlowingAmbientLightEffects()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    goto/16 :goto_21

    .line 2936
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopAmbientLightEffect()I

    move-result v12

    .line 2938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopEffect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_7

    const-string v1, " succeed"

    goto :goto_9

    :cond_7
    const-string v1, " failed"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    goto/16 :goto_21

    .line 2928
    :pswitch_6
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2929
    add-int/lit8 v0, v13, 0x1

    aget-object v0, v10, v0

    .line 2931
    .restart local v0    # "effect":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    .line 2932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_8

    const-string v2, " succeed"

    goto :goto_a

    :cond_8
    const-string v2, " failed"

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    .end local v0    # "effect":Ljava/lang/String;
    goto/16 :goto_21

    .line 2915
    :pswitch_7
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2917
    add-int/lit8 v0, v13, 0x1

    :try_start_2
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    move v5, v11

    :goto_b
    move v0, v5

    .line 2919
    .local v0, "apply":Z
    invoke-virtual {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->requestAmbientLightPermission(Z)I

    move-result v1

    move v12, v1

    .line 2920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    const-string v2, "apply"

    goto :goto_c

    :cond_a
    const-string v2, "release"

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    if-nez v12, :cond_b

    const-string v2, " succeed"

    goto :goto_d

    :cond_b
    const-string v2, " failed"

    :goto_d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2920
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "apply":Z
    goto :goto_e

    .line 2923
    :catch_2
    move-exception v0

    .line 2924
    :goto_e
    goto/16 :goto_21

    .line 2912
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEffects()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    goto/16 :goto_21

    .line 2894
    :pswitch_9
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2896
    add-int/lit8 v0, v13, 0x1

    :try_start_3
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2898
    .local v0, "group":I
    add-int/lit8 v1, v13, 0x2

    aget-object v1, v10, v1

    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v1

    move v14, v1

    .line 2899
    .local v14, "color":I
    add-int/lit8 v1, v13, 0x3

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v15, v1

    .line 2900
    .local v15, "bright":I
    add-int/lit8 v1, v13, 0x4

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    .line 2902
    .local v7, "fade":I
    const-string v1, "test"

    invoke-direct {v8, v5, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleRequestAmbientLight(ZLjava/lang/String;)V

    .line 2903
    const/4 v2, 0x0

    invoke-direct {v8, v14}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v8, v15}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->withFlowing()Z

    move-result v16

    move-object v1, v8

    move v3, v0

    move v6, v7

    move v11, v7

    move/from16 v7, v16

    .end local v7    # "fade":I
    .local v11, "fade":I
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setGroupLightData(IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 2904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGroupLightData, group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v13, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bright="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0    # "group":I
    goto :goto_f

    .line 2907
    .end local v11    # "fade":I
    .end local v14    # "color":I
    .end local v15    # "bright":I
    :catch_3
    move-exception v0

    .line 2908
    :goto_f
    goto/16 :goto_21

    .line 2879
    :pswitch_a
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2881
    add-int/lit8 v0, v13, 0x1

    :try_start_4
    aget-object v0, v10, v0

    .line 2882
    .local v0, "region":Ljava/lang/String;
    add-int/lit8 v1, v13, 0x2

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2884
    .local v1, "bright":I
    const-string v2, "custom"

    const-string v4, "all"

    invoke-virtual {v8, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2885
    const-string v2, "all"

    invoke-virtual {v8, v2, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    nop

    :cond_c
    move v12, v3

    .line 2886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegionBright "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2887
    if-nez v12, :cond_d

    const-string v3, " succeed"

    goto :goto_10

    :cond_d
    const-string v3, " failed"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2886
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_11

    .line 2889
    .end local v0    # "region":Ljava/lang/String;
    .end local v1    # "bright":I
    :catch_4
    move-exception v0

    .line 2890
    :goto_11
    goto/16 :goto_21

    .line 2864
    :pswitch_b
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2866
    add-int/lit8 v0, v13, 0x1

    :try_start_5
    aget-object v0, v10, v0

    .line 2867
    .restart local v0    # "region":Ljava/lang/String;
    add-int/lit8 v1, v13, 0x2

    aget-object v1, v10, v1

    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 2869
    .local v1, "color":I
    const-string v2, "custom"

    const-string v4, "all"

    invoke-virtual {v8, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2870
    const-string v2, "all"

    invoke-virtual {v8, v2, v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    nop

    :cond_e
    move v12, v3

    .line 2871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegionColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v13, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    if-nez v12, :cond_f

    const-string v3, " succeed"

    goto :goto_12

    :cond_f
    const-string v3, " failed"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2871
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_13

    .line 2874
    .end local v0    # "region":Ljava/lang/String;
    .end local v1    # "color":I
    :catch_5
    move-exception v0

    .line 2875
    :goto_13
    goto/16 :goto_21

    .line 2855
    :pswitch_c
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2856
    add-int/lit8 v0, v13, 0x1

    aget-object v0, v10, v0

    .line 2858
    .local v0, "theme":Ljava/lang/String;
    const-string v1, "theme"

    const-string v2, "all"

    invoke-virtual {v8, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2859
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    nop

    :cond_10
    move v12, v3

    .line 2860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThemeColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_11

    const-string v2, " succeed"

    goto :goto_14

    :cond_11
    const-string v2, " failed"

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    .end local v0    # "theme":Ljava/lang/String;
    goto/16 :goto_21

    .line 2839
    :pswitch_d
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2841
    :try_start_6
    new-instance v0, Landroid/util/Pair;

    add-int/lit8 v1, v13, 0x1

    aget-object v1, v10, v1

    .line 2842
    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, v13, 0x2

    aget-object v2, v10, v2

    invoke-direct {v8, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2845
    .local v0, "colors":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v1, "double"

    const-string v2, "all"

    invoke-virtual {v8, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2846
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I

    move-result v3

    nop

    :cond_12
    move v12, v3

    .line 2847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleColor ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v13, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v10, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    if-nez v12, :cond_13

    const-string v2, "] succeed"

    goto :goto_15

    :cond_13
    const-string v2, "] failed"

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2847
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .end local v0    # "colors":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_16

    .line 2850
    :catch_6
    move-exception v0

    .line 2851
    :goto_16
    goto/16 :goto_21

    .line 2828
    :pswitch_e
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2830
    add-int/lit8 v0, v13, 0x1

    :try_start_7
    aget-object v0, v10, v0

    invoke-direct {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2831
    .local v0, "color":I
    const-string v1, "mono"

    const-string v2, "all"

    invoke-virtual {v8, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2832
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightMonoColor(Ljava/lang/String;I)I

    move-result v3

    nop

    :cond_14
    move v12, v3

    .line 2833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMonoColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v13, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_15

    const-string v2, " succeed"

    goto :goto_17

    :cond_15
    const-string v2, " failed"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_18

    .line 2834
    .end local v0    # "color":I
    :catch_7
    move-exception v0

    .line 2835
    :goto_18
    goto/16 :goto_21

    .line 2820
    :pswitch_f
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2821
    add-int/lit8 v0, v13, 0x1

    aget-object v0, v10, v0

    .line 2823
    .local v0, "type":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 2824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_16

    const-string v2, " succeed"

    goto :goto_19

    :cond_16
    const-string v2, " failed"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    .end local v0    # "type":Ljava/lang/String;
    goto/16 :goto_21

    .line 2809
    :pswitch_10
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2811
    add-int/lit8 v0, v13, 0x1

    :try_start_8
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2813
    .local v0, "bright":I
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightBright(Ljava/lang/String;I)I

    move-result v1

    move v12, v1

    .line 2814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v12, :cond_17

    const-string v2, " succeed"

    goto :goto_1a

    :cond_17
    const-string v2, " failed"

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_1b

    .line 2815
    .end local v0    # "bright":I
    :catch_8
    move-exception v0

    .line 2816
    :goto_1b
    goto/16 :goto_21

    .line 2801
    :pswitch_11
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2802
    add-int/lit8 v0, v13, 0x1

    aget-object v0, v10, v0

    .line 2804
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v8, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 2805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_18

    const-string v2, " succeed"

    goto :goto_1c

    :cond_18
    const-string v2, " failed"

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    .end local v0    # "mode":Ljava/lang/String;
    goto :goto_21

    .line 2790
    :pswitch_12
    array-length v0, v10

    sub-int/2addr v0, v5

    if-ge v13, v0, :cond_1c

    .line 2792
    add-int/lit8 v0, v13, 0x1

    :try_start_9
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1d

    :cond_19
    const/4 v5, 0x0

    :goto_1d
    move v0, v5

    .line 2794
    .local v0, "status":Z
    invoke-virtual {v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAmbientLightEnable(Z)I

    move-result v1

    move v12, v1

    .line 2795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPower "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1a

    const-string v2, "on"

    goto :goto_1e

    :cond_1a
    const-string v2, "off"

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_1b

    const-string v2, " succeed"

    goto :goto_1f

    :cond_1b
    const-string v2, " failed"

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .end local v0    # "status":Z
    goto :goto_20

    .line 2796
    :catch_9
    move-exception v0

    .line 2797
    :goto_20
    nop

    .line 2787
    :cond_1c
    :goto_21
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .local v0, "i":I
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2983
    .end local v12    # "ret":I
    .local v0, "ret":I
    :cond_1d
    move v12, v0

    .end local v0    # "ret":I
    .restart local v12    # "ret":I
    :cond_1e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f881a10 -> :sswitch_12
        -0x7c6c4753 -> :sswitch_11
        -0x6393f372 -> :sswitch_10
        -0x5d496394 -> :sswitch_f
        -0x5b38de62 -> :sswitch_e
        -0x46c297dd -> :sswitch_d
        -0x44dcdc84 -> :sswitch_c
        -0x3e82d9cf -> :sswitch_b
        -0x3716307b -> :sswitch_a
        -0x33e2887b -> :sswitch_9
        -0x1ee823e2 -> :sswitch_8
        -0x12a8b110 -> :sswitch_7
        0x1d55a1d3 -> :sswitch_6
        0x231b545c -> :sswitch_5
        0x2e96cbb1 -> :sswitch_4
        0x53778508 -> :sswitch_3
        0x547aaf63 -> :sswitch_2
        0x64b24983 -> :sswitch_1
        0x72d8909b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
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

.method private factor()I
    .locals 2

    .line 854
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.xpeng.ambient_factor"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFactor:I

    :goto_0
    return v0
.end method

.method private fadeIn()I
    .locals 2

    .line 846
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.xpeng.ambient_fadein"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeIn:I

    :goto_0
    return v0
.end method

.method private fadeOut()I
    .locals 2

    .line 850
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.xpeng.ambient_fadeout"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeOut:I

    :goto_0
    return v0
.end method

.method private getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$6xhf8TTZ-m8On3FSTSesbioTZ74;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$6xhf8TTZ-m8On3FSTSesbioTZ74;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1372
    .local v0, "result":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "stable"

    :goto_0
    return-object v1
.end method

.method private getIgStatusFromMcu()I
    .locals 5

    .line 1175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 1178
    .local v0, "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1179
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private getIgStatusOn()Z
    .locals 2

    .line 1199
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2986
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    if-nez v0, :cond_1

    .line 2987
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    monitor-enter v0

    .line 2988
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    if-nez v1, :cond_0

    .line 2989
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 2991
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2994
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sService:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    return-object v0
.end method

.method private getIntProvider(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 1333
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1332
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMcuAtlsStatus()I
    .locals 5

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 1190
    .local v0, "mcu":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getMcuAtlsStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcuAtlsStatus failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x3

    return v1
.end method

.method private getMcuStatusOn()Z
    .locals 3

    .line 1203
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getMcuAtlsStatus()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private getProviderBright(Ljava/lang/String;)I
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;

    .line 1488
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientBright_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientLightBright"

    .line 1489
    const/16 v3, 0x64

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v2

    .line 1487
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .line 1394
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientColorType_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasMemColorType:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1393
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "colorType":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_2

    :cond_1
    const-string v1, "double"

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSupportColorType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1399
    const-string v1, "isDoubleColorEnable"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "double"

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "mono"

    .line 1398
    :goto_2
    return-object v1
.end method

.method private getProviderDoubleColor(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1427
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientDoubleColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DoubleFirstColor"

    .line 1429
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-string v4, "DoubleSecondColor"

    const/4 v5, 0x6

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 1426
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1432
    .local v0, "colors":J
    new-instance v2, Landroid/util/Pair;

    const-wide/16 v3, -0x1

    and-long/2addr v3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    ushr-long v4, v0, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getProviderEnable()Z
    .locals 4

    .line 1530
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientEnable"

    const-string v2, "isAmbientLightOpen"

    .line 1531
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v2

    .line 1529
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private getProviderFlowingBright()I
    .locals 3

    .line 1502
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientFlowingBright"

    .line 1501
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderFlowingColor()I
    .locals 3

    .line 1516
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientFlowingColor"

    .line 1515
    const/high16 v2, 0xff0000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 1377
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientMode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, "mode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "AmbientLightEffectType"

    const-string v2, "stable"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getStringProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getProviderMonoColor(Ljava/lang/String;)I
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;

    .line 1411
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientMonoColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonoColor"

    .line 1412
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIntProvider(Ljava/lang/String;I)I

    move-result v2

    .line 1410
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderPartitions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1354
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientPartitions"

    .line 1353
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "partitions":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    const-string v2, "all"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1359
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1358
    :goto_0
    return-object v1
.end method

.method private getProviderRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 1474
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientBright_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderRegionColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 1460
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1459
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProviderThemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;

    .line 1444
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientThemeColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "themeColor":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "sea"

    :goto_0
    return-object v1
.end method

.method private getRawCarSpeed()F
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_vcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 1167
    .local v0, "vcu":Landroid/car/hardware/vcu/CarVcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1168
    :catch_0
    move-exception v1

    .line 1171
    const/4 v1, 0x0

    return v1
.end method

.method private getStringProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 1339
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1338
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method private handlePlayEffect(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V
    .locals 13
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .param p3, "owner"    # Ljava/lang/String;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    .line 1853
    new-instance v0, Landroid/util/Pair;

    iget-object v1, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v0

    .line 1854
    .local v9, "playEffect":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1855
    .local v0, "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    const/4 v1, 0x0

    .line 1857
    .local v1, "res":Z
    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1858
    invoke-direct/range {p0 .. p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->scheduledTasklet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)Z

    move-result v1

    .line 1875
    .end local v0    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .end local v1    # "res":Z
    .local v11, "res":Z
    .local v12, "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :cond_0
    move-object/from16 v10, p3

    :goto_0
    move-object v12, v0

    move v11, v1

    goto :goto_3

    .line 1859
    .end local v11    # "res":Z
    .end local v12    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .restart local v0    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .restart local v1    # "res":Z
    :cond_1
    iget v2, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->priority:I

    iget-object v3, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->access$2900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1860
    iget-object v2, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->iteratorTasks()Ljava/util/Iterator;

    move-result-object v2

    .line 1862
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1863
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 1865
    .local v3, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1866
    invoke-static {v3, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$7002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1867
    :cond_2
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasStop()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1868
    move-object v0, v3

    .line 1870
    .end local v3    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :cond_3
    :goto_2
    goto :goto_1

    .line 1872
    :cond_4
    iget-object v3, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    move-object/from16 v10, p3

    invoke-direct {v4, v6, v7, v8, v10}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->addEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    move-result v1

    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    goto :goto_0

    .line 1875
    .end local v0    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .end local v1    # "res":Z
    .restart local v11    # "res":Z
    .restart local v12    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :goto_3
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_5

    const-string v2, " succeed"

    goto :goto_4

    :cond_5
    const-string v2, " failed"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    if-eqz v11, :cond_7

    .line 1878
    if-eqz v12, :cond_6

    .line 1879
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .line 1880
    const/4 v1, 0x3

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v0

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1882
    :cond_6
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    iget v1, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->priority:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->access$2902(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;I)I

    .line 1883
    iput-object v9, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    .line 1884
    const/4 v1, 0x2

    iget-object v3, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 1886
    :cond_7
    const/16 v1, 0xd

    iget-object v3, v8, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v0, v6

    move-object v2, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1888
    :goto_5
    return-void
.end method

.method private handlePlayFlowingEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V
    .locals 9
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;
    .param p2, "owner"    # Ljava/lang/String;

    .line 1905
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopFlowingEffect(Ljava/lang/String;)V

    .line 1907
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playFlowingEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bright="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", isCoupled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x32

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1913
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayFlowingEffect:Ljava/lang/String;

    .line 1914
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    move-result-object v0

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    goto :goto_2

    .line 1915
    :catch_0
    move-exception v0

    .line 1916
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playFlowingEffect failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;->access$8500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    move-result-object v1

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1920
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private handleRequestAmbientLight(ZLjava/lang/String;)V
    .locals 7
    .param p1, "apply"    # Z
    .param p2, "owner"    # Ljava/lang/String;

    .line 2224
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-eq p1, v0, :cond_2

    .line 2225
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopFlowingEffect(Ljava/lang/String;)V

    .line 2228
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopModeEffect(Ljava/lang/String;)V

    .line 2230
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-nez v0, :cond_0

    .line 2231
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlOpen(Z)V

    .line 2232
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlFlowOpen(Z)V

    goto :goto_0

    .line 2233
    :cond_0
    if-nez p1, :cond_1

    .line 2234
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->runModeEffect(Ljava/lang/String;)V

    .line 2236
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    .line 2238
    :cond_2
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2239
    return-void
.end method

.method private handleSetAmbientLightBright(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "bright"    # I
    .param p3, "owner"    # Ljava/lang/String;

    .line 2104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2106
    .local v0, "last":I
    if-eq p2, v0, :cond_0

    .line 2107
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setBrightnessLevel(I)V

    .line 2111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2112
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderBright(Ljava/lang/String;I)V

    .line 2115
    :cond_0
    const/4 v4, 0x6

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2116
    return-void
.end method

.method private handleSetAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "colorType"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 2119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2120
    .local v0, "last":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2122
    .local v1, "mode":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSupportColorType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2123
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetColorType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlColorType(Ljava/lang/String;)V

    .line 2127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2128
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    invoke-direct {p0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderColorType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_0
    const/4 v4, 0x7

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2132
    return-void
.end method

.method private handleSetAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2046
    .local p2, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDoubleColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2048
    .local v0, "last":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p2, v0}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2049
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetDoubleColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 2050
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 2051
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2049
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2055
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDoubleColorMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V

    .line 2057
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlDoubleColor(II)V

    .line 2059
    :cond_0
    const/16 v4, 0x9

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    move-object v5, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2060
    return-void
.end method

.method private handleSetAmbientLightEnable(ZZLjava/lang/String;)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "hasManual"    # Z
    .param p3, "owner"    # Ljava/lang/String;

    .line 2188
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    .line 2189
    if-eqz p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderEnable()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    .line 2191
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAmbientLight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "on"

    goto :goto_1

    :cond_1
    const-string v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    if-eqz p2, :cond_2

    const-string v2, "manual"

    goto :goto_2

    :cond_2
    const-string v2, "auto"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), hasEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasMcuOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasMcuOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopFlowingEffect(Ljava/lang/String;)V

    .line 2197
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->handleStopModeEffect(Ljava/lang/String;)V

    .line 2198
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-eqz v0, :cond_4

    .line 2199
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setSHCReq(Z)V

    .line 2201
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->resetAtlMultiCtrl()V

    .line 2202
    const-string v0, "all"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderBright(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setBrightnessLevel(I)V

    .line 2205
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2206
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2207
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    .line 2210
    :cond_5
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlOpen(Z)V

    .line 2211
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    if-eqz v0, :cond_7

    move v1, v2

    nop

    :cond_7
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlFlowOpen(Z)V

    .line 2213
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasIgOn:Z

    if-eqz v0, :cond_8

    .line 2214
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->runModeEffect(Ljava/lang/String;)V

    .line 2217
    :cond_8
    if-eqz p2, :cond_9

    .line 2218
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderEnable(Z)V

    .line 2219
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    move-object v1, p0

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2221
    :cond_9
    return-void
.end method

.method private handleSetAmbientLightMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1923
    const-string v0, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 1924
    .local v11, "hasAppend":Z
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1925
    .local v12, "prevMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightPartitionModes()Ljava/util/Map;

    move-result-object v13

    .line 1927
    .local v13, "lastStatusMap":Ljava/util/Map;
    const-string v0, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1928
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const/16 v1, 0xe

    const/4 v4, 0x4

    move-object v0, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1931
    return-void

    .line 1934
    :cond_1
    if-nez v11, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1935
    :cond_2
    const-string v0, "front"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "rear"

    goto :goto_1

    :cond_3
    const-string v0, "front"

    :goto_1
    move-object v14, v0

    .line 1936
    .local v14, "split":Ljava/lang/String;
    invoke-direct {v6, v7, v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1937
    .local v15, "srcColorType":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "destColorType":Ljava/lang/String;
    invoke-direct {v6, v8, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSupportColorType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    goto :goto_2

    :cond_4
    const-string v1, "mono"

    :goto_2
    move-object v5, v1

    .line 1941
    .end local v0    # "destColorType":Ljava/lang/String;
    .local v5, "destColorType":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-nez v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1942
    const/4 v0, 0x0

    .line 1943
    .local v0, "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    iget-object v2, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-object/from16 v4, p3

    invoke-direct {v1, v6, v7, v2, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    .line 1944
    .local v1, "append":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    iget-object v2, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->iteratorTasks()Ljava/util/Iterator;

    move-result-object v2

    .line 1946
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1947
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 1949
    .local v3, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1950
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1951
    move-object v0, v3

    goto :goto_4

    .line 1952
    :cond_5
    const-string v9, "all"

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1953
    invoke-static {v3, v14}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    invoke-static {v3, v14}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$9002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 1956
    :cond_6
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasStop()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1957
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$7002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    .line 1959
    .end local v3    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :cond_7
    :goto_4
    goto :goto_3

    .line 1961
    :cond_8
    iget-object v3, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->addEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    .line 1962
    if-eqz v0, :cond_a

    .line 1963
    iget-object v3, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .end local v0    # "drop":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .end local v1    # "append":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    goto :goto_5

    .line 1967
    :cond_9
    move-object/from16 v4, p3

    :cond_a
    :goto_5
    if-eqz v11, :cond_b

    .line 1968
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 1970
    .local v9, "name":Ljava/lang/String;
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    invoke-direct {v6, v14, v9}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const/4 v1, 0x4

    const/4 v10, 0x0

    move-object v0, v6

    move-object v2, v14

    move-object v3, v9

    move v4, v10

    move-object v10, v5

    move-object/from16 v5, p3

    .end local v5    # "destColorType":Ljava/lang/String;
    .local v10, "destColorType":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .end local v9    # "name":Ljava/lang/String;
    goto :goto_6

    .line 1976
    .end local v10    # "destColorType":Ljava/lang/String;
    .restart local v5    # "destColorType":Ljava/lang/String;
    :cond_b
    move-object v10, v5

    .end local v5    # "destColorType":Ljava/lang/String;
    .restart local v10    # "destColorType":Ljava/lang/String;
    :goto_6
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    invoke-direct/range {p0 .. p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderPartitions(Ljava/util/Set;)V

    .line 1980
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1981
    invoke-direct {v6, v7, v8, v10}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderColorType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypeMap:Ljava/util/Map;

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const/4 v1, 0x7

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, v7

    move-object v3, v10

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1986
    :cond_c
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    const-string v2, ""

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1986
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    .end local v10    # "destColorType":Ljava/lang/String;
    .end local v14    # "split":Ljava/lang/String;
    .end local v15    # "srcColorType":Ljava/lang/String;
    :cond_e
    const/4 v1, 0x4

    if-eqz v11, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    move-object v0, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1993
    return-void
.end method

.method private handleSetAmbientLightMonoColor(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "owner"    # Ljava/lang/String;

    .line 2032
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mMonoColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2034
    .local v0, "last":I
    if-eq p2, v0, :cond_0

    .line 2035
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetMonoColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2038
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mMonoColorMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderMonoColor(Ljava/lang/String;I)V

    .line 2040
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlMonoColor(I)V

    .line 2042
    :cond_0
    const/16 v4, 0x8

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2043
    return-void
.end method

.method private handleSetAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "bright"    # I
    .param p4, "owner"    # Ljava/lang/String;

    .line 2091
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionBrightMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2093
    .local v0, "last":I
    if-eq p3, v0, :cond_0

    .line 2094
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCustomBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2097
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionBrightMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderRegionBright(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2100
    :cond_0
    const/16 v4, 0xc

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2101
    return-void
.end method

.method private handleSetAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "owner"    # Ljava/lang/String;

    .line 2076
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2078
    .local v0, "last":I
    if-eq p3, v0, :cond_0

    .line 2079
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCustomColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2079
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2084
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionColorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderRegionColor(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2087
    :cond_0
    const/16 v4, 0xb

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2088
    return-void
.end method

.method private handleSetAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "themeColor"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 2063
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2065
    .local v0, "last":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2066
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetThemeColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasChange:Z

    .line 2069
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeColorMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderThemeColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :cond_0
    const/16 v3, 0xa

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2073
    return-void
.end method

.method private handleSetFlowingAmbientLightBright(ILjava/lang/String;)V
    .locals 9
    .param p1, "bright"    # I
    .param p2, "owner"    # Ljava/lang/String;

    .line 2135
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingBright()I

    move-result v0

    .line 2137
    .local v0, "last":I
    if-eq p1, v0, :cond_0

    .line 2138
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFlowingBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderFlowingBright(I)V

    .line 2142
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v3, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2143
    return-void
.end method

.method private handleSetFlowingAmbientLightColor(ILjava/lang/String;)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "owner"    # Ljava/lang/String;

    .line 2146
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingColor()I

    move-result v0

    .line 2148
    .local v0, "last":I
    if-eq p1, v0, :cond_0

    .line 2149
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFlowingColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderFlowingColor(I)V

    .line 2153
    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v3, p0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2154
    return-void
.end method

.method private handleStopEffect(Ljava/lang/String;)V
    .locals 9
    .param p1, "owner"    # Ljava/lang/String;

    .line 1830
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    if-eqz v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->iteratorTasks()Ljava/util/Iterator;

    move-result-object v0

    .line 1833
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 1837
    .local v1, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    .line 1839
    .local v2, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1840
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$7002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1841
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->hasStop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1842
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .line 1843
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->access$2902(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;I)I

    .line 1844
    const/4 v4, 0x3

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v3, p0

    move-object v6, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1846
    .end local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1848
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    .line 1850
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    :cond_3
    return-void
.end method

.method private handleStopFlowingEffect(Ljava/lang/String;)V
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;

    .line 1891
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isFlowingRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1892
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFlowingEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayFlowingEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1895
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1896
    invoke-direct {p0, v1, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->makeFlowingData(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlFlowData(Ljava/lang/String;)V

    goto :goto_0

    .line 1897
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1898
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setGroupLightData(IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 1900
    :cond_1
    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayFlowingEffect:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1902
    :cond_2
    return-void
.end method

.method private handleStopModeEffect(Ljava/lang/String;)V
    .locals 9
    .param p1, "owner"    # Ljava/lang/String;

    .line 2157
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mode effect ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopCaptureRatio()V

    .line 2161
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->stopCaptureHue(I)V

    .line 2162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2163
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toMaps(I)Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFadeTime:I

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->withFlowing()Z

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setGroupLightData(IILjava/util/Map;Ljava/util/Map;IZ)V

    .line 2165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 2166
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mPlayEffect:Landroid/util/Pair;

    .line 2172
    :cond_0
    return-void
.end method

.method private handleSubAmbientLightMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 1996
    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2003
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2004
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->iteratorTasks()Ljava/util/Iterator;

    move-result-object v0

    .line 2006
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2007
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    .line 2009
    .local v1, "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    goto :goto_0

    .line 2010
    .restart local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2011
    const-string v2, "all"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$9002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$8402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2012
    :cond_2
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;->access$6000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2013
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->stopEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    .line 2015
    .end local v1    # "task":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;
    :cond_3
    :goto_1
    goto :goto_0

    .line 2017
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;>;"
    :cond_4
    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2019
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightPartitionModes()Ljava/util/Map;

    move-result-object v0

    .line 2020
    .local v0, "lastStatusMap":Ljava/util/Map;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v2, "front"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "rear"

    goto :goto_2

    :cond_5
    const-string v2, "front"

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2021
    .local v1, "rest":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2022
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v2, "all"

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setProviderPartitions(Ljava/util/Set;)V

    .line 2026
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const/4 v3, 0x4

    const-string v4, "all"

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, v1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2029
    return-void

    .line 1997
    .end local v0    # "lastStatusMap":Ljava/util/Map;
    .end local v1    # "rest":Ljava/lang/String;
    :cond_6
    :goto_3
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    const/16 v3, 0xe

    const/4 v6, 0x5

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2000
    return-void
.end method

.method private hasRgbColor(I)Z
    .locals 2
    .param p1, "color"    # I

    .line 858
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasSupportColorType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "colorType"    # Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->colorTypes:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFlowingRunning()Z
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRunning()Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getDefaultMode$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1370
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2777
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2778
    return-void
.end method

.method private loadAmbientModes(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 1125
    const-string v0, "json"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1127
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1128
    .local v2, "file":Ljava/lang/String;
    const-class v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    .line 1130
    .local v3, "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1131
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    :cond_0
    goto :goto_0

    .line 1135
    :cond_1
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    return-void
.end method

.method private loadThemesColor(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 1139
    const-string v0, "json"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getAllFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1141
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1142
    .local v2, "file":Ljava/lang/String;
    const-class v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;

    .line 1144
    .local v3, "themeColor":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1145
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "themeColor":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$ThemeColor;
    :cond_0
    goto :goto_0

    .line 1149
    :cond_1
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themesColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method private makeFlowingData(III)Ljava/lang/String;
    .locals 6
    .param p1, "color"    # I
    .param p2, "bright"    # I
    .param p3, "fadeTime"    # I

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%02x"

    new-array v3, v2, [Ljava/lang/Object;

    div-int/lit8 v4, p3, 0x14

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%02x"

    new-array v2, v2, [Ljava/lang/Object;

    and-int/lit16 v3, p2, 0xff

    .line 1717
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->toColorStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1716
    return-object v0
.end method

.method private parseBrightMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 884
    .local p1, "brights":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 888
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 889
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 890
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 893
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .line 866
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 867
    :cond_0
    const v0, 0xffffff

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 866
    :goto_0
    return v0
.end method

.method private parseColor(I)Ljava/lang/String;
    .locals 4
    .param p1, "color"    # I

    .line 862
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRgbColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "#%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private parseColorMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 871
    .local p1, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    const-string v0, "all"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 875
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 876
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 877
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 880
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseSpeedBright(F)I
    .locals 3
    .param p1, "speed"    # F

    .line 1153
    const/high16 v0, 0x42a00000    # 80.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1154
    const/16 v0, 0x64

    return v0

    .line 1155
    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 1156
    sub-float v1, p1, v0

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 1157
    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 1158
    float-to-int v0, p1

    return v0

    .line 1160
    :cond_2
    const/16 v0, 0xa

    return v0
.end method

.method private registerObserver()V
    .locals 5

    .line 1106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "atl_speaker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSwitchOn:Z

    .line 1108
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerObserver, hasSwitchOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSwitchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "atl_speaker"

    .line 1111
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;

    new-instance v4, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/os/Handler;)V

    .line 1110
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1122
    return-void
.end method

.method private resetAtlMultiCtrl()V
    .locals 8

    .line 1550
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1552
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    const/4 v1, 0x2

    new-array v3, v1, [B

    fill-array-data v3, :array_0

    .line 1554
    .local v3, "data":[B
    const-string v1, "XpAmbientLightService"

    const-string v2, "resetAtlMultiCtrl"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/atl/CarAtlManager;->setTwoLightData(B[BZ[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    goto :goto_0

    .line 1558
    :catch_0
    move-exception v1

    .line 1559
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetAtlMultiCtrl failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1550
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v3    # "data":[B
    :cond_1
    :goto_1
    return-void

    nop

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private runModeEffect(Ljava/lang/String;)V
    .locals 6
    .param p1, "owner"    # Ljava/lang/String;

    .line 2175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2176
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2177
    .local v2, "partition":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    .line 2179
    .local v3, "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2180
    invoke-direct {p0, v2, v3, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->scheduledTasklet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)Z

    goto :goto_1

    .line 2182
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    new-instance v5, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-direct {v5, p0, v2, v3, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;->addEffect(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)Z

    .line 2184
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "partition":Ljava/lang/String;
    .end local v3    # "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    :goto_1
    goto :goto_0

    .line 2185
    :cond_1
    return-void
.end method

.method private runTasklet(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1814
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x32

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runTasklet failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private scheduledTasklet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)Z
    .locals 2
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .param p3, "owner"    # Ljava/lang/String;

    .line 1823
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$EffectTask;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    .line 1824
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->runTasklet(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Tasklet;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1826
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "ambientMessage"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 1793
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1794
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1795
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1797
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method private sendBiAmbient(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "sdata"    # Ljava/lang/String;
    .param p3, "sdata2"    # Ljava/lang/String;
    .param p4, "data"    # I
    .param p5, "owner"    # Ljava/lang/String;

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "hasDelay":Z
    const/4 v1, 0x0

    .local v1, "event":Ljava/lang/String;
    const/4 v2, 0x0

    .line 954
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 992
    :pswitch_1
    const-string v1, "customColor"

    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 994
    const/4 v0, 0x1

    .line 995
    goto/16 :goto_4

    .line 987
    :pswitch_2
    const-string v1, "themeColor"

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    const/4 v0, 0x1

    .line 990
    goto/16 :goto_4

    .line 981
    :pswitch_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 982
    .local v3, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "doubleColor"

    .line 983
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 984
    const/4 v0, 0x1

    .line 985
    goto/16 :goto_4

    .line 976
    .end local v3    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    const-string v1, "monoColor"

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 978
    const/4 v0, 0x1

    .line 979
    goto/16 :goto_4

    .line 972
    :pswitch_5
    const-string v1, "colorType"

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 974
    goto/16 :goto_4

    .line 997
    :pswitch_6
    const-string v1, "bright"

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 999
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 964
    :pswitch_7
    const-string v1, "subMode"

    .line 965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 966
    goto :goto_4

    .line 960
    :pswitch_8
    if-nez p4, :cond_0

    const-string v3, "setMode"

    goto :goto_0

    :cond_0
    const-string v3, "addMode"

    :goto_0
    move-object v1, v3

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    goto :goto_4

    .line 968
    :pswitch_9
    if-nez p2, :cond_1

    const-string v3, "flowingEffect"

    goto :goto_1

    :cond_1
    const-string v3, "effect"

    :goto_1
    move-object v1, v3

    .line 969
    if-nez p2, :cond_2

    move-object v3, p3

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v2, v3

    .line 970
    goto :goto_4

    .line 956
    :pswitch_a
    const-string v1, "power"

    .line 957
    if-ne p4, v3, :cond_3

    const-string v3, "on"

    goto :goto_3

    :cond_3
    const-string v3, "off"

    :goto_3
    move-object v2, v3

    .line 958
    nop

    .line 1003
    :goto_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 1004
    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;

    invoke-direct {v3, p0, v1, v2, p5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .local v3, "biAmbient":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1007
    .local v4, "message":Landroid/os/Message;
    const/16 v5, 0x64

    add-int v6, v5, p1

    iput v6, v4, Landroid/os/Message;->what:I

    .line 1008
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1010
    if-eqz v0, :cond_4

    .line 1011
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    add-int/2addr v5, p1

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 1014
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1017
    .end local v3    # "biAmbient":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;
    .end local v4    # "message":Landroid/os/Message;
    :cond_5
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setAtlColorType(Ljava/lang/String;)V
    .locals 5
    .param p1, "colorType"    # Ljava/lang/String;

    .line 1591
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1592
    :cond_0
    const-string v0, "mono"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1596
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    nop

    .line 1597
    :try_start_0
    const-string v1, "double"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1596
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/CarAtlManager;->setDoubleThemeColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    goto :goto_0

    .line 1599
    :catch_0
    move-exception v1

    .line 1600
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAtlColorType failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1591
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :cond_2
    :goto_1
    return-void
.end method

.method private setAtlDoubleColor(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .line 1616
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1620
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeFirstColor(I)V

    .line 1621
    invoke-virtual {v0, p2}, Landroid/car/hardware/atl/CarAtlManager;->setThemeSecondColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    goto :goto_0

    .line 1622
    :catch_0
    move-exception v1

    .line 1623
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThemeDoubleColor ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1616
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :cond_1
    :goto_1
    return-void
.end method

.method private setAtlFlowData(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 1690
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1691
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1693
    .local v1, "bytes":[B
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAtlFlowData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/CarAtlManager;->setSelfDefinedAtlVariableLengthData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    goto :goto_0

    .line 1697
    :catch_0
    move-exception v2

    .line 1698
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XpAmbientLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAtlFlowData failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setAtlFlowOpen(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1577
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->withFlowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1580
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAtlFlowOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setSelfDefinedAtlMainSwitch(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    goto :goto_0

    .line 1584
    :catch_0
    move-exception v1

    .line 1585
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAtlFlowOpen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setAtlLinData(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "lin"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 1703
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1705
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAtl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-static {p2, v3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :try_start_0
    const-class v1, Landroid/car/hardware/atl/CarAtlManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAtl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1709
    .local v1, "setterMethod":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    .end local v1    # "setterMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1710
    :catch_0
    move-exception v1

    .line 1711
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAtl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Data failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setAtlMonoColor(I)V
    .locals 5
    .param p1, "color"    # I

    .line 1605
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1609
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeFirstColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    goto :goto_0

    .line 1610
    :catch_0
    move-exception v1

    .line 1611
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setThemeFirstColor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1605
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :cond_1
    :goto_1
    return-void
.end method

.method private setAtlOpen(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1564
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1567
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAtlOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    goto :goto_0

    .line 1571
    :catch_0
    move-exception v1

    .line 1572
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAtlOpen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setBrightnessLevel(I)V
    .locals 5
    .param p1, "brightness"    # I

    .line 1628
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    .line 1632
    .local v0, "atl":Landroid/car/hardware/atl/CarAtlManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setBrightnessLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    goto :goto_0

    .line 1633
    :catch_0
    move-exception v1

    .line 1634
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightnessLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1628
    .end local v0    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized setGroupLightData(IILjava/util/Map;Ljava/util/Map;IZ)V
    .locals 34
    .param p1, "mask"    # I
    .param p2, "group"    # I
    .param p5, "fade"    # I
    .param p6, "withFlow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 1723
    .local p3, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p4, "brights":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    monitor-enter p0

    .line 1723
    :try_start_0
    const-string v0, "all"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1724
    .local v8, "color":I
    const-string v0, "all"

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "all"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    .line 1725
    .local v9, "bright":I
    add-int v0, v2, v3

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v11, v0

    .line 1726
    .local v11, "enable":Z
    if-nez v6, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move v14, v0

    .line 1727
    .local v14, "hold":Z
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v12, "xp_atl"

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    move-object v13, v0

    .line 1729
    .local v13, "atl":Landroid/car/hardware/atl/CarAtlManager;
    const-string v0, "XpAmbientLightService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setGroupLightData, mask="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", group="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", colors="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-direct {v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColorMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", brights="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseBrightMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", fade="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1731
    if-eqz p6, :cond_4

    const-string v7, ", withFlow"

    goto :goto_4

    :cond_4
    const-string v7, ""

    :goto_4
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1729
    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    :try_start_1
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasController:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_13

    .line 1736
    :try_start_2
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    :try_start_3
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->lightsMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->lightsMap:Ljava/util/Map;

    .line 1737
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 1739
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid group "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1787
    :catch_0
    move-exception v0

    move-object v2, v13

    move/from16 v20, v14

    goto/16 :goto_16

    .line 1742
    :cond_6
    :goto_5
    const/16 v0, 0x8

    :try_start_4
    new-array v0, v0, [B

    .line 1743
    .local v0, "bytes":[B
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v7, v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->lightsMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;

    .line 1744
    .local v7, "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v12, v12, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->lightsMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;

    .line 1745
    .local v10, "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isFlowingRunning()Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_7

    :try_start_5
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v12, v12, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v12, v12, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_7

    const/16 v21, 0x1

    goto :goto_6

    :cond_7
    const/16 v21, 0x0

    :goto_6
    move/from16 v12, v21

    .line 1746
    .local v12, "isLiteFlowingRunning":Z
    :try_start_6
    invoke-direct {v1, v11, v14, v6, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesFade(ZZI[B)I

    move-result v15

    .line 1748
    .local v15, "ret":I
    const-string v2, "all"

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_8

    :try_start_7
    const-string v2, "all"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesBright(I[B)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    or-int/2addr v2, v15

    .line 1749
    .end local v15    # "ret":I
    .local v2, "ret":I
    move/from16 v22, v14

    :try_start_8
    const-string v14, "all"

    .line 1749
    .end local v14    # "hold":Z
    .local v22, "hold":Z
    invoke-interface {v4, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v14, :cond_9

    :try_start_9
    const-string v14, "all"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v1, v14, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesColor(I[B)I

    move-result v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 1787
    .end local v0    # "bytes":[B
    .end local v2    # "ret":I
    .end local v7    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v12    # "isLiteFlowingRunning":Z
    :catch_1
    move-exception v0

    move-object v2, v13

    move/from16 v20, v22

    goto/16 :goto_16

    .line 1749
    .restart local v0    # "bytes":[B
    .restart local v2    # "ret":I
    .restart local v7    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v12    # "isLiteFlowingRunning":Z
    :cond_9
    const/4 v14, 0x0

    :goto_8
    or-int/2addr v2, v14

    .line 1751
    :try_start_a
    sget-object v14, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->linNames:[Ljava/lang/String;

    move/from16 v23, v2

    array-length v2, v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1751
    .end local v2    # "ret":I
    .local v23, "ret":I
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_11

    :try_start_b
    aget-object v15, v14, v3

    move-object/from16 v24, v15

    .line 1752
    .local v24, "name":Ljava/lang/String;
    move/from16 v25, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v26, v14

    move-object/from16 v14, v24

    invoke-virtual {v2, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1752
    .end local v24    # "name":Ljava/lang/String;
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1753
    .local v2, "targetAddress":Ljava/lang/String;
    move-object/from16 v27, v7

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1753
    .end local v7    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .local v27, "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    invoke-virtual {v7, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1755
    .local v7, "maskAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v15, :cond_10

    .line 1756
    move-object/from16 v28, v10

    const/16 v10, 0x10

    .line 1756
    .end local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .local v28, "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    move-object/from16 v29, v13

    :try_start_c
    invoke-static {v2, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v13

    .line 1756
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .local v29, "atl":Landroid/car/hardware/atl/CarAtlManager;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v30, v2

    invoke-static {v7, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 1756
    .end local v2    # "targetAddress":Ljava/lang/String;
    .local v30, "targetAddress":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v13

    .line 1757
    .local v2, "address":I
    iget-object v13, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    .line 1759
    .local v13, "region":Ljava/lang/String;
    :goto_a
    if-eqz v12, :cond_b

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->linsMap:Ljava/util/Map;

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1760
    iget-object v10, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-object v10, v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->linsMap:Ljava/util/Map;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v31, v7

    const/16 v7, 0x10

    invoke-static {v10, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .end local v7    # "maskAddress":Ljava/lang/String;
    .local v31, "maskAddress":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    not-int v7, v7

    and-int/2addr v2, v7

    goto :goto_b

    .line 1763
    .end local v31    # "maskAddress":Ljava/lang/String;
    .restart local v7    # "maskAddress":Ljava/lang/String;
    :cond_b
    move-object/from16 v31, v7

    .line 1763
    .end local v7    # "maskAddress":Ljava/lang/String;
    .restart local v31    # "maskAddress":Ljava/lang/String;
    :goto_b
    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesAddr(I[B)I

    move-result v7

    or-int v7, v23, v7

    .line 1764
    .end local v23    # "ret":I
    .local v7, "ret":I
    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v1, v10, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesBright(I[B)I

    move-result v10

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    :goto_c
    or-int/2addr v7, v10

    .line 1765
    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v1, v10, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->writeBytesColor(I[B)I

    move-result v10

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    :goto_d
    or-int/2addr v7, v10

    .line 1767
    iget-object v10, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHashCodeMap:Ljava/util/Map;

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHashCodeMap:Ljava/util/Map;

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v32, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    .end local v2    # "address":I
    .local v32, "address":I
    if-eq v10, v2, :cond_f

    goto :goto_e

    .line 1768
    .end local v32    # "address":I
    .restart local v2    # "address":I
    :cond_e
    move/from16 v32, v2

    .line 1768
    .end local v2    # "address":I
    .restart local v32    # "address":I
    :goto_e
    invoke-direct {v1, v14}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->upper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlLinData(Ljava/lang/String;[B)V

    .line 1769
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHashCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    .end local v13    # "region":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v30    # "targetAddress":Ljava/lang/String;
    .end local v31    # "maskAddress":Ljava/lang/String;
    .end local v32    # "address":I
    :cond_f
    move/from16 v23, v7

    goto :goto_f

    .line 1751
    .end local v7    # "ret":I
    .end local v28    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .local v13, "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v23    # "ret":I
    :cond_10
    move-object/from16 v28, v10

    move-object/from16 v29, v13

    .line 1751
    .end local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v28    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :goto_f
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v25

    move-object/from16 v14, v26

    move-object/from16 v7, v27

    move-object/from16 v10, v28

    move-object/from16 v13, v29

    goto/16 :goto_9

    .line 1787
    .end local v0    # "bytes":[B
    .end local v12    # "isLiteFlowingRunning":Z
    .end local v23    # "ret":I
    .end local v27    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v28    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :catch_2
    move-exception v0

    move-object v2, v13

    move/from16 v20, v22

    move/from16 v3, p2

    goto :goto_11

    .line 1774
    .restart local v0    # "bytes":[B
    .local v7, "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v12    # "isLiteFlowingRunning":Z
    .restart local v23    # "ret":I
    :cond_11
    move-object/from16 v27, v7

    move-object/from16 v28, v10

    move-object/from16 v29, v13

    .line 1774
    .end local v7    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v10    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v27    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v28    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    if-eqz p6, :cond_12

    .line 1775
    invoke-direct {v1, v8, v9, v6}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->makeFlowingData(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->setAtlFlowData(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1775
    .end local v0    # "bytes":[B
    .end local v12    # "isLiteFlowingRunning":Z
    .end local v23    # "ret":I
    .end local v27    # "targetLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    .end local v28    # "maskLin":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Lin;
    goto :goto_10

    .line 1787
    :catch_3
    move-exception v0

    move/from16 v20, v22

    move-object/from16 v2, v29

    goto :goto_13

    .line 1777
    :cond_12
    :goto_10
    nop

    .line 1789
    move/from16 v20, v22

    move-object/from16 v2, v29

    goto :goto_12

    .line 1787
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :catch_4
    move-exception v0

    move-object v2, v13

    move/from16 v20, v22

    .line 1787
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v22    # "hold":Z
    .local v2, "atl":Landroid/car/hardware/atl/CarAtlManager;
    .local v20, "hold":Z
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :goto_11
    goto/16 :goto_16

    .line 1787
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v20    # "hold":Z
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .local v14, "hold":Z
    :catch_5
    move-exception v0

    move-object v2, v13

    move/from16 v20, v14

    .line 1787
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v14    # "hold":Z
    .restart local v22    # "hold":Z
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    goto/16 :goto_16

    .line 1777
    .end local v22    # "hold":Z
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v14    # "hold":Z
    :cond_13
    move-object/from16 v29, v13

    move/from16 v22, v14

    .line 1777
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v14    # "hold":Z
    .restart local v22    # "hold":Z
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :try_start_d
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_14

    .line 1778
    :try_start_e
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBuilder:Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-virtual {v0, v11}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1779
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBuilder:Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-virtual {v0, v8}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 1780
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mBuilder:Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-virtual {v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->build()Landroid/car/hardware/atl/AtlConfiguration;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v2, v29

    :try_start_f
    invoke-virtual {v2, v0}, Landroid/car/hardware/atl/CarAtlManager;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1789
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    move/from16 v20, v22

    .line 1789
    .end local v22    # "hold":Z
    .restart local v20    # "hold":Z
    :goto_12
    move/from16 v3, p2

    goto :goto_15

    .line 1787
    .end local v20    # "hold":Z
    .restart local v22    # "hold":Z
    :catch_6
    move-exception v0

    move/from16 v20, v22

    .line 1787
    .end local v22    # "hold":Z
    .restart local v20    # "hold":Z
    :goto_13
    move/from16 v3, p2

    goto :goto_16

    .line 1787
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v20    # "hold":Z
    .restart local v22    # "hold":Z
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :catch_7
    move-exception v0

    move/from16 v20, v22

    move-object/from16 v2, v29

    move/from16 v3, p2

    .line 1787
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    goto :goto_16

    .line 1782
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :cond_14
    move-object/from16 v2, v29

    .line 1782
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    move/from16 v3, p2

    int-to-byte v13, v3

    const/4 v15, 0x0

    .line 1783
    if-eqz v11, :cond_15

    move v7, v8

    goto :goto_14

    :cond_15
    const/16 v7, 0xff

    :goto_14
    int-to-byte v7, v7

    mul-int/lit8 v10, v9, 0x64

    const/4 v12, 0x5

    :try_start_10
    iget-object v14, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDutyCycleMap:Ljava/util/Map;

    const-string v0, "all"

    .line 1784
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v10, v0

    int-to-byte v0, v10

    div-int/lit8 v10, v6, 0x14
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/16 v12, 0xff

    and-int/2addr v10, v12

    int-to-byte v10, v10

    .line 1782
    move-object v12, v2

    move/from16 v20, v22

    const/4 v14, 0x0

    .line 1782
    .end local v22    # "hold":Z
    .restart local v20    # "hold":Z
    move/from16 v16, v20

    move/from16 v17, v7

    move/from16 v18, v0

    move/from16 v19, v10

    :try_start_11
    invoke-virtual/range {v12 .. v19}, Landroid/car/hardware/atl/CarAtlManager;->setGroutLightData(BBIZBBB)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1789
    :goto_15
    goto :goto_17

    .line 1787
    :catch_8
    move-exception v0

    goto :goto_16

    .line 1787
    .end local v20    # "hold":Z
    .restart local v22    # "hold":Z
    :catch_9
    move-exception v0

    move/from16 v20, v22

    .line 1787
    .end local v22    # "hold":Z
    .restart local v20    # "hold":Z
    goto :goto_16

    .line 1787
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v20    # "hold":Z
    .restart local v22    # "hold":Z
    .restart local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    :catch_a
    move-exception v0

    move/from16 v20, v22

    move-object/from16 v2, v29

    move/from16 v3, p2

    .line 1787
    .end local v22    # "hold":Z
    .end local v29    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v20    # "hold":Z
    goto :goto_16

    .line 1787
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v20    # "hold":Z
    .restart local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v14    # "hold":Z
    :catch_b
    move-exception v0

    move-object v2, v13

    move/from16 v20, v14

    .line 1788
    .end local v13    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v14    # "hold":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .restart local v20    # "hold":Z
    :goto_16
    :try_start_12
    const-string v7, "XpAmbientLightService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setGroupLightData failed, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1790
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    monitor-exit p0

    return-void

    .line 1722
    .end local v2    # "atl":Landroid/car/hardware/atl/CarAtlManager;
    .end local v8    # "color":I
    .end local v9    # "bright":I
    .end local v11    # "enable":Z
    .end local v20    # "hold":Z
    .end local p1    # "mask":I
    .end local p2    # "group":I
    .end local p3    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p4    # "brights":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p5    # "fade":I
    .end local p6    # "withFlow":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 1722
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw v0
.end method

.method private setProviderBright(Ljava/lang/String;I)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "bright"    # I

    .line 1481
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientBright_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1484
    return-void
.end method

.method private setProviderColorType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "colorType"    # Ljava/lang/String;

    .line 1386
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientColorType_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModeMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-boolean v2, v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->hasMemColorType:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1390
    return-void
.end method

.method private setProviderDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 5
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1417
    .local p2, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1420
    .local v0, "colors":J
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ambientDoubleColor_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1419
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1423
    return-void
.end method

.method private setProviderEnable(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 1523
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientEnable"

    .line 1524
    nop

    .line 1522
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1526
    return-void
.end method

.method private setProviderFlowingBright(I)V
    .locals 2
    .param p1, "bright"    # I

    .line 1495
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientFlowingBright"

    .line 1494
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1498
    return-void
.end method

.method private setProviderFlowingColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1509
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientFlowingColor"

    .line 1508
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1512
    return-void
.end method

.method private setProviderMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .line 1364
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientMode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1367
    return-void
.end method

.method private setProviderMonoColor(Ljava/lang/String;I)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 1404
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientMonoColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1407
    return-void
.end method

.method private setProviderPartitions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1347
    .local p1, "partitions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambientPartitions"

    const-string v2, ","

    .line 1348
    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1346
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1350
    return-void
.end method

.method private setProviderRegionBright(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "bright"    # I

    .line 1467
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientBright_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1470
    return-void
.end method

.method private setProviderRegionColor(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "color"    # I

    .line 1453
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1456
    return-void
.end method

.method private setProviderThemeColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "themeColor"    # Ljava/lang/String;

    .line 1437
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientThemeColor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1436
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1440
    return-void
.end method

.method private setSHCReq(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1536
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-eqz v0, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 1539
    .local v0, "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSHCReq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "up"

    goto :goto_0

    :cond_0
    const-string v3, "down"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setShcReq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    goto :goto_3

    .line 1543
    :catch_0
    move-exception v1

    .line 1544
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSHCReq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v4, "up"

    goto :goto_2

    :cond_2
    const-string v4, "down"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .end local v0    # "bcm":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method

.method private showAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "sdata"    # Ljava/lang/String;
    .param p3, "sdata2"    # Ljava/lang/String;
    .param p4, "data"    # I
    .param p5, "owner"    # Ljava/lang/String;

    .line 1020
    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1022
    .local v1, "isFlowing":Z
    :goto_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-nez v2, :cond_1

    if-ne p1, v0, :cond_2

    .line 1023
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendBiAmbient(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1026
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 1061
    :pswitch_0
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    if-ne p4, v3, :cond_3

    const-string v3, "onErrorSet: "

    goto :goto_1

    :cond_3
    const-string v3, "onErrorSub: "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    goto/16 :goto_7

    .line 1048
    :pswitch_1
    const/4 v0, 0x2

    if-eqz v1, :cond_5

    .line 1049
    const-string v2, "XpAmbientLightService"

    if-ne p4, v0, :cond_4

    const-string v0, "onErrorFlowingPlay: "

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorFlowingStop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1051
    :cond_5
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p4, v0, :cond_6

    const-string v0, "onErrorPlay: "

    goto :goto_3

    :cond_6
    const-string v0, "onErrorStop: "

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    goto/16 :goto_7

    .line 1092
    :pswitch_2
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeRegionBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1089
    :pswitch_3
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeRegionColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    goto/16 :goto_7

    .line 1086
    :pswitch_4
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeThemeColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    goto/16 :goto_7

    .line 1081
    :pswitch_5
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeDoubleColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    goto/16 :goto_7

    .line 1074
    :pswitch_6
    if-eqz v1, :cond_7

    .line 1075
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeFlowingColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1077
    :cond_7
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeMonoColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->parseColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    goto/16 :goto_7

    .line 1071
    :pswitch_7
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeColorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    goto/16 :goto_7

    .line 1064
    :pswitch_8
    if-eqz v1, :cond_8

    .line 1065
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeFlowingBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1067
    :cond_8
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeBright: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    goto/16 :goto_7

    .line 1058
    :pswitch_9
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    goto/16 :goto_7

    .line 1055
    :pswitch_a
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_9

    const-string v3, "onChangeMode: "

    goto :goto_4

    :cond_9
    const-string v3, "onAddMode: "

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    goto/16 :goto_7

    .line 1041
    :pswitch_b
    if-eqz v1, :cond_a

    .line 1042
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFlowingStopEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1044
    :cond_a
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    goto/16 :goto_7

    .line 1034
    :pswitch_c
    if-eqz v1, :cond_b

    .line 1035
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFlowingPlayEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1037
    :cond_b
    const-string v0, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    goto :goto_7

    .line 1031
    :pswitch_d
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangeSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p4, v0, :cond_c

    const-string v0, "open"

    goto :goto_5

    :cond_c
    const-string v0, "close"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    goto :goto_7

    .line 1028
    :pswitch_e
    const-string v2, "XpAmbientLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p4, v0, :cond_d

    const-string v0, "apply"

    goto :goto_6

    :cond_d
    const-string v0, "release"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    nop

    .line 1096
    :goto_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 1098
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;

    .line 1099
    .local v3, "listener":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;->onAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1100
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;
    goto :goto_8

    .line 1101
    :cond_e
    monitor-exit v0

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1103
    :cond_f
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private startCaptureHue(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCatchHue:Z

    if-nez v0, :cond_0

    .line 1295
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCaptureHue, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHueDataListener:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->registerHueDataListener(ILcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;)V

    .line 1298
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mDisplayId:I

    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCatchHue:Z

    .line 1301
    :cond_0
    return-void
.end method

.method private startCaptureRatio()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasVisualizer:Z

    if-nez v0, :cond_0

    .line 1314
    const-string v0, "XpAmbientLightService"

    const-string v1, "startCaptureRatio"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->registerFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasVisualizer:Z

    .line 1318
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRhythmBrightChange:Z

    .line 1320
    :cond_0
    return-void
.end method

.method private stopCaptureHue(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1304
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCatchHue:Z

    if-eqz v0, :cond_0

    .line 1305
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCaptureHue, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mCatchHueUtils:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mHueDataListener:Lcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/utils/CatchHueUtils;->unregisterHueDataListener(ILcom/xiaopeng/xuiservice/utils/CatchHueUtils$HueDataListener;)V

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasCatchHue:Z

    .line 1310
    :cond_0
    return-void
.end method

.method private stopCaptureRatio()V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasVisualizer:Z

    if-eqz v0, :cond_0

    .line 1324
    const-string v0, "XpAmbientLightService"

    const-string v1, "stopCaptureRatio"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mVisualizerService:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mSDFftDataListener:Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/VisualizerService;->unregisterFftDataListener(Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SDFftDataListener;)V

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasVisualizer:Z

    .line 1329
    :cond_0
    return-void
.end method

.method private toColorStr(I)Ljava/lang/String;
    .locals 4
    .param p1, "color"    # I

    .line 943
    const-string v0, "%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRgbColor(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0xffffff

    and-int/2addr v2, p1

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    shl-int/lit8 v2, v2, 0x10

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toMaps(I)Ljava/util/Map;
    .locals 1
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 937
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V

    return-object v0
.end method

.method private upper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private withFlowing()Z
    .locals 1

    .line 1809
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mController:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Controller;->flowing:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;

    iget-boolean v0, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Flowing;->isLite:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->isFlowingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private writeByteFlowing(ZII[B)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "mode"    # I
    .param p3, "rate"    # I
    .param p4, "bytes"    # [B

    .line 1639
    array-length v0, p4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1640
    const/4 v0, 0x2

    aget-byte v2, p4, v0

    shl-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p2, 0x7

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    and-int/lit8 v4, p3, 0x1

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 1643
    :cond_0
    array-length v0, p4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private writeBytesAddr(I[B)I
    .locals 4
    .param p1, "addr"    # I
    .param p2, "bytes"    # [B

    .line 1656
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 1657
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 1658
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 1661
    :cond_0
    array-length v0, p2

    if-lt v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private writeBytesBright(I[B)I
    .locals 3
    .param p1, "bright"    # I
    .param p2, "bytes"    # [B

    .line 1665
    array-length v0, p2

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1666
    const/4 v0, 0x4

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 1669
    :cond_0
    array-length v0, p2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private writeBytesColor(I[B)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "bytes"    # [B

    .line 1673
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-lt v0, v3, :cond_3

    .line 1674
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasRgbColor(I)Z

    move-result v0

    .line 1676
    .local v0, "rgb":Z
    const/4 v4, 0x2

    if-eqz v0, :cond_0

    aget-byte v5, p2, v4

    or-int/2addr v5, v2

    :goto_0
    int-to-byte v5, v5

    goto :goto_1

    :cond_0
    aget-byte v5, p2, v4

    and-int/lit8 v5, v5, -0x2

    goto :goto_0

    :goto_1
    aput-byte v5, p2, v4

    .line 1677
    const/4 v4, 0x5

    if-eqz v0, :cond_1

    .line 1678
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1679
    const/4 v4, 0x6

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1680
    const/4 v4, 0x7

    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    goto :goto_3

    .line 1682
    :cond_1
    if-lez p1, :cond_2

    add-int/lit8 v5, p1, -0x1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 1686
    .end local v0    # "rgb":Z
    :cond_3
    :goto_3
    array-length v0, p2

    if-lt v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method

.method private writeBytesFade(ZZI[B)I
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "hold"    # Z
    .param p3, "fade"    # I
    .param p4, "bytes"    # [B

    .line 1647
    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1648
    shl-int/lit8 v0, p1, 0x1

    xor-int/lit8 v2, p2, 0x1

    const/4 v3, 0x2

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v3

    .line 1649
    const/4 v0, 0x3

    div-int/lit8 v2, p3, 0x14

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 1652
    :cond_0
    array-length v0, p4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized clearAmbientLightEffect()V
    .locals 1

    monitor-enter p0

    .line 2282
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    monitor-exit p0

    return-void

    .line 2281
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw v0
.end method

.method public getAmbientLightBright(Ljava/lang/String;)I
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 2403
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderBright(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 2439
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 2440
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderColorType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2439
    :goto_0
    return-object v0
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2463
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2464
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 2463
    :cond_1
    :goto_0
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public getAmbientLightEnable()Z
    .locals 1

    .line 2303
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderEnable()Z

    move-result v0

    return v0
.end method

.method public getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 2388
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 2451
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderMonoColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAmbientLightPartitionModes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2392
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getAmbientLightPermission()Z
    .locals 1

    .line 2293
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    return v0
.end method

.method public getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 2506
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2506
    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 2494
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2495
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderRegionColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2494
    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "partition"    # Ljava/lang/String;

    .line 2479
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFlowingAmbientLightBright()I
    .locals 1

    .line 2413
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingBright()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFlowingAmbientLightColor()I
    .locals 1

    .line 2423
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getProviderFlowingColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public declared-synchronized loadAmbientLightEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 2262
    :try_start_0
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    .line 2264
    .local v0, "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2265
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAmbientLightEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2269
    :cond_0
    monitor-exit p0

    return-void

    .line 2261
    .end local v0    # "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized loadFlowingAmbientLightEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 2272
    :try_start_0
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    invoke-static {p1, v0}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->loadFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    .line 2274
    .local v0, "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    if-eqz v0, :cond_0

    .line 2275
    const-string v1, "XpAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFlowingAmbientLightEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    :cond_0
    monitor-exit p0

    return-void

    .line 2271
    .end local v0    # "effect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "hasJson"    # Z

    monitor-enter p0

    .line 2319
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2320
    .local v0, "owner":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2322
    .local v1, "ambient":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    if-eqz p3, :cond_0

    .line 2323
    const-class v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    invoke-static {p2, v2}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->readFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-object v1, v2

    goto :goto_0

    .line 2324
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2325
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    move-object v1, v2

    .line 2329
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v2, :cond_3

    .line 2328
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->priority:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;->name:Ljava/lang/String;

    .line 2329
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkEffectPartition(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 2330
    :cond_2
    const/4 v2, 0x2

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v3, p1, v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2329
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 2328
    :goto_2
    monitor-exit p0

    return v2

    .line 2318
    .end local v0    # "owner":Ljava/lang/String;
    .end local v1    # "ambient":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "effect":Ljava/lang/String;
    .end local p3    # "hasJson":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I
    .locals 11
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "color"    # I
    .param p4, "bright"    # I

    monitor-enter p0

    .line 2340
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2341
    .local v0, "owner":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2343
    .local v1, "flowingEffect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    :goto_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 2344
    :cond_1
    const/4 v8, 0x2

    new-instance v9, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    new-instance v10, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;III)V

    invoke-direct {v9, v10, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V

    invoke-direct {p0, v8, v9}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2343
    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    monitor-exit p0

    return v2

    .line 2339
    .end local v0    # "owner":Ljava/lang/String;
    .end local v1    # "flowingEffect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .end local p1    # "effect":Ljava/lang/String;
    .end local p2    # "count":I
    .end local p3    # "color":I
    .end local p4    # "bright":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "isCoupled"    # Z

    monitor-enter p0

    .line 2350
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2351
    .local v0, "owner":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2353
    .local v1, "flowingEffect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    :goto_0
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasEnable:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasApply:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 2354
    :cond_1
    const/4 v2, 0x2

    new-instance v3, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    new-instance v4, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    invoke-direct {v4, p0, v1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;IZ)V

    invoke-direct {v3, v4, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2353
    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    monitor-exit p0

    return v2

    .line 2349
    .end local v0    # "owner":Ljava/lang/String;
    .end local v1    # "flowingEffect":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
    .end local p1    # "effect":Ljava/lang/String;
    .end local p2    # "count":I
    .end local p3    # "isCoupled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized requestAmbientLightPermission(Z)I
    .locals 3
    .param p1, "apply"    # Z

    monitor-enter p0

    .line 2287
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2289
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2286
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "apply":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightBright(Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "bright"    # I

    monitor-enter p0

    .line 2396
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2398
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkBright(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2399
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2398
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2395
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "bright":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "colorType"    # Ljava/lang/String;

    monitor-enter p0

    .line 2431
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2433
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkColorType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2434
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasSupportColorType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2435
    :cond_0
    const/4 v1, 0x7

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2434
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 2433
    :goto_1
    monitor-exit p0

    return v1

    .line 2430
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "colorType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .local p2, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 2455
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2458
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v1, :cond_1

    .line 2457
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2458
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkColor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkColor(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2459
    :cond_0
    const/16 v1, 0x9

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2458
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 2457
    :goto_1
    monitor-exit p0

    return v1

    .line 2454
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightEnable(Z)I
    .locals 3
    .param p1, "status"    # Z

    monitor-enter p0

    .line 2297
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2299
    .local v0, "owner":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZZLjava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 2296
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "status":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public setAmbientLightListener(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;

    .line 2242
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    if-eqz p1, :cond_1

    .line 2245
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 2246
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2249
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    monitor-enter p0

    .line 2374
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2376
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2377
    :cond_0
    const/4 v1, 0x4

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2376
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2373
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "mode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightMonoColor(Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "color"    # I

    monitor-enter p0

    .line 2444
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2446
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkColor(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2447
    :cond_0
    const/16 v1, 0x8

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2446
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2443
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "color":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "bright"    # I

    monitor-enter p0

    .line 2499
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2502
    :cond_0
    const/16 v1, 0xc

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2501
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2498
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "region":Ljava/lang/String;
    .end local p3    # "bright":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "color"    # I

    monitor-enter p0

    .line 2487
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2489
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkRegion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2490
    :cond_0
    const/16 v1, 0xb

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2489
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2486
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "region":Ljava/lang/String;
    .end local p3    # "color":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "themeColor"    # Ljava/lang/String;

    monitor-enter p0

    .line 2472
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2474
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkThemeColor(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    const/16 v1, 0xa

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2474
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2471
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "themeColor":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setFlowingAmbientLightBright(I)I
    .locals 4
    .param p1, "bright"    # I

    monitor-enter p0

    .line 2407
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2409
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    .line 2406
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "bright":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public declared-synchronized setFlowingAmbientLightColor(I)I
    .locals 4
    .param p1, "color"    # I

    monitor-enter p0

    .line 2417
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2419
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    .line 2416
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "color":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public showAmbientLightColorTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mColorTypes:Ljava/util/Set;

    return-object v0
.end method

.method public showAmbientLightEffectPartitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectPartitions:Ljava/util/Set;

    return-object v0
.end method

.method public showAmbientLightEffects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public showAmbientLightModePartitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModePartitions:Ljava/util/Set;

    return-object v0
.end method

.method public showAmbientLightModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mModes:Ljava/util/Set;

    return-object v0
.end method

.method public showAmbientLightRegions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2483
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mRegionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public showAmbientLightThemesColor()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2468
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mThemeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public showFlowingAmbientLightEffects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mFlowingEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized stopAmbientLightEffect()I
    .locals 4

    monitor-enter p0

    .line 2334
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2336
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasLite:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2333
    .end local v0    # "owner":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw v0
.end method

.method public declared-synchronized stopFlowingAmbientLightEffect()I
    .locals 4

    monitor-enter p0

    .line 2360
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2362
    .local v0, "owner":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->hasFlowing:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->getIgStatusOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2359
    .end local v0    # "owner":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw v0
.end method

.method public declared-synchronized subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    monitor-enter p0

    .line 2381
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, "owner":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkModePartition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->checkMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2384
    :cond_0
    const/4 v1, 0x5

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    invoke-direct {v2, p1, p2, v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->sendAmbientMessage(ILcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2383
    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 2380
    .end local v0    # "owner":Ljava/lang/String;
    .end local p1    # "partition":Ljava/lang/String;
    .end local p2    # "mode":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    throw p1
.end method

.method public unsetAmbientLightListener(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientLightListener;

    .line 2252
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetAmbientLightListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "invalid"

    goto :goto_0

    :cond_0
    const-string v2, "ok"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    if-eqz p1, :cond_1

    .line 2255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    monitor-enter v0

    .line 2256
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2257
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2259
    :cond_1
    :goto_1
    return-void
.end method
