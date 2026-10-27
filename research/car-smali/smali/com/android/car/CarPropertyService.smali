.class public Lcom/android/car/CarPropertyService;
.super Landroid/car/hardware/property/ICarProperty$Stub;
.source "CarPropertyService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/PropertyHalService$PropertyHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarPropertyService$EpsDeathRecipient;,
        Lcom/android/car/CarPropertyService$VcuDeathRecipient;,
        Lcom/android/car/CarPropertyService$ScuDeathRecipient;,
        Lcom/android/car/CarPropertyService$Client;,
        Lcom/android/car/CarPropertyService$PropertyHandler;
    }
.end annotation


# static fields
.field private static final AUTOPILOT_PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.autopilot"

.field private static final DBG:Z = true

.field public static final MAX_SEND_PROPS_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String; = "Property.service"


# instance fields
.field private mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mAutopilotRegisteredProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallbackStatistics:Lcom/android/car/CallbackStatistics;

.field private final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarPropertyService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

.field private final mEpsDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarPropertyService$EpsDeathRecipient;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mEpsListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/hardware/eps/IEpsEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mEventPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHal:Lcom/android/car/hal/PropertyHalService;

.field private mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mListenerIsSet:Z

.field private final mListenerPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMyPid:I

.field private final mPropIdClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/car/CarPropertyService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScuDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarPropertyService$ScuDeathRecipient;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mScuListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/hardware/scu/IScuEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mVcuDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarPropertyService$VcuDeathRecipient;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mVcuListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/hardware/vcu/IVcuEventListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/car/CarPropertyService;->MAX_SEND_PROPS_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/PropertyHalService;

    .line 128
    invoke-direct {p0}, Landroid/car/hardware/property/ICarProperty$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mScuDeathRecipientMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuDeathRecipientMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mEpsDeathRecipientMap:Ljava/util/Map;

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    .line 104
    const v2, 0x21402634

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 105
    const v2, 0x21401205

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 106
    const v2, 0x21601225

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 107
    const v2, 0x2140124e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 108
    const v2, 0x21602406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 109
    const v2, 0x21402407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    .line 103
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mListenerPropertyIds:Landroid/util/ArraySet;

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    new-array v1, v5, [Ljava/lang/Integer;

    .line 112
    const v2, 0x21511049

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 113
    const v2, 0x2141103b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mEventPropertyIds:Landroid/util/ArraySet;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mAutopilotRegisteredProperties:Ljava/util/Map;

    .line 119
    iput-boolean v3, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    .line 126
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    .line 130
    const-string v0, "Property.service"

    const-string v1, "CarPropertyService started!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object p2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 133
    iput-object p1, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/android/car/CallbackStatistics;

    const-string v1, "Property.service"

    invoke-direct {v0, v1, v4}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    .line 135
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0}, Lcom/android/car/CallbackStatistics;->getMyPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    .line 136
    new-instance v0, Lcom/android/car/DiagnosisErrorReporter;

    invoke-direct {v0, p1}, Lcom/android/car/DiagnosisErrorReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarPropertyService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPropertyService;->checkAutoPilotRegisteredIds(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/CarPropertyService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/car/CarPropertyService;)Lcom/android/car/CarPropertyService$PropertyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/CarPropertyService;->unregisterScuListenerLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/CarPropertyService;->unregisterVcuListenerLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/CarPropertyService;->unregisterEpsListenerLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarPropertyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/CarPropertyService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/CarPropertyService;->isAutopilotApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/car/CarPropertyService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/CarPropertyService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mAutopilotRegisteredProperties:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/CarPropertyService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/CarPropertyService;ILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPropertyService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/CarPropertyService;)Lcom/android/car/CallbackStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 80
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    return-object v0
.end method

.method private callbackLatestValue(ILandroid/car/hardware/property/ICarPropertyEventListener;Lcom/android/car/CarPropertyService$Client;)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;
    .param p3, "client"    # Lcom/android/car/CarPropertyService$Client;

    .line 414
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mEventPropertyIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 420
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Lcom/android/car/hal/PropertyHalService;->getProperty(IIZ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v1

    .line 421
    .local v1, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v1, :cond_1

    .line 422
    new-instance v3, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {v3, v2, v1}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    move-object v2, v3

    .line 424
    .local v2, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v1    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v2    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_1
    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/car/CarLog;->isGetLogEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    const-string v2, "Property.service"

    const-string v3, "get prop data failed, won\'t callback"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 434
    :try_start_1
    invoke-interface {p2, v0}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 435
    invoke-static {p3}, Lcom/android/car/CarPropertyService$Client;->access$100(Lcom/android/car/CarPropertyService$Client;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/car/CarPropertyService;->isMonitoredAutoPilotAppId(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    const-string v1, "Property.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback latest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for autopilot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_3
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v2, p3, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    iget v3, p3, Lcom/android/car/CarPropertyService$Client;->pid:I

    .line 440
    invoke-static {p3}, Lcom/android/car/CarPropertyService$Client;->access$200(Lcom/android/car/CarPropertyService$Client;)Landroid/os/IBinder;

    move-result-object v4

    .line 439
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 441
    :catch_1
    move-exception v1

    .line 444
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Property.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent calling failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 447
    :cond_4
    invoke-static {p3}, Lcom/android/car/CarPropertyService$Client;->access$100(Lcom/android/car/CarPropertyService$Client;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/car/CarPropertyService;->isMonitoredAutoPilotAppId(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 448
    const-string v1, "Property.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "won\'t callback latest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for autopilot due to no data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_5
    :goto_2
    return-void
.end method

.method private checkAutoPilotRegisteredIds(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 164
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    const-string v1, "Property.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autopilot registered properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/CarPropertyService;->dumpAutoPilotRegisteredIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 167
    .local v1, "isAutoPilotUnregisterIgProperty":Z
    if-nez v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mAutopilotRegisteredProperties:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 169
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    const v3, 0x21401409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    :cond_0
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autopilot app("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") didn\'t register a listener for ig data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    const-string v4, "app not registered"

    invoke-virtual {v3, v4}, Lcom/android/car/DiagnosisErrorReporter;->reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V

    .line 176
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 177
    .end local v1    # "isAutoPilotUnregisterIgProperty":Z
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static createErrorEvent(II)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 3
    .param p0, "property"    # I
    .param p1, "errorCode"    # I

    .line 181
    new-instance v0, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v1, Landroid/car/hardware/CarPropertyValue;

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 181
    return-object v0
.end method

.method private dumpAutoPilotRegisteredIds()Ljava/lang/String;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mAutopilotRegisteredProperties:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->idsToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;
    .locals 1
    .param p0, "propertyValue"    # Landroid/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/car/hardware/CarPropertyValue;",
            ")TE;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static idsToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 243
    .local p0, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/ArraySet<Ljava/lang/Integer;>;>;"
    if-nez p0, :cond_0

    .line 244
    const-string v0, "null"

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v1, Lcom/android/car/-$$Lambda$CarPropertyService$aFp4XnW8r34vHlQCvNkqXNSwpVA;

    invoke-direct {v1, v0}, Lcom/android/car/-$$Lambda$CarPropertyService$aFp4XnW8r34vHlQCvNkqXNSwpVA;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 252
    .local v1, "length":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 253
    add-int/lit8 v2, v1, -0x2

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 254
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x7d

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 257
    :cond_1
    const-string v2, "{}"

    return-object v2
.end method

.method private isAutopilotApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 409
    const-string v0, "com.xiaopeng.autopilot"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMonitoredAutoPilotAppId(IZ)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "isAutopilotApp"    # Z

    .line 292
    if-eqz p2, :cond_1

    const v0, 0x21401409

    if-eq p1, v0, :cond_0

    const v0, 0x2140261b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$1(Lcom/android/car/CarPropertyService$Client;)I
    .locals 1
    .param p0, "c"    # Lcom/android/car/CarPropertyService$Client;

    .line 273
    iget v0, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    return v0
.end method

.method public static synthetic lambda$dump$2(Lcom/android/car/CarPropertyService;Lcom/android/car/CarPropertyService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/CarPropertyService$Client;

    .line 273
    iget v0, p1, Lcom/android/car/CarPropertyService$Client;->pid:I

    iget v1, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/car/CarPropertyService$Client;)V
    .locals 0
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/CarPropertyService$Client;

    .line 273
    invoke-virtual {p1, p0}, Lcom/android/car/CarPropertyService$Client;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$dump$4(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "o"    # Ljava/util/Map$Entry;

    .line 276
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dump$5(Lcom/android/car/CarPropertyService;Lcom/android/car/CarPropertyService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/CarPropertyService$Client;

    .line 283
    iget v0, p1, Lcom/android/car/CarPropertyService$Client;->pid:I

    iget v1, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$6(Ljava/io/PrintWriter;Lcom/android/car/CarPropertyService$Client;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/CarPropertyService$Client;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mListenerBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {p1}, Lcom/android/car/CarPropertyService$Client;->access$200(Lcom/android/car/CarPropertyService$Client;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$7(Lcom/android/car/CarPropertyService;Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "cs"    # Ljava/util/Map$Entry;

    .line 279
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 280
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "prop":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Listeners size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarPropertyService$GmOHpoxzxfkZSU3JChNXJYE9pLk;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarPropertyService$GmOHpoxzxfkZSU3JChNXJYE9pLk;-><init>(Lcom/android/car/CarPropertyService;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarPropertyService$mh8J-ZI_PfrROVNXRKxJo0U-dKU;

    invoke-direct {v3, p1}, Lcom/android/car/-$$Lambda$CarPropertyService$mh8J-ZI_PfrROVNXRKxJo0U-dKU;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 286
    return-void
.end method

.method static synthetic lambda$idsToString$0(Ljava/lang/StringBuilder;Ljava/lang/Integer;Landroid/util/ArraySet;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "k"    # Ljava/lang/Integer;
    .param p2, "v"    # Landroid/util/ArraySet;

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/CarServiceUtils;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static toFloatArray([Ljava/lang/Float;)[F
    .locals 4
    .param p0, "input"    # [Ljava/lang/Float;

    .line 186
    array-length v0, p0

    .line 187
    .local v0, "len":I
    new-array v1, v0, [F

    .line 188
    .local v1, "arr":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private toLongArray([Ljava/lang/Long;)[J
    .locals 5
    .param p1, "input"    # [Ljava/lang/Long;

    .line 1178
    array-length v0, p1

    .line 1179
    .local v0, "len":I
    new-array v1, v0, [J

    .line 1180
    .local v1, "arr":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1181
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private unregisterEpsListenerLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "listenerBinder"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    .local v0, "status":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mEpsDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPropertyService$EpsDeathRecipient;

    invoke-virtual {v1}, Lcom/android/car/CarPropertyService$EpsDeathRecipient;->release()V

    .line 703
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mEpsDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    return-void
.end method

.method private unregisterListenerBinderLocked(ILandroid/os/IBinder;)V
    .locals 10
    .param p1, "propId"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 752
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarPropertyService$Client;

    .line 753
    .local v0, "client":Lcom/android/car/CarPropertyService$Client;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 755
    .local v1, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/car/CarPropertyService$Client;->pid:I

    .line 756
    .local v2, "pid":I
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, v0, Lcom/android/car/CarPropertyService$Client;->uid:I

    .line 757
    .local v3, "uid":I
    :goto_1
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "processName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 761
    const-string v5, "Property.service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Client (uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") unregisterListener: propId is not in config list:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 765
    :cond_2
    if-eqz v0, :cond_9

    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 769
    :cond_3
    iget v5, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    if-eq v2, v5, :cond_4

    .line 770
    const-string v5, "Property.service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Client (uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") unregisterListener: propId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 774
    invoke-virtual {v0, p1}, Lcom/android/car/CarPropertyService$Client;->removeProperty(I)V

    goto :goto_2

    .line 776
    :cond_5
    const-string v5, "Property.service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unregisterListenerBinderLocked: Listener was not registered for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 776
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 781
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mListenerPropertyIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 783
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v5, p1}, Lcom/android/car/hal/PropertyHalService;->unsubscribeProperty(I)V

    .line 784
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 787
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 788
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    goto :goto_5

    .line 793
    :cond_6
    const/4 v5, 0x0

    .line 794
    .local v5, "maxRate":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/CarPropertyService$Client;

    .line 795
    .local v7, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v7, p1}, Lcom/android/car/CarPropertyService$Client;->getRate(I)F

    move-result v8

    .line 796
    .local v8, "rate":F
    cmpl-float v9, v8, v5

    if-lez v9, :cond_7

    .line 797
    move v5, v8

    .line 799
    .end local v7    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v8    # "rate":F
    :cond_7
    goto :goto_3

    .line 801
    :cond_8
    iget-object v6, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v6, p1, v5}, Lcom/android/car/hal/PropertyHalService;->subscribeProperty(IF)V

    .end local v5    # "maxRate":F
    goto :goto_5

    .line 766
    :cond_9
    :goto_4
    const-string v5, "Property.service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unregisterListenerBinderLocked: Listener was not previously registered for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 766
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_a
    :goto_5
    return-void
.end method

.method private unregisterScuListenerLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "listenerBinder"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 513
    .local v0, "status":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mScuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPropertyService$ScuDeathRecipient;

    invoke-virtual {v1}, Lcom/android/car/CarPropertyService$ScuDeathRecipient;->release()V

    .line 515
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mScuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    return-void
.end method

.method private unregisterVcuListenerLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "listenerBinder"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 593
    .local v0, "status":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mVcuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarPropertyService$VcuDeathRecipient;

    invoke-virtual {v1}, Lcom/android/car/CarPropertyService$VcuDeathRecipient;->release()V

    .line 595
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mVcuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 270
    const-string v0, "**dump CarPropertyService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutopilotRegisteredProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/CarPropertyService;->dumpAutoPilotRegisteredIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Client Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;->INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$CarPropertyService$-HWkM8LEXtVTnQpdkm11VvB9isA;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarPropertyService$-HWkM8LEXtVTnQpdkm11VvB9isA;-><init>(Lcom/android/car/CarPropertyService;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$CarPropertyService$EQG36xE903VVZ18odGBhwOO5auk;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$CarPropertyService$EQG36xE903VVZ18odGBhwOO5auk;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPropertyToClientsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CarPropertyService$dph52jmZn-hridGTj7lSj3Arr2c;->INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$dph52jmZn-hridGTj7lSj3Arr2c;

    .line 277
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    .line 276
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;

    invoke-direct {v1, p0, p1}, Lcom/android/car/-$$Lambda$CarPropertyService$pezE74aQ6ZvR4nIQDuQMXeGXd4A;-><init>(Lcom/android/car/CarPropertyService;Ljava/io/PrintWriter;)V

    .line 277
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 288
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 289
    return-void
.end method

.method public getBooleanProperty(II)Z
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 1110
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1111
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1112
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getByteVectorProperty(I)[B
    .locals 2
    .param p1, "property"    # I

    .line 1211
    const-class v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1212
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<[B>;"
    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 1213
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getFloatProperty(II)F
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 1118
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1119
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Float;>;"
    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 1120
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getFloatVectorProperty(I)[F
    .locals 2
    .param p1, "property"    # I

    .line 1199
    const-class v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1200
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<[Ljava/lang/Float;>;"
    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Float;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->toFloatArray([Ljava/lang/Float;)[F

    move-result-object v1

    return-object v1

    .line 1201
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getIntProperty(II)I
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 1102
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1103
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1104
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getIntVectorProperty(I)[I
    .locals 2
    .param p1, "property"    # I

    .line 1154
    const-class v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1155
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<[Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v1

    return-object v1

    .line 1156
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getLongProperty(II)J
    .locals 3
    .param p1, "prop"    # I
    .param p2, "area"    # I

    .line 1162
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1163
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 1164
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getLongVectorProperty(I)[J
    .locals 2
    .param p1, "property"    # I

    .line 1170
    const-class v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1171
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<[Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/android/car/CarPropertyService;->toLongArray([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1

    .line 1172
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getProperty(II)Landroid/car/hardware/CarPropertyValue;
    .locals 5
    .param p1, "propId"    # I
    .param p2, "zone"    # I

    .line 848
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertSystemUidOrSystemSignatures(Landroid/content/Context;)V

    .line 857
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/hal/PropertyHalService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 851
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 852
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "processName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Client (uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") getProperty: propId is not in config list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Property.service"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v3, Landroid/car/ValueUnavailableException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/car/ValueUnavailableException;-><init>(I)V

    throw v3
.end method

.method public getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;
    .locals 5
    .param p2, "propId"    # I
    .param p3, "area"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)",
            "Landroid/car/hardware/CarPropertyValue<",
            "TE;>;"
        }
    .end annotation

    .line 1090
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p2, p3}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1091
    .local v0, "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<TE;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1092
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1093
    .local v1, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_0

    .end local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 1094
    .restart local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid property type. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1098
    .end local v1    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;
    .locals 6

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 835
    .local v2, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/ICarImpl;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v2    # "c":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 841
    :cond_1
    const-string v1, "Property.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getPropertyArray returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/car/hardware/CarPropertyConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/car/hardware/CarPropertyConfig;

    return-object v1
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 814
    .local v2, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/ICarImpl;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v2    # "c":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 821
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 822
    .local v1, "callingPid":I
    iget v2, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    if-eq v1, v2, :cond_2

    .line 823
    const-string v2, "Property.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 823
    invoke-static {v4, v1, v5}, Lcom/android/car/ProcessUtils;->getProcessNameWithoutCache(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") getPropertyList returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v1    # "callingPid":I
    :cond_2
    return-object v0
.end method

.method public getReadPermission(I)Ljava/lang/String;
    .locals 3
    .param p1, "propId"    # I

    .line 879
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 881
    const-string v0, "Property.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReadPermission: propId is not in config list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v0, 0x0

    return-object v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringProperty(I)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # I

    .line 1219
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPropertyService;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1220
    .local v0, "carProp":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1221
    :cond_0
    new-instance v1, Landroid/car/ValueUnavailableException;

    invoke-direct {v1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v1
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 3
    .param p1, "propId"    # I

    .line 889
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 891
    const-string v0, "Property.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWritePermission: propId is not in config list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v0, 0x0

    return-object v0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->getWritePermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PropertyHalService;->getPropertyList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    .line 204
    const-string v0, "Property.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache CarPropertyConfigs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mListenerPropertyIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 207
    .local v1, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/android/car/hal/PropertyHalService;->subscribeProperty(IF)V

    .line 210
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CheckIDs"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 214
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance v0, Lcom/android/car/CarPropertyService$PropertyHandler;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarPropertyService$PropertyHandler;-><init>(Lcom/android/car/CarPropertyService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPropAppRegistered(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "prop"    # I

    .line 927
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 928
    .local v0, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 929
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPropertyService$Client;

    .line 930
    .local v2, "client":Lcom/android/car/CarPropertyService$Client;
    iget-object v3, v2, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    const/4 v1, 0x1

    return v1

    .line 933
    .end local v2    # "client":Lcom/android/car/CarPropertyService$Client;
    :cond_0
    goto :goto_0

    .line 935
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onAccEvent(I)V
    .locals 6
    .param p1, "acc"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/scu/IScuEventListener;

    .line 526
    .local v1, "l":Landroid/car/hardware/scu/IScuEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/scu/IScuEventListener;->onAccEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_1

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAccEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v1    # "l":Landroid/car/hardware/scu/IScuEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method

.method public onEpsSteeringAngleEvent(F)V
    .locals 6
    .param p1, "angle"    # F

    .line 711
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/eps/IEpsEventListener;

    .line 713
    .local v1, "l":Landroid/car/hardware/eps/IEpsEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/eps/IEpsEventListener;->onEpsSteeringAngleEvent(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_1

    .line 714
    :catch_0
    move-exception v2

    .line 715
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpsSteeringAngleEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v1    # "l":Landroid/car/hardware/eps/IEpsEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method public onEpsSteeringAngleSpeedEvent(F)V
    .locals 6
    .param p1, "angleSpeed"    # F

    .line 724
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/eps/IEpsEventListener;

    .line 726
    .local v1, "l":Landroid/car/hardware/eps/IEpsEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/eps/IEpsEventListener;->onEpsSteeringAngleSpeedEvent(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_1

    .line 727
    :catch_0
    move-exception v2

    .line 728
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpsSteeringAngleSpeedEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v1    # "l":Landroid/car/hardware/eps/IEpsEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method public onPropertyChange(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    move-object/from16 v1, p0

    .line 947
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 949
    .local v2, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/property/CarPropertyEvent;

    .line 950
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    .line 951
    .local v4, "propId":I
    const v5, 0x21402634

    if-ne v5, v4, :cond_1

    .line 952
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onAccEvent(I)V

    .line 954
    :cond_1
    const v5, 0x21401205

    if-ne v5, v4, :cond_2

    .line 955
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onVcuGearEvent(I)V

    .line 957
    :cond_2
    const v5, 0x21601225

    if-ne v5, v4, :cond_3

    .line 958
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onVcuRawCarSpeedEvent(F)V

    .line 960
    :cond_3
    const v5, 0x2140124e

    if-ne v5, v4, :cond_4

    .line 961
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onVcuCruiseControlStatusEvent(I)V

    .line 963
    :cond_4
    const v5, 0x21602406

    if-ne v5, v4, :cond_5

    .line 964
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onEpsSteeringAngleEvent(F)V

    .line 966
    :cond_5
    const v5, 0x21402407

    if-ne v5, v4, :cond_6

    .line 967
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarPropertyService;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lcom/android/car/CarPropertyService;->onEpsSteeringAngleSpeedEvent(F)V

    .line 971
    :cond_6
    iget-object v5, v1, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 972
    :try_start_0
    iget-object v6, v1, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 973
    .local v6, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    if-nez v6, :cond_7

    .line 976
    iget-object v5, v1, Lcom/android/car/CarPropertyService;->mListenerPropertyIds:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 977
    const-string v5, "Property.service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPropertyChange: no listener registered for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 977
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 982
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/CarPropertyService$Client;

    .line 983
    .local v7, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v7}, Lcom/android/car/CarPropertyService$Client;->getListenerBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 984
    .local v8, "listenerBinder":Landroid/os/IBinder;
    nop

    .line 985
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 986
    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-nez v9, :cond_8

    .line 988
    new-instance v10, Landroid/util/Pair;

    invoke-virtual {v7}, Lcom/android/car/CarPropertyService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v11

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    .line 989
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    :cond_8
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    .end local v7    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v8    # "listenerBinder":Landroid/os/IBinder;
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_1

    .line 993
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v4    # "propId":I
    .end local v6    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    :cond_9
    goto/16 :goto_0

    .line 973
    .restart local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .restart local v4    # "propId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 995
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v4    # "propId":I
    :cond_a
    invoke-static {}, Lcom/android/car/CarLog;->isPerfLogEnable()Z

    move-result v3

    .line 997
    .local v3, "perfLogEnable":Z
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 998
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 999
    .local v6, "listener":Landroid/car/hardware/property/ICarPropertyEventListener;
    if-eqz v6, :cond_12

    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, "client":Lcom/android/car/CarPropertyService$Client;
    invoke-interface {v6}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1002
    .local v7, "listenerBinder":Landroid/os/IBinder;
    if-eqz v7, :cond_b

    .line 1003
    iget-object v8, v1, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/car/CarPropertyService$Client;

    .line 1005
    .end local v0    # "client":Lcom/android/car/CarPropertyService$Client;
    .local v8, "client":Lcom/android/car/CarPropertyService$Client;
    :cond_b
    move-object v8, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v9, v0

    .line 1007
    .local v9, "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1008
    .local v10, "startTimeStamp":J
    invoke-interface {v6, v9}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 1011
    .local v12, "costTimeInMs":J
    sget-wide v14, Lcom/android/car/CarPropertyService;->MAX_SEND_PROPS_INTERVAL_MS:J

    cmp-long v0, v12, v14

    if-lez v0, :cond_e

    .line 1012
    if-eqz v9, :cond_d

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 1013
    nop

    .line 1014
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v14}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v14

    invoke-virtual {v14}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v14

    .line 1015
    .local v14, "propertyId":I
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v15
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-wide/from16 v17, v15

    .line 1016
    .local v17, "sendTimeStamp":J
    if-nez v8, :cond_c

    :try_start_3
    const-string v0, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1032
    .end local v10    # "startTimeStamp":J
    .end local v12    # "costTimeInMs":J
    .end local v14    # "propertyId":I
    .end local v17    # "sendTimeStamp":J
    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto/16 :goto_7

    .line 1017
    .restart local v10    # "startTimeStamp":J
    .restart local v12    # "costTimeInMs":J
    .restart local v14    # "propertyId":I
    .restart local v17    # "sendTimeStamp":J
    :cond_c
    :try_start_4
    invoke-virtual {v8}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "clientDescription":Ljava/lang/String;
    :goto_3
    const-string v15, "Property.service"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v19, v2

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .local v19, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v20, v4

    :try_start_6
    const-string v4, "onPropertyChange "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " events: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-static {v14}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v21, v5

    move-wide/from16 v4, v17

    :try_start_7
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .end local v17    # "sendTimeStamp":J
    .local v4, "sendTimeStamp":J
    .local v21, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    move-object/from16 v22, v0

    const-string v0, " cost too much time: "

    .end local v0    # "clientDescription":Ljava/lang/String;
    .local v22, "clientDescription":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {v15, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .end local v4    # "sendTimeStamp":J
    .end local v14    # "propertyId":I
    .end local v22    # "clientDescription":Ljava/lang/String;
    goto :goto_6

    .line 1032
    .end local v10    # "startTimeStamp":J
    .end local v12    # "costTimeInMs":J
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    :goto_4
    move-object/from16 v21, v5

    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_7

    .line 1030
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v10    # "startTimeStamp":J
    .restart local v12    # "costTimeInMs":J
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_6

    .line 1023
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-eqz v3, :cond_10

    .line 1024
    if-nez v8, :cond_f

    const-string v0, ""

    goto :goto_5

    .line 1025
    :cond_f
    invoke-virtual {v8}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .restart local v0    # "clientDescription":Ljava/lang/String;
    :goto_5
    const-string v2, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPropertyChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " events:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v0    # "clientDescription":Ljava/lang/String;
    :cond_10
    :goto_6
    iget-object v0, v1, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v2, v8, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/car/CarPropertyService$Client;->pid:I

    .line 1031
    invoke-static {v8}, Lcom/android/car/CarPropertyService$Client;->access$200(Lcom/android/car/CarPropertyService$Client;)Landroid/os/IBinder;

    move-result-object v5

    .line 1030
    invoke-virtual {v0, v9, v2, v4, v5}, Lcom/android/car/CallbackStatistics;->addPropsMethodCallCount(Ljava/util/List;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1040
    .end local v10    # "startTimeStamp":J
    .end local v12    # "costTimeInMs":J
    goto :goto_8

    .line 1032
    :catch_3
    move-exception v0

    goto :goto_7

    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 1035
    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :goto_7
    if-eqz v8, :cond_11

    .line 1036
    const-string v2, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_11
    const-string v2, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for events: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v6    # "listener":Landroid/car/hardware/property/ICarPropertyEventListener;
    .end local v7    # "listenerBinder":Landroid/os/IBinder;
    .end local v8    # "client":Lcom/android/car/CarPropertyService$Client;
    .end local v9    # "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_8

    .line 1042
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    .line 997
    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :goto_8
    move-object/from16 v2, v19

    move-object/from16 v4, v20

    goto/16 :goto_2

    .line 1043
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :cond_13
    move-object/from16 v19, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    return-void
.end method

.method public onPropertyChange(Ljava/util/List;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p2, "memoryHeap"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;",
            "Ljava/io/FileDescriptor;",
            ")V"
        }
    .end annotation

    .line 942
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 9
    .param p1, "property"    # I
    .param p2, "areaId"    # I
    .param p3, "errorCode"    # I

    .line 1047
    invoke-static {p1}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    .line 1048
    .local v0, "callbackLogEnable":Z
    if-eqz v0, :cond_0

    .line 1049
    const-string v1, "Property.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPropertySetError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1055
    .local v2, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    if-eqz v2, :cond_4

    .line 1057
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1058
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-static {p1, p3}, Lcom/android/car/CarPropertyService;->createErrorEvent(II)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarPropertyService$Client;

    .line 1061
    .local v4, "c":Lcom/android/car/CarPropertyService$Client;
    :try_start_1
    invoke-static {}, Lcom/android/car/CarLog;->isPerfLogEnable()Z

    move-result v5

    .line 1062
    .local v5, "perfLogEnable":Z
    if-eqz v5, :cond_1

    .line 1063
    const-string v6, "Property.service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++onPropertySetError client: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v4}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " eventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1063
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_1
    invoke-virtual {v4}, Lcom/android/car/CarPropertyService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 1068
    if-eqz v5, :cond_2

    .line 1069
    const-string v6, "Property.service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--onPropertySetError client: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v4}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " eventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1079
    .end local v5    # "perfLogEnable":Z
    :cond_2
    goto :goto_1

    .line 1073
    :catch_0
    move-exception v5

    .line 1076
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "Property.service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEvent for"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " calling failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1076
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .end local v4    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto/16 :goto_0

    .line 1081
    .end local v1    # "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :cond_3
    goto :goto_2

    .line 1082
    :cond_4
    if-eqz v0, :cond_5

    .line 1083
    const-string v1, "Property.service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPropertySetError called with no listener registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_5
    :goto_2
    return-void

    .line 1055
    .end local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onVcuCruiseControlStatusEvent(I)V
    .locals 6
    .param p1, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/IVcuEventListener;

    .line 634
    .local v1, "l":Landroid/car/hardware/vcu/IVcuEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuCruiseControlStatusEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    goto :goto_1

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVcuCruiseControlStatusEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v1    # "l":Landroid/car/hardware/vcu/IVcuEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method public onVcuGearEvent(I)V
    .locals 6
    .param p1, "gear"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/IVcuEventListener;

    .line 606
    .local v1, "l":Landroid/car/hardware/vcu/IVcuEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuGearEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_1

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVcuGearEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v1    # "l":Landroid/car/hardware/vcu/IVcuEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method

.method public onVcuRawCarSpeedEvent(F)V
    .locals 6
    .param p1, "speed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/IVcuEventListener;

    .line 620
    .local v1, "l":Landroid/car/hardware/vcu/IVcuEventListener;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuRawCarSpeedEvent(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_1

    .line 621
    :catch_0
    move-exception v2

    .line 622
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVcuRawCarSpeedEvent calling failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v1    # "l":Landroid/car/hardware/vcu/IVcuEventListener;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method public registerEpsListener(Landroid/car/hardware/eps/IEpsEventListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/car/hardware/eps/IEpsEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    const-string v0, "Property.service"

    const-string v1, "registerEpsListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz p1, :cond_1

    .line 654
    invoke-interface {p1}, Landroid/car/hardware/eps/IEpsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 655
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    new-instance v1, Lcom/android/car/CarPropertyService$EpsDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/car/CarPropertyService$EpsDeathRecipient;-><init>(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V

    .line 662
    .local v1, "deathRecipient":Lcom/android/car/CarPropertyService$EpsDeathRecipient;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    nop

    .line 667
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mEpsDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void

    .line 663
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to link death for recipient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-void

    .line 650
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Lcom/android/car/CarPropertyService$EpsDeathRecipient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "registerEpsListener: Listener is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 12
    .param p1, "propId"    # I
    .param p2, "rate"    # F
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 298
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 299
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "processName":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 302
    invoke-direct {p0, v2}, Lcom/android/car/CarPropertyService;->isAutopilotApp(Ljava/lang/String;)Z

    move-result v3

    .line 303
    .local v3, "isCallingAutopilotApp":Z
    const-string v4, "Property.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Client (uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") registerListener: Listener is null for property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v3, :cond_0

    .line 306
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    const-string v5, "listener is null"

    invoke-virtual {v4, v5}, Lcom/android/car/DiagnosisErrorReporter;->reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V

    .line 308
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    .end local v3    # "isCallingAutopilotApp":Z
    :cond_1
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 312
    invoke-direct {p0, v2}, Lcom/android/car/CarPropertyService;->isAutopilotApp(Ljava/lang/String;)Z

    move-result v3

    .line 314
    .restart local v3    # "isCallingAutopilotApp":Z
    const-string v4, "Property.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Client (uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") registerListener: propId is not in config list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1, v3}, Lcom/android/car/CarPropertyService;->isMonitoredAutoPilotAppId(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    const-string v5, "property is unsupported"

    invoke-virtual {v4, v5}, Lcom/android/car/DiagnosisErrorReporter;->reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V

    .line 318
    :cond_2
    return-void

    .line 322
    .end local v3    # "isCallingAutopilotApp":Z
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/car/ICarImpl;->assertSystemUidOrSystemSignatures(Landroid/content/Context;)V

    .line 323
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v4, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    nop

    .line 334
    invoke-interface {p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 335
    .local v3, "listenerBinder":Landroid/os/IBinder;
    iget v4, p0, Lcom/android/car/CarPropertyService;->mMyPid:I

    if-eq v0, v4, :cond_4

    .line 336
    const-string v4, "Property.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Client (uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") registerListener: propId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " rate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 343
    :try_start_1
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/CarPropertyService$Client;

    .line 344
    .local v5, "client":Lcom/android/car/CarPropertyService$Client;
    if-nez v5, :cond_5

    .line 345
    new-instance v6, Lcom/android/car/CarPropertyService$Client;

    invoke-direct {v6, p0, p3, v0, v1}, Lcom/android/car/CarPropertyService$Client;-><init>(Lcom/android/car/CarPropertyService;Landroid/car/hardware/property/ICarPropertyEventListener;II)V

    move-object v5, v6

    .line 347
    :cond_5
    invoke-virtual {v5, p1, p2}, Lcom/android/car/CarPropertyService$Client;->addProperty(IF)V

    .line 350
    iget-object v6, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 351
    .local v6, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    if-nez v6, :cond_6

    .line 352
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v6, v7

    .line 353
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_6
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 356
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_7
    iget-boolean v7, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    if-nez v7, :cond_8

    .line 360
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v7, p0}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 363
    :cond_8
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v7, p1}, Lcom/android/car/hal/PropertyHalService;->getSampleRate(I)F

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_b

    .line 365
    :try_start_2
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v7, p1, p2}, Lcom/android/car/hal/PropertyHalService;->subscribeProperty(IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    goto :goto_0

    .line 366
    :catch_0
    move-exception v7

    .line 367
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "Property.service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") registerListener  to HAL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 367
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {v5}, Lcom/android/car/CarPropertyService$Client;->access$100(Lcom/android/car/CarPropertyService$Client;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 370
    iget-object v8, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    const-string v9, "subscribe with exception"

    invoke-virtual {v8, v9}, Lcom/android/car/DiagnosisErrorReporter;->reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V

    .line 374
    :cond_9
    instance-of v8, v7, Ljava/lang/IllegalArgumentException;

    if-nez v8, :cond_a

    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 375
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_a
    throw v7

    .line 380
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_0
    invoke-static {v5}, Lcom/android/car/CarPropertyService$Client;->access$100(Lcom/android/car/CarPropertyService$Client;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 381
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_c

    .line 382
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mAutoPilotUnregisterIgPropertyMap:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 385
    :cond_c
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mAutopilotRegisteredProperties:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 386
    .local v7, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    if-eqz v7, :cond_e

    const v9, 0x21401409

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_1

    .line 392
    :cond_d
    iget-object v9, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    invoke-virtual {v9, v8}, Lcom/android/car/CarPropertyService$PropertyHandler;->removeMessages(I)V

    .end local v6    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    .end local v7    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 387
    .restart local v6    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    .restart local v7    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_e
    :goto_1
    iget-object v9, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    invoke-virtual {v9, v8}, Lcom/android/car/CarPropertyService$PropertyHandler;->removeMessages(I)V

    .line 388
    iget-object v9, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    invoke-static {v9, v8, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    .line 390
    .local v8, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    const-wide/16 v10, 0x14

    invoke-static {v10, v11}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Duration;->toMillis()J

    move-result-wide v10

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/car/CarPropertyService$PropertyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    .end local v8    # "msg":Landroid/os/Message;
    nop

    .line 395
    .end local v6    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    .end local v7    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_f
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    .line 397
    .end local v5    # "client":Lcom/android/car/CarPropertyService$Client;
    .local v4, "client":Lcom/android/car/CarPropertyService$Client;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_10

    .line 398
    invoke-direct {p0, p1, p3, v4}, Lcom/android/car/CarPropertyService;->callbackLatestValue(ILandroid/car/hardware/property/ICarPropertyEventListener;Lcom/android/car/CarPropertyService$Client;)V

    goto :goto_3

    .line 400
    :cond_10
    neg-float v5, p2

    float-to-int v5, v5

    .line 401
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_11

    .line 402
    invoke-direct {p0, p1, p3, v4}, Lcom/android/car/CarPropertyService;->callbackLatestValue(ILandroid/car/hardware/property/ICarPropertyEventListener;Lcom/android/car/CarPropertyService$Client;)V

    .line 406
    .end local v5    # "flags":I
    :cond_11
    :goto_3
    return-void

    .line 395
    .end local v4    # "client":Lcom/android/car/CarPropertyService$Client;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 324
    .end local v3    # "listenerBinder":Landroid/os/IBinder;
    :catch_1
    move-exception v3

    .line 325
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v2}, Lcom/android/car/CarPropertyService;->isAutopilotApp(Ljava/lang/String;)Z

    move-result v4

    .line 326
    .local v4, "isCallingAutopilotApp":Z
    if-eqz v4, :cond_12

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autopilot app("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") registerListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " without permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 327
    const-string v6, "Property.service"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    const-string v6, "without permission"

    invoke-virtual {v5, v6}, Lcom/android/car/DiagnosisErrorReporter;->reportAutopilotRegisterPropertiesFailed(Ljava/lang/String;)V

    .line 331
    :cond_12
    throw v3
.end method

.method public registerScuListener(Landroid/car/hardware/scu/IScuEventListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/car/hardware/scu/IScuEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    const-string v0, "Property.service"

    const-string v1, "registerScuListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz p1, :cond_1

    .line 466
    invoke-interface {p1}, Landroid/car/hardware/scu/IScuEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 467
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    new-instance v1, Lcom/android/car/CarPropertyService$ScuDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/car/CarPropertyService$ScuDeathRecipient;-><init>(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V

    .line 474
    .local v1, "deathRecipient":Lcom/android/car/CarPropertyService$ScuDeathRecipient;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    nop

    .line 479
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mScuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-void

    .line 475
    :catch_0
    move-exception v2

    .line 476
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to link death for recipient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 462
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Lcom/android/car/CarPropertyService$ScuDeathRecipient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "registerScuListener: Listener is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerVcuListener(Landroid/car/hardware/vcu/IVcuEventListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/car/hardware/vcu/IVcuEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    const-string v0, "Property.service"

    const-string v1, "registerVcuListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz p1, :cond_1

    .line 546
    invoke-interface {p1}, Landroid/car/hardware/vcu/IVcuEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 547
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    return-void

    .line 552
    :cond_0
    new-instance v1, Lcom/android/car/CarPropertyService$VcuDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/car/CarPropertyService$VcuDeathRecipient;-><init>(Lcom/android/car/CarPropertyService;Landroid/os/IBinder;)V

    .line 554
    .local v1, "deathRecipient":Lcom/android/car/CarPropertyService$VcuDeathRecipient;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    nop

    .line 559
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mVcuDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void

    .line 555
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Property.service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to link death for recipient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 542
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Lcom/android/car/CarPropertyService$VcuDeathRecipient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "registerVcuListener: Listener is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 5

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHandler:Lcom/android/car/CarPropertyService$PropertyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/CarPropertyService$PropertyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 225
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 228
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Property.service"

    const-string v4, "Timeout while joining for handler thread to join."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarPropertyService$Client;

    .line 233
    .local v3, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v3}, Lcom/android/car/CarPropertyService$Client;->release()V

    .line 234
    .end local v3    # "c":Lcom/android/car/CarPropertyService$Client;
    goto :goto_1

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 236
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 237
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v2}, Lcom/android/car/CallbackStatistics;->release()V

    .line 238
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, v1}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    .line 240
    return-void

    .line 225
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setBooleanProperty(IIZ)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .param p3, "val"    # Z

    .line 1130
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1131
    return-void
.end method

.method public setByteVectorProperty(I[B)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "values"    # [B

    .line 1187
    const-class v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public setFloatProperty(IIF)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .param p3, "val"    # F

    .line 1134
    const-class v0, Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1135
    return-void
.end method

.method public setFloatVectorProperty(I[F)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "values"    # [F

    .line 1207
    const-class v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1208
    return-void
.end method

.method public setIntProperty(III)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .param p3, "val"    # I

    .line 1138
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1139
    return-void
.end method

.method public setIntPropertyWithDefaultArea(II)V
    .locals 3
    .param p1, "prop"    # I
    .param p2, "val"    # I

    .line 1142
    const-class v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1143
    return-void
.end method

.method public setIntVectorProperty(I[I)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "values"    # [I

    .line 1146
    const-class v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1147
    return-void
.end method

.method public setLongProperty(IIJ)V
    .locals 2
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .param p3, "val"    # J

    .line 1191
    const-class v0, Ljava/lang/Long;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1192
    return-void
.end method

.method public setLongVectorProperty(II[J)V
    .locals 1
    .param p1, "prop"    # I
    .param p2, "area"    # I
    .param p3, "val"    # [J

    .line 1195
    const-class v0, [J

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1196
    return-void
.end method

.method public setMultiProperties(Ljava/util/List;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 10
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyValue;",
            ">;",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ")V"
        }
    .end annotation

    .line 899
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyValue;>;"
    if-eqz p1, :cond_4

    .line 900
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 901
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 902
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "processName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 904
    .local v3, "clientDesc":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/hardware/CarPropertyValue;

    .line 905
    .local v5, "prop":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v5}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v6

    .line 906
    .local v6, "propId":I
    invoke-virtual {v5, v0}, Landroid/car/hardware/CarPropertyValue;->setTxPid(I)V

    .line 907
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 908
    if-nez v1, :cond_0

    .line 909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 911
    :cond_0
    if-nez v3, :cond_1

    .line 912
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Client (uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    :cond_1
    const-string v7, "Property.service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " setMultiProperties: propId is not in config list:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    goto :goto_0

    .line 918
    :cond_2
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/car/ICarImpl;->assertSystemUidOrSystemSignatures(Landroid/content/Context;)V

    .line 919
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v8, v6}, Lcom/android/car/hal/PropertyHalService;->getWritePermission(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 920
    .end local v5    # "prop":Landroid/car/hardware/CarPropertyValue;
    .end local v6    # "propId":I
    goto :goto_0

    .line 921
    :cond_3
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v4, p1}, Lcom/android/car/hal/PropertyHalService;->setMultiProperties(Ljava/util/List;)V

    .line 923
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "clientDesc":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 863
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 864
    .local v0, "propId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 865
    .local v1, "pid":I
    invoke-virtual {p1, v1}, Landroid/car/hardware/CarPropertyValue;->setTxPid(I)V

    .line 866
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 869
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, "processName":Ljava/lang/String;
    const-string v4, "Property.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Client (uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") setProperty: propId is not in config list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 873
    .end local v2    # "uid":I
    .end local v3    # "processName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/car/ICarImpl;->assertSystemUidOrSystemSignatures(Landroid/content/Context;)V

    .line 874
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v3, v0}, Lcom/android/car/hal/PropertyHalService;->getWritePermission(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 875
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, p1}, Lcom/android/car/hal/PropertyHalService;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 876
    return-void
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 1
    .param p2, "propId"    # I
    .param p3, "area"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    .line 1126
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p4, "val":Ljava/lang/Object;, "TE;"
    new-instance v0, Landroid/car/hardware/CarPropertyValue;

    invoke-direct {v0, p2, p3, p4}, Landroid/car/hardware/CarPropertyValue;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/car/CarPropertyService;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 1127
    return-void
.end method

.method public setStringProperty(ILjava/lang/String;)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "values"    # Ljava/lang/String;

    .line 1150
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/car/CarPropertyService;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    .line 1151
    return-void
.end method

.method public unregisterEpsListener(Landroid/car/hardware/eps/IEpsEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/eps/IEpsEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    const-string v0, "Property.service"

    const-string v1, "unregisterEpsListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz p1, :cond_1

    .line 684
    invoke-interface {p1}, Landroid/car/hardware/eps/IEpsEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 685
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mEpsListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    const-string v1, "Property.service"

    const-string v2, "unregisterEpsListener: Listener was not previously registered."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarPropertyService;->unregisterEpsListenerLocked(Landroid/os/IBinder;)V

    .line 689
    return-void

    .line 680
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "unregisterEpsListener: listener was not registered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 4
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 735
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertSystemUidOrSystemSignatures(Landroid/content/Context;)V

    .line 736
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    if-eqz p2, :cond_0

    .line 745
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 746
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/CarPropertyService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    .line 748
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 738
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 739
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 740
    .local v1, "uid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client (uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") unregisterListener: Listener is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Property.service"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unregisterScuListener(Landroid/car/hardware/scu/IScuEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/scu/IScuEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    const-string v0, "Property.service"

    const-string v1, "unregisterScuListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz p1, :cond_1

    .line 496
    invoke-interface {p1}, Landroid/car/hardware/scu/IScuEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 497
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mScuListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    const-string v1, "Property.service"

    const-string v2, "unregisterScuListener: Listener was not previously registered."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarPropertyService;->unregisterScuListenerLocked(Landroid/os/IBinder;)V

    .line 501
    return-void

    .line 492
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "unregisterScuListener: listener was not registered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterVcuListener(Landroid/car/hardware/vcu/IVcuEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/vcu/IVcuEventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    const-string v0, "Property.service"

    const-string v1, "unregisterVcuListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-eqz p1, :cond_1

    .line 576
    invoke-interface {p1}, Landroid/car/hardware/vcu/IVcuEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 577
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mVcuListenersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const-string v1, "Property.service"

    const-string v2, "unregisterVcuListener: Listener was not previously registered."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarPropertyService;->unregisterVcuListenerLocked(Landroid/os/IBinder;)V

    .line 581
    return-void

    .line 572
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_1
    const-string v0, "Property.service"

    const-string v1, "unregisterVcuListener: listener was not registered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
