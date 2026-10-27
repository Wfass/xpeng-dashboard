.class public Lcom/android/car/xpeng/remind/CarRemindService;
.super Landroid/car/xpeng/remind/ICarRemind$Stub;
.source "CarRemindService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Landroid/car/hardware/property/ICarPropertyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/remind/CarRemindService$Client;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final MAX_SEND_PROPS_INTERVAL_MS:J

.field private static final TAG:Ljava/lang/String; = "CarRemindService"


# instance fields
.field private mCarStatusNotifyRemind:Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;

.field private final mClientMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/xpeng/remind/CarRemindService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/PropertyHalService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneKeyLeaveRemind:Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;

.field private mPhoneLeftRemind:Lcom/android/car/xpeng/remind/PhoneLeftRemind;

.field private final mPropIdClientMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/car/xpeng/remind/CarRemindService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPropertyService:Lcom/android/car/CarPropertyService;

.field private mRemindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/xpeng/remind/CarRemindBase;",
            ">;"
        }
    .end annotation
.end field

.field private mSeatTiltOverRemind:Lcom/android/car/xpeng/remind/SeatTiltOverRemind;

.field private mStatisticReport:Lcom/android/car/xpeng/remind/StatisticReport;

.field private mSupportedPropConfigs:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTailgateCollisionRemind:Lcom/android/car/xpeng/remind/TailgateCollisionRemind;

.field private final propertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/car/xpeng/remind/CarRemindService;->MAX_SEND_PROPS_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;Lcom/android/car/CarPropertyService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/PropertyHalService;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 104
    invoke-direct {p0}, Landroid/car/xpeng/remind/ICarRemind$Stub;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mClientMap:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropIdClientMap:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->propertyIds:Landroid/util/ArraySet;

    .line 105
    iput-object p1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 107
    iput-object p2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/car/xpeng/remind/PhoneLeftRemind;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/PhoneLeftRemind;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPhoneLeftRemind:Lcom/android/car/xpeng/remind/PhoneLeftRemind;

    .line 113
    new-instance v0, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/SeatTiltOverRemind;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSeatTiltOverRemind:Lcom/android/car/xpeng/remind/SeatTiltOverRemind;

    .line 114
    new-instance v0, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPhoneKeyLeaveRemind:Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;

    .line 115
    new-instance v0, Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mCarStatusNotifyRemind:Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;

    .line 116
    new-instance v0, Lcom/android/car/xpeng/remind/StatisticReport;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/StatisticReport;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mStatisticReport:Lcom/android/car/xpeng/remind/StatisticReport;

    .line 118
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPhoneLeftRemind:Lcom/android/car/xpeng/remind/PhoneLeftRemind;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSeatTiltOverRemind:Lcom/android/car/xpeng/remind/SeatTiltOverRemind;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPhoneKeyLeaveRemind:Lcom/android/car/xpeng/remind/PhoneKeyLeaveRemind;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mCarStatusNotifyRemind:Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mStatisticReport:Lcom/android/car/xpeng/remind/StatisticReport;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v0, "config.car.remind.tailgate_collision"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/xpeng/remind/TailgateCollisionRemind;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mTailgateCollisionRemind:Lcom/android/car/xpeng/remind/TailgateCollisionRemind;

    .line 125
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mTailgateCollisionRemind:Lcom/android/car/xpeng/remind/TailgateCollisionRemind;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/xpeng/remind/CarRemindService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/remind/CarRemindService;

    .line 71
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/remind/CarRemindService;

    .line 71
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/remind/CarRemindService;

    .line 71
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/xpeng/remind/CarRemindService;ILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/remind/CarRemindService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/remind/CarRemindService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method private getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;
    .locals 3
    .param p1, "propId"    # I

    .line 354
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 356
    .local v1, "config":Landroid/car/hardware/CarPropertyConfig;
    :goto_0
    monitor-exit v0

    .line 357
    return-object v1

    .line 356
    .end local v1    # "config":Landroid/car/hardware/CarPropertyConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 183
    .local p1, "propertyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1}, Lcom/android/car/CarPropertyService;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "propertyList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig;

    .line 187
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    return-object v0
.end method

.method private getSupportedPropIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 177
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupportedPropConfigs()V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    .line 198
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->propertyIds:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/car/xpeng/remind/CarRemindService;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig;

    .line 200
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v4, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    goto :goto_0

    .line 203
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :cond_0
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterListenerBinderLocked(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 382
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/remind/CarRemindService$Client;

    .line 383
    .local v0, "client":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropIdClientMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 385
    .local v1, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/xpeng/remind/CarRemindService$Client;>;"
    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->propertyIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const-string v2, "CarRemindService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not in the config list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    invoke-virtual {v0, p1}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->removeProperty(I)V

    goto :goto_1

    .line 397
    :cond_2
    const-string v2, "CarRemindService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListenerBinderLocked: Listener was not registered for propId=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    :cond_3
    :goto_0
    const-string v2, "CarRemindService"

    const-string v3, "unregisterListenerBinderLocked: Listener was not previously registered."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 154
    return-void
.end method

.method public getPropertyConfigList([I)Ljava/util/List;
    .locals 8
    .param p1, "propIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 289
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    .line 290
    .local v4, "propId":I
    iget-object v5, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    iget-object v5, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/hardware/CarPropertyConfig;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_1
    const-string v5, "CarRemindService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPropertyConfigList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not in the config list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v4    # "propId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_2
    monitor-exit v0

    return-object v1

    .line 286
    :cond_3
    :goto_2
    const-string v2, "CarRemindService"

    const-string v3, "getPropertyConfigList: no supported properties"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit v0

    return-object v1

    .line 298
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/remind/CarRemindBase;

    .line 132
    .local v1, "remind":Lcom/android/car/xpeng/remind/CarRemindBase;
    invoke-virtual {v1}, Lcom/android/car/xpeng/remind/CarRemindBase;->getRemindPropertyId()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 133
    .local v5, "propId":I
    iget-object v6, p0, Lcom/android/car/xpeng/remind/CarRemindService;->propertyIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v5    # "propId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->setListener(Landroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 136
    invoke-virtual {v1}, Lcom/android/car/xpeng/remind/CarRemindBase;->init()V

    .line 137
    .end local v1    # "remind":Lcom/android/car/xpeng/remind/CarRemindBase;
    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/CarRemindService;->initSupportedPropConfigs()V

    .line 139
    return-void
.end method

.method public injectRemindEvent(ILjava/lang/String;Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "propId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "writer"    # Ljava/io/PrintWriter;

    .line 157
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "data":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    .line 160
    .local v1, "timestamp":J
    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v5, v3

    move v6, p1

    move-wide v9, v1

    invoke-direct/range {v5 .. v11}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 161
    .local v3, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 163
    .local v4, "event":Landroid/car/hardware/property/CarPropertyEvent;
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Landroid/car/hardware/property/CarPropertyEvent;

    aput-object v4, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/car/xpeng/remind/CarRemindService;->onEvent(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v5

    .line 165
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "CarRemindService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectRemindEvent error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 169
    .end local v0    # "data":I
    .end local v1    # "timestamp":J
    .end local v3    # "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<Ljava/lang/Integer;>;"
    .end local v4    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectRemindEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not in the config list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onEvent(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    move-object/from16 v1, p0

    .line 208
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 210
    .local v2, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    iget-object v3, v1, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 211
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/hardware/property/CarPropertyEvent;

    .line 212
    .local v4, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v4}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v6

    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v6

    .line 213
    .local v6, "propId":I
    iget-object v7, v1, Lcom/android/car/xpeng/remind/CarRemindService;->mPropIdClientMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 214
    .local v7, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/xpeng/remind/CarRemindService$Client;>;"
    if-nez v7, :cond_0

    .line 215
    const-string v5, "CarRemindService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPropertyChange: no listener registered for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_0

    .line 219
    :cond_0
    nop

    .local v5, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 220
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/xpeng/remind/CarRemindService$Client;

    .line 221
    .local v8, "c":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 222
    .local v9, "p":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    if-nez v9, :cond_1

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 225
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v8    # "c":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    .end local v9    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 229
    .end local v4    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v5    # "j":I
    .end local v6    # "propId":I
    .end local v7    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/xpeng/remind/CarRemindService$Client;>;"
    :cond_2
    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_8

    .line 232
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/car/CarLog;->isPerfLogEnable()Z

    move-result v0

    move v4, v0

    .line 233
    .local v4, "perfLogEnable":Z
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/xpeng/remind/CarRemindService$Client;

    move-object v7, v0

    .line 234
    .local v7, "client":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    .line 236
    .local v8, "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 237
    .local v9, "startTimeStamp":J
    invoke-virtual {v7, v8}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->onEvent(Ljava/util/List;)V

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 240
    .local v11, "costTimeInMs":J
    sget-wide v13, Lcom/android/car/xpeng/remind/CarRemindService;->MAX_SEND_PROPS_INTERVAL_MS:J

    cmp-long v0, v11, v13

    if-lez v0, :cond_6

    .line 241
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 242
    nop

    .line 243
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 244
    .local v0, "propertyId":I
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v13}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v13

    invoke-virtual {v13}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v13
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .local v13, "sendTimeStamp":J
    if-nez v7, :cond_4

    :try_start_4
    const-string v15, ""
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 266
    .end local v0    # "propertyId":I
    .end local v9    # "startTimeStamp":J
    .end local v11    # "costTimeInMs":J
    .end local v13    # "sendTimeStamp":J
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 246
    .restart local v0    # "propertyId":I
    .restart local v9    # "startTimeStamp":J
    .restart local v11    # "costTimeInMs":J
    .restart local v13    # "sendTimeStamp":J
    :cond_4
    :try_start_5
    invoke-virtual {v7}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v15

    .line 247
    .local v15, "clientDescription":Ljava/lang/String;
    :goto_3
    const-string v5, "CarRemindService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v16, v2

    :try_start_6
    const-string v2, "onPropertyChange "

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .local v16, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cost too much time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "propertyId":I
    .end local v13    # "sendTimeStamp":J
    .end local v15    # "clientDescription":Ljava/lang/String;
    goto :goto_5

    .line 273
    .end local v9    # "startTimeStamp":J
    .end local v11    # "costTimeInMs":J
    .end local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_5

    .line 252
    .end local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v9    # "startTimeStamp":J
    .restart local v11    # "costTimeInMs":J
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-eqz v4, :cond_8

    .line 253
    if-nez v7, :cond_7

    const-string v0, ""

    goto :goto_4

    .line 266
    .end local v9    # "startTimeStamp":J
    .end local v11    # "costTimeInMs":J
    :catch_1
    move-exception v0

    goto :goto_6

    .line 254
    .restart local v9    # "startTimeStamp":J
    .restart local v11    # "costTimeInMs":J
    :cond_7
    invoke-virtual {v7}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "clientDescription":Ljava/lang/String;
    :goto_4
    const-string v1, "CarRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPropertyChange "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " events:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cost "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 273
    .end local v0    # "clientDescription":Ljava/lang/String;
    .end local v9    # "startTimeStamp":J
    .end local v11    # "costTimeInMs":J
    :cond_8
    :goto_5
    goto :goto_7

    .line 266
    .end local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    .line 269
    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :goto_6
    if-eqz v7, :cond_9

    .line 270
    :try_start_7
    const-string v1, "CarRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent calling "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_9
    const-string v1, "CarRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent calling failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for events: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v7    # "client":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    .end local v8    # "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :goto_7
    nop

    .line 233
    move-object/from16 v2, v16

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 275
    .end local v4    # "perfLogEnable":Z
    .end local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :cond_a
    move-object/from16 v16, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    monitor-exit v3

    .line 276
    return-void

    .line 275
    .end local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v16    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/car/xpeng/remind/CarRemindService$Client;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :goto_8
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method public onShmEvent(Ljava/util/List;Ljava/io/FileDescriptor;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    return-void
.end method

.method public registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 6
    .param p1, "propId"    # I
    .param p2, "rate"    # F
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 304
    const-string v0, "CarRemindService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/android/car/xpeng/remind/CarRemindService;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    .line 311
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 312
    const-string v1, "CarRemindService"

    const-string v2, "registerListener:  no supported properties"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    const-string v1, "CarRemindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in config list:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    if-eqz p3, :cond_5

    .line 331
    invoke-interface {p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 333
    .local v1, "listenerBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mClientMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/remind/CarRemindService$Client;

    .line 336
    .local v3, "client":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    if-nez v3, :cond_2

    .line 337
    new-instance v4, Lcom/android/car/xpeng/remind/CarRemindService$Client;

    invoke-direct {v4, p0, p3}, Lcom/android/car/xpeng/remind/CarRemindService$Client;-><init>(Lcom/android/car/xpeng/remind/CarRemindService;Landroid/car/hardware/property/ICarPropertyEventListener;)V

    move-object v3, v4

    .line 339
    :cond_2
    invoke-virtual {v3, p1, p2}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->addProperty(IF)V

    .line 341
    iget-object v4, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropIdClientMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 342
    .local v4, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/xpeng/remind/CarRemindService$Client;>;"
    if-nez v4, :cond_3

    .line 343
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v4, v5

    .line 344
    iget-object v5, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mPropIdClientMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 347
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v3    # "client":Lcom/android/car/xpeng/remind/CarRemindService$Client;
    .end local v4    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/xpeng/remind/CarRemindService$Client;>;"
    :cond_4
    monitor-exit v2

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 327
    .end local v1    # "listenerBinder":Landroid/os/IBinder;
    :cond_5
    const-string v1, "CarRemindService"

    const-string v2, "registerListener: Listener is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public release()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/xpeng/remind/CarRemindBase;

    .line 144
    .local v1, "remind":Lcom/android/car/xpeng/remind/CarRemindBase;
    invoke-virtual {v1}, Lcom/android/car/xpeng/remind/CarRemindBase;->release()V

    .line 145
    .end local v1    # "remind":Lcom/android/car/xpeng/remind/CarRemindBase;
    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mRemindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->propertyIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 149
    return-void
.end method

.method public unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 363
    const-string v0, "CarRemindService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener prop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    if-eqz p2, :cond_0

    .line 375
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 376
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/xpeng/remind/CarRemindService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 371
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_0
    const-string v0, "CarRemindService"

    const-string v1, "unregisterListener: Listener is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
