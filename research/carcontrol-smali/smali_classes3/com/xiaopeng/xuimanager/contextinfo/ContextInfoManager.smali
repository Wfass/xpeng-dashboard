.class public Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
.super Ljava/lang/Object;
.source "ContextInfoManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;,
        Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$SINGLETON;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final MSG_CONTEXTINFO_ACCELERATION_EVENT:I = 0x1

.field private static final MSG_CONTEXTINFO_ANGULARVELOCITY_EVENT:I = 0x2

.field private static final MSG_CONTEXTINFO_ASSIST_SYS:I = 0x23

.field private static final MSG_CONTEXTINFO_ATLS_STATUS:I = 0x17

.field private static final MSG_CONTEXTINFO_AUTO_BRIGHTNESS:I = 0x12

.field private static final MSG_CONTEXTINFO_AVP_WIFI:I = 0x14

.field private static final MSG_CONTEXTINFO_BELT_STATUS:I = 0x18

.field private static final MSG_CONTEXTINFO_CAMERAINTERVAL_EVENT:I = 0x8

.field private static final MSG_CONTEXTINFO_CAMERA_EVENT:I = 0x7

.field private static final MSG_CONTEXTINFO_CAR_GEAR:I = 0x21

.field private static final MSG_CONTEXTINFO_CAR_SPPED:I = 0x10

.field private static final MSG_CONTEXTINFO_CHARGING_GUN:I = 0x1a

.field private static final MSG_CONTEXTINFO_COMMON_EVENT:I = 0x24

.field private static final MSG_CONTEXTINFO_CROSS_EVENT:I = 0xa

.field private static final MSG_CONTEXTINFO_DEVICE_CHARGE:I = 0x1b

.field private static final MSG_CONTEXTINFO_DOOR_OPEN:I = 0x22

.field private static final MSG_CONTEXTINFO_DRIVER_SEAT:I = 0x1c

.field private static final MSG_CONTEXTINFO_ERROR_EVENT:I = 0x0

.field private static final MSG_CONTEXTINFO_HOME_COMPANY_ROUTE_INFO:I = 0x26

.field private static final MSG_CONTEXTINFO_IG_EVENT:I = 0x11

.field private static final MSG_CONTEXTINFO_LANE_EVENT:I = 0x6

.field private static final MSG_CONTEXTINFO_LIGHT_MODE:I = 0x1d

.field private static final MSG_CONTEXTINFO_LLU_STATUS:I = 0x16

.field private static final MSG_CONTEXTINFO_LOCATION_EVENT:I = 0xb

.field private static final MSG_CONTEXTINFO_MANEUVER_EVENT:I = 0x3

.field private static final MSG_CONTEXTINFO_MSG_EVENT:I = 0xe

.field private static final MSG_CONTEXTINFO_NAVIGATION_ENABLE_EVENT:I = 0xd

.field private static final MSG_CONTEXTINFO_NAVIGATION_INFO:I = 0xc

.field private static final MSG_CONTEXTINFO_NAVI_EVENT:I = 0x5

.field private static final MSG_CONTEXTINFO_NAVI_STATUS:I = 0x25

.field private static final MSG_CONTEXTINFO_POI_INFO:I = 0x27

.field private static final MSG_CONTEXTINFO_POWEROFF_CNT:I = 0x20

.field private static final MSG_CONTEXTINFO_POWER_ACTION:I = 0x19

.field private static final MSG_CONTEXTINFO_PSD_MOTO:I = 0x1f

.field private static final MSG_CONTEXTINFO_REMAININFO_EVENT:I = 0x4

.field private static final MSG_CONTEXTINFO_REMOTE_CMD:I = 0x15

.field private static final MSG_CONTEXTINFO_SAPA_EVENT:I = 0x9

.field private static final MSG_CONTEXTINFO_VPM_EVENT:I = 0x1e

.field private static final MSG_CONTEXTINFO_WARNING:I = 0x13

.field private static final MSG_CONTEXTINFO_WEATHER_INFO:I = 0xf

.field public static final TAG:Ljava/lang/String; = "ContextInfoManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private final mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoBrightnessListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarStatusListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommonEventListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

.field private final mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

.field private final mWeatherListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private serverDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    .line 89
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    .line 90
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->serverDisconnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 84
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 87
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    .line 88
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    .line 89
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    .line 90
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->serverDisconnected:Z

    .line 123
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    .line 124
    new-instance p1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCameraIntervalEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchSapaEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCrossEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchLocationEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchNavigationInfoToClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchPoiInfoToClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchNavigationEnableToClient(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchMsgToClient(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchWeatherInfoToClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchGearStatusToClient(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCarSpeedToClient(F)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchIGStatusToClient(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchAutoBrightnessToClient(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchXPilotWarningToClient(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchAvpWifiToClient(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchRemoteCommandToClient(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchLLUStatusToClient(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchATLSStatusToClient(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchBeltStatusToClient(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchPowerActionToClient(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchAccelerationEventToClient(F)V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchChargingGunStatusToClient(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchDeviceChargeStatusToClient(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchDriverSeatStatusToClient(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchBcmLightModeToClient(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchVpmEventToClient(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchPsdMotoToClient(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchPowerOffCountToClient(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCommonEventToClient(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchNaviStatusToClient(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchHomeCompanyRouteInfoToClient(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchAngularVelocityEventToClient(F)V

    return-void
.end method

.method static synthetic access$4000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleCommonEvent(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleAccelerationEvent(F)V

    return-void
.end method

.method static synthetic access$4200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchManeuverEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchRemainEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchNaviEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchLaneEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCameraEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    return-void
.end method

.method private checkAllListenerEmpty()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 129
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    .line 130
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    .line 131
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    .line 132
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    .line 133
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dispatchATLSStatusToClient(II)V
    .locals 0

    return-void
.end method

.method private dispatchAccelerationEventToClient(F)V
    .locals 2

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 452
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;

    .line 455
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;->onAccelerationEvent(F)V

    goto :goto_0

    .line 462
    :cond_0
    monitor-enter p0

    .line 463
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 464
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 467
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onAccelerationEvent(F)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 464
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 452
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchAngularVelocityEventToClient(F)V
    .locals 2

    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 479
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;

    .line 481
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;->onAngularVelocityEvent(F)V

    goto :goto_0

    .line 488
    :cond_0
    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 490
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 493
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onAngularVelocityEvent(F)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 490
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 478
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchAutoBrightnessToClient(II)V
    .locals 2

    .line 933
    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    .line 935
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;

    .line 938
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;->onAutoBrightness(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 935
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchAvpWifiToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchBcmLightModeToClient(II)V
    .locals 0

    return-void
.end method

.method private dispatchBeltStatusToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchCameraEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 2

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 644
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 645
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 647
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    goto :goto_0

    .line 654
    :cond_0
    monitor-enter p0

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 656
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 659
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 656
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 644
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchCameraIntervalEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 2

    .line 668
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 670
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 671
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 673
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    goto :goto_0

    .line 680
    :cond_0
    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 682
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 685
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 682
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 670
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchCarSpeedToClient(F)V
    .locals 0

    return-void
.end method

.method private dispatchCarinfoErrorEvent(II)V
    .locals 2

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;

    .line 409
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchChargingGunStatusToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchCommonEventToClient(II)V
    .locals 5

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    .line 357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;

    .line 361
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;->onCommonEvent(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "test"

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchCommonEventToClient  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 357
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private dispatchCrossEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 2

    .line 720
    monitor-enter p0

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 722
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 723
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 725
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    goto :goto_0

    .line 732
    :cond_0
    monitor-enter p0

    .line 733
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 734
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 737
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 734
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 722
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchDeviceChargeStatusToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchDriverSeatStatusToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchErrorEventToAll(II)V
    .locals 2

    .line 419
    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 421
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 424
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 421
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchCarinfoErrorEvent(II)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchNaviErrorEvent(II)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchWeatherErrorEvent(II)V

    .line 445
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->dispatchErrorEventToAll(II)V

    return-void
.end method

.method private dispatchGearStatusToClient(I)V
    .locals 2

    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    .line 903
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;

    .line 906
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;->onGearChanged(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 903
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchHomeCompanyRouteInfoToClient(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 599
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 607
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dispatchIGStatusToClient(I)V
    .locals 2

    .line 919
    monitor-enter p0

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    .line 921
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;

    .line 924
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;->onIGStatus(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 921
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchLLUStatusToClient(II)V
    .locals 0

    return-void
.end method

.method private dispatchLaneEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 2

    .line 616
    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 618
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 619
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 621
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    goto :goto_0

    .line 628
    :cond_0
    monitor-enter p0

    .line 629
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 630
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 633
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 630
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 618
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchLocationEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 2

    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 748
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 749
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 751
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    goto :goto_0

    .line 758
    :cond_0
    monitor-enter p0

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 760
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 762
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 763
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 760
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 748
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchManeuverEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 2

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 505
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 507
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    goto :goto_0

    .line 514
    :cond_0
    monitor-enter p0

    .line 515
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 516
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 519
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 516
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 504
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchMsgToClient(I)V
    .locals 2

    .line 848
    monitor-enter p0

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 850
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 851
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 853
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onMsgEvent(I)V

    goto :goto_0

    .line 860
    :cond_0
    monitor-enter p0

    .line 861
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 862
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 864
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 865
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onMsgEvent(I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 862
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 850
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchNaviErrorEvent(II)V
    .locals 2

    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 394
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 391
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchNaviEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 2

    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 556
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 557
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 559
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    goto :goto_0

    .line 566
    :cond_0
    monitor-enter p0

    .line 567
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 568
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 571
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 568
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 556
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchNaviStatusToClient(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 581
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 589
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dispatchNavigationEnableToClient(Z)V
    .locals 2

    .line 822
    monitor-enter p0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 824
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 825
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 827
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onNavigationEnable(Z)V

    goto :goto_0

    .line 834
    :cond_0
    monitor-enter p0

    .line 835
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 836
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 838
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 839
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onNavigationEnable(Z)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 836
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 824
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchNavigationInfoToClient(Ljava/lang/String;)V
    .locals 2

    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 798
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 801
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onNavigationInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_0
    monitor-enter p0

    .line 809
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 810
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 813
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onNavigationInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 810
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 798
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchPoiInfoToClient(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ContextInfoManager"

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPoiInfoToClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    monitor-enter p0

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 776
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 777
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 779
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onPoiInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_0
    monitor-enter p0

    .line 785
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 786
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 788
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 789
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onPoiInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 786
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 776
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchPowerActionToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchPowerOffCountToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchPsdMotoToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchRemainEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 2

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 530
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 531
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 533
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    goto :goto_0

    .line 540
    :cond_0
    monitor-enter p0

    .line 541
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 542
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 545
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 542
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 530
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchRemoteCommandToClient(I)V
    .locals 0

    return-void
.end method

.method private dispatchSapaEventToClient(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 2

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 696
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 697
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 699
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    goto :goto_0

    .line 706
    :cond_0
    monitor-enter p0

    .line 707
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 708
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 711
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 708
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 696
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchVpmEventToClient(II)V
    .locals 0

    return-void
.end method

.method private dispatchWeatherErrorEvent(II)V
    .locals 2

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    .line 376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    .line 379
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 376
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchWeatherInfoToClient(Ljava/lang/String;)V
    .locals 2

    .line 875
    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    .line 877
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 878
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    .line 880
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;->onWeatherInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_0
    monitor-enter p0

    .line 888
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 889
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;

    .line 892
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;->onWeatherInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 889
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 877
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private dispatchXPilotWarningToClient(II)V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
    .locals 1

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$SINGLETON;->access$100()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    move-result-object v0

    return-object v0
.end method

.method private handleAccelerationEvent(F)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleCommonEvent(II)V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x24

    .line 1012
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1014
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1015
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1208
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1210
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1211
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private initRegisterListener()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->checkAllListenerEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    new-instance v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    .line 145
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->registerListeners(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private initUnregisterListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->checkAllListenerEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getIntelligentEffectEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "getIntelligentEffectEnable"

    .line 1560
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->getIntelligentEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getIntelligentEffectEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 1488
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mServiceName:Ljava/lang/String;

    .line 1491
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "getWeather"

    .line 1628
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->getWeather()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not getWeather: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public handleATLSStatus(II)V
    .locals 2

    .line 1317
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    .line 1318
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1319
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1320
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1321
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleAngularVelocityEvent(F)V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleAutoBrightness(II)V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12

    .line 1258
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1259
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1260
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1261
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleAvpWifi(I)V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleBeltStatus(I)V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 1107
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1109
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1110
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 1121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1122
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1123
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1124
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleCarSpeed(F)V
    .locals 2

    .line 1238
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleChargingGunStatus(I)V
    .locals 2

    .line 1348
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 1149
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1150
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1151
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1152
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleDeviceChargeStatus(I)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleDriverSeatStatus(I)V
    .locals 2

    .line 1366
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleGearStatus(I)V
    .locals 2

    .line 1229
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected handleHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1081
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleIGStatus(I)V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleLLUStatus(II)V
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x16

    .line 1304
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1305
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1306
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1307
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 1092
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1093
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1094
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1095
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleLightmode(II)V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1d

    .line 1377
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1378
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1379
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1380
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 1163
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1164
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1165
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1166
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 1040
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1041
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1042
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1043
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMsgEvent(I)V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 1068
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1069
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1070
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1071
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected handleNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleNavigationEnableEvent(Z)V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleNavigationInfo(Ljava/lang/String;)V
    .locals 2

    .line 1175
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handlePoiInfo(Ljava/lang/String;)V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handlePowerAction(I)V
    .locals 2

    .line 1339
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handlePowerOffCount(I)V
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handlePsdMoto(I)V
    .locals 2

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 1054
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1055
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1056
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1057
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleRemoteCommand(I)V
    .locals 2

    .line 1293
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 1135
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1136
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1137
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1138
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleVpmEvent(II)V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    .line 1391
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1392
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1393
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1394
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleWeatherInfo(Ljava/lang/String;)V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleXPilotWarnings(II)V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    .line 1272
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1273
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1274
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1275
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 111
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    .line 112
    new-instance p1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    const-string v0, "ContextInfoManager"

    const-string v1, "onServerDisconnected!"

    .line 1417
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1418
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->serverDisconnected:Z

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "ContextInfoManager"

    const-string v1, "onXUIConnected!"

    .line 1454
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 1456
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1459
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1463
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->serverDisconnected:Z

    .line 1464
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    .line 1465
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mListenerToService:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 1468
    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->registerListeners(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;

    .line 1428
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;

    .line 1435
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;)V
    :try_end_1
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;

    .line 1442
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;)V
    :try_end_2
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initRegisterListener()V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendContextEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendContextEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->sendContextEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not sendContextEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setCarAngular(FI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "setCarAngular"

    .line 1522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setCarAngular(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1527
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setCarAngular: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setCarAngularVelocity(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "setCarAngularVelocity"

    .line 1541
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setCarAngularVelocity(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setCarAngularVelocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setCarSpeed(FI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "setCarSpeed"

    .line 1503
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setCarSpeed(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1508
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setCarSpeed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setIntelligentEffectEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    const-string v1, "setIntelligentEffectEnable"

    .line 1579
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setIntelligentEffectEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setIntelligentEffectEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setNavigationEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "ContextInfoManager"

    .line 1614
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigationEnable, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setNavigationEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not setNavigationEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setNavigationInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1598
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mService:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;->setNavigationInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setNavigationInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 1480
    sput-object p1, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextAutoBrightnessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextAutoBrightnessListener listener)"

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAutoBrightnessListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 349
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarInfoEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextCarInfoEventListener listener)"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextCarInfoEventListener listener)"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCarStatusListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoCommonEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextInfoCommonEventListener listener)"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mCommonEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextInfoEventListener listener)"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mAllListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextNaviInfoEventListener listener)"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mNaviListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ContextInfoManager"

    const-string v1, "unregisterListener(ContextWeatherInfoEventListener listener)"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->mWeatherListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 323
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->initUnregisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateWeatherFromServer()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
