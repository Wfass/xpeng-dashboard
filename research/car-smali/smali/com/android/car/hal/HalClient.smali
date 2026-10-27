.class Lcom/android/car/hal/HalClient;
.super Ljava/lang/Object;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/HalClient$MessageLoop;,
        Lcom/android/car/hal/HalClient$XpVehicleCallback;,
        Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;,
        Lcom/android/car/hal/HalClient$OnPropertySetValue;,
        Lcom/android/car/hal/HalClient$OnPropertyEventValue;,
        Lcom/android/car/hal/HalClient$HalCallBackValue;,
        Lcom/android/car/hal/HalClient$VehicleCallback;,
        Lcom/android/car/hal/HalClient$CallbackHandler;,
        Lcom/android/car/hal/HalClient$PropertySetError;,
        Lcom/android/car/hal/HalClient$ValueResult;,
        Lcom/android/car/hal/HalClient$ObjectWrapper;,
        Lcom/android/car/hal/HalClient$RetriableCallback;
    }
.end annotation


# static fields
.field private static final COMMON_MULTI_PROPERTY:I = -0x2

.field private static final HAL_DEAD:I = -0x1

.field private static final MAX_HANDLER_DELIVER_MESSAGE_INTERVAL_MS:J

.field private static final MAX_HANDLER_DISPATCH_MESSAGE_INTERVAL_MS:J

.field private static final MAX_RECEIVE_HAL_PROPS_FROM_HANDLER_INTERVAL_MS:J

.field private static final MAX_RECEIVE_HAL_PROPS_INTERVAL_MS:J

.field private static final MAX_SEND_MESSAGE_INTERVAL_MS:J

.field private static final SLEEP_BETWEEN_RETRIABLE_INVOKES_MS:I = 0x32

.field private static final USE_QUEUE:Z = true

.field private static final WAIT_CAP_FOR_RETRIABLE_RESULT_MS:I = 0x7d0


# instance fields
.field private final mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

.field private volatile mContext:Landroid/content/Context;

.field private final mGetPropStatistics:Lcom/android/car/CallbackStatistics;

.field private final mHandlerThread:Ljava/lang/Thread;

.field private final mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

.field private final mQueue:Ljava/util/concurrent/LinkedTransferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedTransferQueue<",
            "Lcom/android/car/hal/HalClient$HalCallBackValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetPropStatistics:Lcom/android/car/CallbackStatistics;

.field private final mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 72
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const-wide/16 v1, 0x15e

    const-wide/16 v3, 0x2ee

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :goto_1
    sput-wide v5, Lcom/android/car/hal/HalClient;->MAX_RECEIVE_HAL_PROPS_INTERVAL_MS:J

    .line 74
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/car/hal/HalClient;->MAX_SEND_MESSAGE_INTERVAL_MS:J

    .line 75
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_1

    .line 76
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    goto :goto_3

    :cond_1
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_2

    :goto_3
    sput-wide v0, Lcom/android/car/hal/HalClient;->MAX_HANDLER_DELIVER_MESSAGE_INTERVAL_MS:J

    .line 77
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_2

    .line 78
    const-wide/16 v0, 0x5dc

    :goto_4
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    goto :goto_5

    :cond_2
    const-wide/16 v0, 0x2bc

    goto :goto_4

    :goto_5
    sput-wide v0, Lcom/android/car/hal/HalClient;->MAX_RECEIVE_HAL_PROPS_FROM_HANDLER_INTERVAL_MS:J

    .line 79
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_3

    .line 80
    const-wide/16 v0, 0x190

    :goto_6
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    goto :goto_7

    :cond_3
    const-wide/16 v0, 0xc8

    goto :goto_6

    :goto_7
    sput-wide v0, Lcom/android/car/hal/HalClient;->MAX_HANDLER_DISPATCH_MESSAGE_INTERVAL_MS:J

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V
    .locals 4
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/HalClient;->mQueue:Ljava/util/concurrent/LinkedTransferQueue;

    .line 102
    iput-object p1, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 103
    iput-object p3, p0, Lcom/android/car/hal/HalClient;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/car/hal/HalClient$MessageLoop;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/car/hal/HalClient$MessageLoop;-><init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$1;)V

    const-string v3, "VhalCallbackThread"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/hal/HalClient;->mHandlerThread:Ljava/lang/Thread;

    .line 106
    new-instance v0, Lcom/android/car/hal/HalClient$XpVehicleCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/car/hal/HalClient$XpVehicleCallback;-><init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$1;)V

    iput-object v0, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 112
    new-instance v0, Lcom/android/car/CallbackStatistics;

    const-string v1, "SetProp"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/car/hal/HalClient;->mSetPropStatistics:Lcom/android/car/CallbackStatistics;

    .line 113
    new-instance v0, Lcom/android/car/CallbackStatistics;

    const-string v1, "GetProp"

    invoke-direct {v0, v1, v2}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/car/hal/HalClient;->mGetPropStatistics:Lcom/android/car/CallbackStatistics;

    .line 114
    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/hal/HalClient;)Ljava/util/concurrent/LinkedTransferQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/HalClient;

    .line 56
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mQueue:Ljava/util/concurrent/LinkedTransferQueue;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .line 56
    sget-wide v0, Lcom/android/car/hal/HalClient;->MAX_HANDLER_DELIVER_MESSAGE_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .line 56
    sget-wide v0, Lcom/android/car/hal/HalClient;->MAX_RECEIVE_HAL_PROPS_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 56
    sget-wide v0, Lcom/android/car/hal/HalClient;->MAX_SEND_MESSAGE_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 56
    sget-wide v0, Lcom/android/car/hal/HalClient;->MAX_RECEIVE_HAL_PROPS_FROM_HANDLER_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/car/hal/HalClient;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/HalClient;

    .line 56
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    return-object v0
.end method

.method static synthetic access$900()J
    .locals 2

    .line 56
    sget-wide v0, Lcom/android/car/hal/HalClient;->MAX_HANDLER_DISPATCH_MESSAGE_INTERVAL_MS:J

    return-wide v0
.end method

.method private internalGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Lcom/android/car/hal/HalClient$ValueResult;
    .locals 5
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 320
    new-instance v0, Lcom/android/car/hal/HalClient$ValueResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/hal/HalClient$ValueResult;-><init>(Lcom/android/car/hal/HalClient$1;)V

    .line 322
    .local v0, "result":Lcom/android/car/hal/HalClient$ValueResult;
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    new-instance v2, Lcom/android/car/hal/-$$Lambda$HalClient$lgKjYXTxFf-Kf2lEPGMj7lCe6AA;

    invoke-direct {v2, v0}, Lcom/android/car/hal/-$$Lambda$HalClient$lgKjYXTxFf-Kf2lEPGMj7lCe6AA;-><init>(Lcom/android/car/hal/HalClient$ValueResult;)V

    invoke-interface {v1, p1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get value from vehicle HAL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static invokeRetriable(Lcom/android/car/hal/HalClient$RetriableCallback;JJ)I
    .locals 6
    .param p0, "callback"    # Lcom/android/car/hal/HalClient$RetriableCallback;
    .param p1, "timeoutMs"    # J
    .param p3, "sleepMs"    # J

    .line 341
    invoke-interface {p0}, Lcom/android/car/hal/HalClient$RetriableCallback;->action()I

    move-result v0

    .line 342
    .local v0, "status":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 343
    .local v1, "startTime":J
    :goto_0
    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 345
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    nop

    .line 351
    invoke-interface {p0}, Lcom/android/car/hal/HalClient$RetriableCallback;->action()I

    move-result v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "CAR.HAL"

    const-string v5, "Thread was interrupted while waiting for vehicle HAL."

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    nop

    .line 353
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return v0
.end method

.method static synthetic lambda$internalGet$1(Lcom/android/car/hal/HalClient$ValueResult;ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p0, "result"    # Lcom/android/car/hal/HalClient$ValueResult;
    .param p1, "status"    # I
    .param p2, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 324
    iput p1, p0, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    .line 325
    iput-object p2, p0, Lcom/android/car/hal/HalClient$ValueResult;->propValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 326
    return-void
.end method

.method public static synthetic lambda$setMultiValues$0(Lcom/android/car/hal/HalClient;IILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 4
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "v"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 208
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mSetPropStatistics:Lcom/android/car/CallbackStatistics;

    iget v1, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    iget-object v2, p0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {v2, p1, p2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V

    .line 211
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 246
    const-string v0, "**dump process call the prop set method count**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mSetPropStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 248
    const-string v0, "**dump process call the prop get method count**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mGetPropStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 250
    return-void
.end method

.method getAllPropConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    invoke-interface {v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Z)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Z)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 17
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p2, "showNoDataLog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 253
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 254
    .local v2, "property":I
    invoke-static {}, Lcom/android/car/CarLog;->isGetLogEnable()Z

    move-result v3

    .line 255
    .local v3, "getLogEnable":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 256
    .local v4, "callingPid":I
    if-eqz v3, :cond_0

    .line 257
    const-string v5, "CAR.HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " try to getValue of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const v5, 0x1540010a

    if-ne v2, v5, :cond_1

    .line 260
    const-string v5, "CAR.HAL"

    const-string v6, "this interface may not Implemented."

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    return-object v1

    .line 264
    :cond_1
    sget-boolean v5, Landroid/os/Build;->IS_USER:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 266
    .local v7, "callingUid":I
    iget-object v8, v0, Lcom/android/car/hal/HalClient;->mGetPropStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v9, v0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v7}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9, v4, v6}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V

    .line 270
    .end local v7    # "callingUid":I
    :cond_2
    new-instance v7, Lcom/android/car/hal/HalClient$ObjectWrapper;

    invoke-direct {v7, v6}, Lcom/android/car/hal/HalClient$ObjectWrapper;-><init>(Lcom/android/car/hal/HalClient$1;)V

    move-object v6, v7

    .line 272
    .local v6, "valueWrapper":Lcom/android/car/hal/HalClient$ObjectWrapper;, "Lcom/android/car/hal/HalClient$ObjectWrapper<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/car/hal/HalClient;->internalGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Lcom/android/car/hal/HalClient$ValueResult;

    move-result-object v7

    .line 273
    .local v7, "res":Lcom/android/car/hal/HalClient$ValueResult;
    iget-object v8, v7, Lcom/android/car/hal/HalClient$ValueResult;->propValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput-object v8, v6, Lcom/android/car/hal/HalClient$ObjectWrapper;->object:Ljava/lang/Object;

    .line 274
    iget v8, v7, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    .line 276
    .local v8, "status":I
    iget v9, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 278
    .local v9, "areaId":I
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v12, v8, :cond_8

    .line 284
    const/4 v14, -0x1

    if-eq v14, v8, :cond_7

    .line 288
    if-eq v13, v8, :cond_6

    .line 297
    const/4 v14, 0x6

    if-eq v14, v8, :cond_5

    .line 304
    iget-object v14, v6, Lcom/android/car/hal/HalClient$ObjectWrapper;->object:Ljava/lang/Object;

    check-cast v14, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 305
    .local v14, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    if-nez v8, :cond_4

    if-eqz v14, :cond_4

    .line 311
    if-eqz v3, :cond_3

    .line 312
    const-string v10, "CAR.HAL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " get value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 312
    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    return-object v14

    .line 306
    :cond_4
    new-instance v15, Ljava/lang/IllegalStateException;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v10, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 307
    const-string v11, "Pid: %d Failed to get property: 0x%x, areaId: 0x%x, code: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 298
    .end local v14    # "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :cond_5
    new-instance v10, Landroid/car/ValueUnavailableException;

    invoke-direct {v10, v13}, Landroid/car/ValueUnavailableException;-><init>(I)V

    .line 299
    .local v10, "e":Landroid/car/ValueUnavailableException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/car/ValueUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 299
    const-string v12, "CAR.HAL"

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    throw v10

    .line 289
    .end local v10    # "e":Landroid/car/ValueUnavailableException;
    :cond_6
    new-instance v10, Landroid/car/ValueUnavailableException;

    invoke-direct {v10, v11}, Landroid/car/ValueUnavailableException;-><init>(I)V

    .line 294
    .restart local v10    # "e":Landroid/car/ValueUnavailableException;
    throw v10

    .line 285
    .end local v10    # "e":Landroid/car/ValueUnavailableException;
    :cond_7
    new-instance v10, Lcom/android/car/hal/PropertyTimeoutException;

    invoke-direct {v10, v2}, Lcom/android/car/hal/PropertyTimeoutException;-><init>(I)V

    throw v10

    .line 279
    :cond_8
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v12

    .line 280
    const-string v11, "Pid:%d Failed to get value for: 0x%x, areaId: 0x%x"

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public setMultiValues(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 196
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-static {}, Lcom/android/car/CarLog;->isSetLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "CAR.HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " call setMultiValues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 199
    .local v1, "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const-string v2, "CAR.HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set PropValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1    # "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_0

    .line 203
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 205
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 206
    .local v1, "callingUid":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 207
    new-instance v2, Lcom/android/car/hal/-$$Lambda$HalClient$_AeC6TbWqeLtrACU7mKyzuWEAbI;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/car/hal/-$$Lambda$HalClient$_AeC6TbWqeLtrACU7mKyzuWEAbI;-><init>(Lcom/android/car/hal/HalClient;II)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 217
    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    :cond_1
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    invoke-interface {v1, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->setMulti(Ljava/util/ArrayList;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .local v1, "status":I
    goto :goto_1

    .line 218
    .end local v1    # "status":I
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Failed to set multiple values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    move v1, v0

    .line 225
    .local v1, "status":I
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v4, v1, :cond_4

    .line 231
    if-eq v0, v1, :cond_3

    .line 235
    if-nez v1, :cond_2

    .line 240
    return-void

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 237
    const-string v2, "Pid:%d Failed to set multi values, code: %d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    new-instance v0, Lcom/android/car/hal/PropertyTimeoutException;

    const/4 v2, -0x2

    invoke-direct {v0, v2}, Lcom/android/car/hal/PropertyTimeoutException;-><init>(I)V

    throw v0

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 227
    const-string v3, "Pid:%d Failed to set multiple values"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 9
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 149
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 150
    .local v0, "property":I
    invoke-static {}, Lcom/android/car/CarLog;->isSetLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setValue for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 153
    invoke-virtual {v3}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const v1, 0x1540010a

    if-ne v0, v1, :cond_1

    .line 157
    const-string v1, "CAR.HAL"

    const-string v2, "this interface may not Implemented."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    return-void

    .line 161
    :cond_1
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 163
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 164
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/car/hal/HalClient;->mSetPropStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v4, p0, Lcom/android/car/hal/HalClient;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/android/car/CallbackStatistics;->addPropMethodCallCount(ILjava/lang/String;ILandroid/os/IBinder;)V

    .line 169
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    :cond_2
    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    invoke-interface {v2, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v2, "status":I
    goto :goto_0

    .line 170
    .end local v2    # "status":I
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Failed to set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v0}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    invoke-virtual {v5}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    move v2, v1

    .line 178
    .local v2, "status":I
    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v6, v2, :cond_5

    .line 184
    if-eq v1, v2, :cond_4

    .line 188
    if-nez v2, :cond_3

    .line 193
    return-void

    .line 189
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    .line 190
    const-string v3, "Pid:%d Failed to set property: 0x%x, areaId: 0x%x, code: %d"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_4
    new-instance v1, Lcom/android/car/hal/PropertyTimeoutException;

    invoke-direct {v1, v0}, Lcom/android/car/hal/PropertyTimeoutException;-><init>(I)V

    throw v1

    .line 179
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 180
    const-string v4, "Pid:%d Failed to set value for: 0x%x, areaId: 0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public start()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 126
    return-void
.end method

.method public varargs subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    .locals 4
    .param p1, "options"    # [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "CAR.HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SubscribeOptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->subscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;Ljava/util/ArrayList;)I

    .line 138
    return-void
.end method

.method public unsubscribe(I)V
    .locals 3
    .param p1, "prop"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "CAR.HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribe Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    invoke-interface {v0, v1, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->unsubscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;I)I

    .line 146
    return-void
.end method
