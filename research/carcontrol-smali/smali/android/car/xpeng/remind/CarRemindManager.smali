.class public Landroid/car/xpeng/remind/CarRemindManager;
.super Landroid/car/CarManagerBase;
.source "CarRemindManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;,
        Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;,
        Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;
    }
.end annotation


# static fields
.field public static final COMMON_REMIND:I = 0x1

.field public static final COMMON_REMIND_NONE:I = 0x0

.field private static final DBG:Z = false

.field public static final ID_BIZ_BLE_KEY_LEAVE_REMIND:I = 0x2140a802

.field public static final ID_BIZ_PHONE_LEFT_REMIND:I = 0x2140a801

.field public static final ID_BIZ_TGATE_COLLISION_REMIND:I = 0x2140a804

.field public static final ID_BIZ_TRD_SEAT_TILT_OVER_REMIND:I = 0x2140a803

.field private static final MSG_GENERIC_EVENT:I = 0x0

.field public static final PHONE_LEFT_REMIND_DRV:I = 0x1

.field public static final PHONE_LEFT_REMIND_NONE:I = 0x0

.field public static final PHONE_LEFT_REMIND_PSNGER:I = 0x2

.field public static final PHONE_LEFT_REMIND_REAR_LEFT:I = 0x3

.field public static final PHONE_LEFT_REMIND_REAR_RIGHT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CarRemindManager"


# instance fields
.field private final mHandler:Lcom/android/car/internal/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleMessageHandler<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdToCallbacksMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

.field private final mLock:Ljava/lang/Object;

.field private final mRemindPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/xpeng/remind/ICarRemind;

.field private mSupportedPropConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 137
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 59
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

    .line 65
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 178
    new-instance p1, Landroid/util/ArraySet;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Integer;

    const v0, 0x2140a801

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const v0, 0x2140a802

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    const v0, 0x2140a803

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p3, v2

    const v0, 0x2140a804

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p3, v2

    .line 179
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mRemindPropertyIds:Landroid/util/ArraySet;

    .line 138
    invoke-static {p2}, Landroid/car/xpeng/remind/ICarRemind$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remind/ICarRemind;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;

    .line 139
    new-instance p1, Landroid/car/xpeng/remind/CarRemindManager$1;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Landroid/car/xpeng/remind/CarRemindManager$1;-><init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/os/Looper;I)V

    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/remind/CarRemindManager;)Landroid/util/SparseArray;
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/xpeng/remind/CarRemindManager;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/car/xpeng/remind/CarRemindManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_remind"

    return-object v0
.end method

.method private handleEvent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    invoke-virtual {v0, p1}, Lcom/android/car/internal/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    return-void
.end method

.method private initSupportedPropConfigs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/remind/CarRemindManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;->INSTANCE:Landroid/car/xpeng/remind/-$$Lambda$CarRemindManager$6wBfFGqAuppuokPvYZ_9tJk8vrA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 193
    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 194
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager;->mSupportedPropConfigs:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;

    invoke-interface {v2, v1}, Landroid/car/xpeng/remind/ICarRemind;->getPropertyConfigList([I)Ljava/util/List;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 198
    iget-object v3, p0, Landroid/car/xpeng/remind/CarRemindManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z
    .locals 2

    .line 208
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getAccess()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$initSupportedPropConfigs$0(Ljava/lang/Integer;)I
    .locals 0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mRemindPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRemindStatus(I)I
    .locals 2

    .line 431
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mRemindPropertyIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;

    invoke-interface {v0, p1}, Landroid/car/xpeng/remind/ICarRemind;->getRemindStatus(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CarRemindManager"

    const-string v0, "RemoteException---->CarRemindService::getRemindStatus()"

    .line 435
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/remind/CarRemindManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_remind"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/remind/ICarRemind$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remind/ICarRemind;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0, v0}, Landroid/car/xpeng/remind/CarRemindManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/remind/CarRemindManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/xpeng/remind/CarRemindManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 233
    :try_start_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarRemindManager"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerPropCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

    invoke-direct {v0, p0, p0}, Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;-><init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/car/xpeng/remind/CarRemindManager;)V

    iput-object v0, p0, Landroid/car/xpeng/remind/CarRemindManager;->mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

    .line 240
    :cond_1
    invoke-direct {p0}, Landroid/car/xpeng/remind/CarRemindManager;->initSupportedPropConfigs()V

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CarRemindManager"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPropCallback id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_3
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    if-eqz v1, :cond_2

    .line 246
    invoke-direct {p0, v1}, Landroid/car/xpeng/remind/CarRemindManager;->isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 249
    :cond_4
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 252
    new-instance v1, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;-><init>(Landroid/car/xpeng/remind/CarRemindManager;Landroid/car/xpeng/remind/CarRemindManager$1;)V

    .line 253
    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 257
    :cond_5
    invoke-virtual {v1, p2}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->contains(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 258
    invoke-virtual {v1, p2}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->add(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v2, :cond_2

    .line 263
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/car/xpeng/remind/CarRemindManager;->mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

    invoke-interface {v1, v0, v2, v3}, Landroid/car/xpeng/remind/ICarRemind;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    :try_start_2
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 265
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    const-string p1, "CarRemindManager"

    const-string p2, "callback is null"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "CarRemindManager"

    const-string p2, "ids is null"

    .line 224
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarRemindManager"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterPropCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 292
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 293
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CarRemindManager"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPropCallback id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;

    if-nez v1, :cond_3

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v1, p2}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->remove(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 301
    invoke-virtual {v1}, Landroid/car/xpeng/remind/CarRemindManager$CarRemindEventCallbacks;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mService:Landroid/car/xpeng/remind/ICarRemind;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroid/car/xpeng/remind/CarRemindManager;->mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;

    invoke-interface {v1, v0, v2}, Landroid/car/xpeng/remind/ICarRemind;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    :try_start_2
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 306
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 312
    :cond_4
    iget-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Landroid/car/xpeng/remind/CarRemindManager;->mListenerToBase:Landroid/car/xpeng/remind/CarRemindManager$CarPropertyEventListenerToService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    const-string p1, "CarRemindManager"

    const-string p2, "callback is null"

    .line 288
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, "CarRemindManager"

    const-string p2, "ids is null"

    .line 283
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
