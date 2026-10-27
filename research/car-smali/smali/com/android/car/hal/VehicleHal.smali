.class public Lcom/android/car/hal/VehicleHal;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/VehicleHal$HalEventHandler;,
        Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;,
        Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;,
        Lcom/android/car/hal/VehicleHal$HalEvent;,
        Lcom/android/car/hal/VehicleHal$Debug;,
        Lcom/android/car/hal/VehicleHal$DebugHandler;
    }
.end annotation


# static fields
.field private static final DATA_DELIMITER:Ljava/lang/String; = ","

.field private static final DBG:Z = false

.field private static final NO_AREA:I = -0x1


# instance fields
.field private final mAllProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDebug:Lcom/android/car/hal/VehicleHal$Debug;

.field mDebugIsRunning:Z

.field private mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

.field private final mDumpServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mHalClient:Lcom/android/car/hal/HalClient;

.field private final mHalEventToDispatch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/car/hal/VehicleHal$HalEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHalServiceToClientListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/car/hal/PropertyHalService;",
            "Ljava/util/ArrayList<",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHalServiceToPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/car/hal/PropertyHalService;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputHal:Lcom/android/car/hal/InputHalService;

.field private final mPidToClientListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPidToHalService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/car/hal/PropertyHalService;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPidToHandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$HalEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mPidToThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerHal:Lcom/android/car/hal/PowerHalService;

.field private final mPropertyHal:Lcom/android/car/hal/PropertyHalService;

.field private final mPropertyHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesToDispatch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/car/hal/HalServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribedProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final mVmsHal:Lcom/android/car/hal/VmsHalService;


# direct methods
.method public constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 7
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 160
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDumpServices:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPidToHandler:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPidToThread:Ljava/util/HashMap;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    .line 509
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    .line 588
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalEventToDispatch:Landroid/util/ArraySet;

    .line 161
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VEHICLE-HAL"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v1, Lcom/android/car/hal/PowerHalService;

    invoke-direct {v1, p0}, Lcom/android/car/hal/PowerHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    .line 166
    new-instance v1, Lcom/android/car/hal/PropertyHalService;

    invoke-direct {v1, p0}, Lcom/android/car/hal/PropertyHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    .line 167
    new-instance v1, Lcom/android/car/hal/InputHalService;

    invoke-direct {v1, p0}, Lcom/android/car/hal/InputHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    .line 168
    new-instance v1, Lcom/android/car/hal/VmsHalService;

    invoke-direct {v1, p0}, Lcom/android/car/hal/VmsHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    .line 169
    new-instance v1, Lcom/android/car/hal/DiagnosticHalService;

    invoke-direct {v1, p0}, Lcom/android/car/hal/DiagnosticHalService;-><init>(Lcom/android/car/hal/VehicleHal;)V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 170
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/android/car/hal/HalServiceBase;

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    const/4 v6, 0x4

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mDumpServices:Ljava/util/ArrayList;

    new-array v2, v5, [Lcom/android/car/hal/HalServiceBase;

    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance v0, Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/car/hal/HalClient;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 180
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0}, Lcom/android/car/hal/HalClient;->start()V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/android/car/hal/PowerHalService;Lcom/android/car/hal/DiagnosticHalService;Lcom/android/car/hal/HalClient;Lcom/android/car/hal/PropertyHalService;)V
    .locals 2
    .param p1, "powerHal"    # Lcom/android/car/hal/PowerHalService;
    .param p2, "diagnosticHal"    # Lcom/android/car/hal/DiagnosticHalService;
    .param p3, "halClient"    # Lcom/android/car/hal/HalClient;
    .param p4, "propertyHal"    # Lcom/android/car/hal/PropertyHalService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 186
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 89
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mDumpServices:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPidToHandler:Ljava/util/HashMap;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mPidToThread:Ljava/util/HashMap;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    .line 509
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    .line 588
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalEventToDispatch:Landroid/util/ArraySet;

    .line 187
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    .line 188
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    .line 189
    iput-object p4, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    .line 190
    iput-object p2, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 191
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    .line 192
    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    .line 193
    iput-object p3, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 194
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0}, Lcom/android/car/hal/HalClient;->start()V

    .line 195
    return-void
.end method

.method private assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I

    .line 292
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 296
    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not owned by service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "propId"    # I
    .param p1, "areaId"    # I

    .line 911
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 912
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iput p0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 913
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 914
    return-object v0
.end method

.method static dumpProperties(Ljava/io/PrintWriter;Ljava/util/Collection;)V
    .locals 6
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)V"
        }
    .end annotation

    .line 504
    .local p1, "configs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 505
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    const-string v2, "property 0x%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method private static dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 887
    const/16 v0, 0x14

    .line 889
    .local v0, "MAX_BYTE_SIZE":I
    iget v1, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 890
    .local v1, "prop":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",timestamp:"

    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",zone:0x"

    .line 893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",floatValues: "

    .line 894
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",int32Values: "

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",int64Values: "

    .line 896
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    .line 897
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 899
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 900
    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 901
    .local v3, "bytes":[Ljava/lang/Object;
    const-string v4, ",bytes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .end local v3    # "bytes":[Ljava/lang/Object;
    goto :goto_0

    .line 903
    :cond_0
    const-string v3, ",bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :goto_0
    const-string v3, ",string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 496
    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    return v1

    .line 498
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 672
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->dump(Ljava/io/PrintWriter;)V

    .line 675
    :cond_0
    const-string v0, "**dump HAL services**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDumpServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    .line 677
    .local v1, "service":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v1, p1}, Lcom/android/car/hal/HalServiceBase;->dump(Ljava/io/PrintWriter;)V

    .line 678
    .end local v1    # "service":Lcom/android/car/hal/HalServiceBase;
    goto :goto_0

    .line 715
    :cond_1
    const-string v0, "**All Events, now ns:%d, %s**"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 715
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 719
    .local v2, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    const-string v3, "event count:%d, lastEvent:%s"

    new-array v6, v1, [Ljava/lang/Object;

    .line 720
    invoke-static {v2}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$300(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$400(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v7

    invoke-static {v7}, Lcom/android/car/hal/VehicleHal;->dumpVehiclePropValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 719
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    .end local v2    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    goto :goto_1

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 755
    .local v1, "property":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    .end local v1    # "property":I
    goto :goto_2

    .line 757
    :cond_3
    return-void
.end method

.method public get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 398
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/car/hal/VehicleHal;->get(IIZ)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public get(IIZ)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "areaId"    # I
    .param p3, "showNoDataLog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 410
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 411
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 412
    iput p2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 413
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, v0, p3}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Z)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    return-object v1
.end method

.method public get(IZ)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "propertyId"    # I
    .param p2, "showNoDataLog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 402
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/car/hal/VehicleHal;->get(IIZ)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 417
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "propertyId"    # I
    .param p3, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 421
    invoke-static {p2, p3}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/car/hal/VehicleHal;->get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Ljava/lang/Object;
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p2}, Lcom/android/car/hal/HalClient;->getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 430
    .local v0, "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_c

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    goto/16 :goto_2

    .line 432
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    goto/16 :goto_1

    .line 434
    :cond_1
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_9

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 436
    :cond_2
    const-class v1, [Ljava/lang/Integer;

    if-ne p1, v1, :cond_3

    .line 437
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 438
    .local v1, "intArray":[Ljava/lang/Integer;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 439
    .end local v1    # "intArray":[Ljava/lang/Integer;
    :cond_3
    const-class v1, [Ljava/lang/Float;

    if-ne p1, v1, :cond_4

    .line 440
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Float;

    .line 441
    .local v1, "floatArray":[Ljava/lang/Float;
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 442
    .end local v1    # "floatArray":[Ljava/lang/Float;
    :cond_4
    const-class v1, [I

    if-ne p1, v1, :cond_5

    .line 443
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toIntArray(Ljava/util/List;)[I

    move-result-object v1

    return-object v1

    .line 444
    :cond_5
    const-class v1, [F

    if-ne p1, v1, :cond_6

    .line 445
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toFloatArray(Ljava/util/List;)[F

    move-result-object v1

    return-object v1

    .line 446
    :cond_6
    const-class v1, [B

    if-ne p1, v1, :cond_7

    .line 447
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v1

    return-object v1

    .line 448
    :cond_7
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_8

    .line 449
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    return-object v1

    .line 451
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_9
    :goto_0
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 433
    :cond_a
    :goto_1
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    move v2, v3

    nop

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 431
    :cond_c
    :goto_2
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAllPropConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    return-object v0
.end method

.method public getInputHal()Lcom/android/car/hal/InputHalService;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mInputHal:Lcom/android/car/hal/InputHalService;

    return-object v0
.end method

.method public getPowerHal()Lcom/android/car/hal/PowerHalService;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPowerHal:Lcom/android/car/hal/PowerHalService;

    return-object v0
.end method

.method public getPropertyHal()Lcom/android/car/hal/PropertyHalService;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHal:Lcom/android/car/hal/PropertyHalService;

    return-object v0
.end method

.method public getSampleRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 468
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    .line 469
    .local v0, "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    if-nez v0, :cond_0

    .line 471
    const/high16 v1, -0x31000000

    return v1

    .line 473
    :cond_0
    iget v1, v0, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->sampleRate:F

    return v1
.end method

.method public getVmsHal()Lcom/android/car/hal/VmsHalService;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mVmsHal:Lcom/android/car/hal/VmsHalService;

    return-object v0
.end method

.method public init()V
    .locals 8

    .line 224
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1}, Lcom/android/car/hal/HalClient;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    nop

    .line 226
    nop

    .line 229
    monitor-enter p0

    .line 231
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 232
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 234
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/HalServiceBase;

    .line 237
    .local v2, "service":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v2, v0}, Lcom/android/car/hal/HalServiceBase;->takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 238
    .local v3, "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    if-nez v3, :cond_1

    .line 239
    goto :goto_1

    .line 241
    :cond_1
    invoke-static {}, Lcom/android/car/CarLog;->isGetLogEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    const-string v4, "CAR.HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HalService "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " take properties "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    monitor-enter p0

    .line 245
    :try_start_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 246
    .local v5, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    iget v7, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 247
    .end local v5    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_2

    .line 248
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual {v2}, Lcom/android/car/hal/HalServiceBase;->init()V

    .line 251
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    goto :goto_1

    .line 248
    .restart local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .restart local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 252
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "taken":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :cond_4
    return-void

    .line 234
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 225
    .end local v0    # "properties":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to retrieve vehicle property configuration"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public injectVhalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "zone"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 768
    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 771
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 772
    .local v0, "propId":I
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 773
    .local v1, "zoneId":I
    invoke-static {v0, v1}, Lcom/android/car/hal/VehicleHal;->createPropValue(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 774
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const/high16 v3, 0xff0000

    and-int/2addr v3, v0

    .line 776
    .local v3, "propertyType":I
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 777
    .local v4, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v5, 0x200000

    if-eq v3, v5, :cond_7

    const/high16 v5, 0x400000

    if-eq v3, v5, :cond_5

    const/high16 v5, 0x410000

    if-eq v3, v5, :cond_5

    const/high16 v5, 0x600000

    if-eq v3, v5, :cond_3

    const/high16 v5, 0x610000

    if-eq v3, v5, :cond_3

    const/high16 v5, 0x700000

    if-eq v3, v5, :cond_1

    .line 801
    const-string v5, "CAR.HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property type unsupported:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void

    .line 795
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 796
    .local v6, "s":Ljava/lang/String;
    const-string v7, "CAR.HAL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byte:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_0

    .line 799
    :cond_2
    goto :goto_3

    .line 790
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 791
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 793
    :cond_4
    goto :goto_3

    .line 784
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 785
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v7, v7, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_2

    .line 787
    :cond_6
    goto :goto_3

    .line 779
    :cond_7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 780
    .local v5, "boolValue":Z
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    nop

    .line 804
    .end local v5    # "boolValue":Z
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 808
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/car/hal/VehicleHal;->onPropertyEvent(Ljava/util/ArrayList;)V

    .line 810
    return-void

    .line 769
    .end local v0    # "propId":I
    .end local v1    # "zoneId":I
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "propertyType":I
    .end local v4    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_4
    return-void
.end method

.method public isPropertySupported(I)Z
    .locals 2
    .param p1, "propertyId"    # I

    .line 390
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPropertyEvent(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 519
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 520
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 521
    .local v2, "prop":I
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/hal/HalServiceBase;

    .line 523
    .local v3, "service":Lcom/android/car/hal/HalServiceBase;
    if-nez v3, :cond_0

    .line 524
    const-string v4, "CAR.HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HalService not found for prop: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v3}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 531
    .local v4, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    if-nez v4, :cond_1

    .line 532
    new-instance v5, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/VehicleHal$1;)V

    move-object v4, v5

    .line 533
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 535
    :cond_1
    invoke-static {v4, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$200(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 537
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "prop":I
    .end local v3    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v4    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    :goto_1
    goto :goto_0

    .line 538
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-boolean v0, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VehicleHal$Debug;->sendMsg(Ljava/util/HashMap;)V

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    .line 543
    .local v1, "s":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/hal/HalServiceBase;->handleHalEvents(Ljava/util/List;)V

    .line 544
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 545
    .end local v1    # "s":Lcom/android/car/hal/HalServiceBase;
    goto :goto_2

    .line 547
    :cond_4
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 548
    return-void

    .line 538
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPropertyEventXp(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 593
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/hal/HalServiceBase;

    .line 594
    .local v2, "service":Lcom/android/car/hal/HalServiceBase;
    if-nez v2, :cond_0

    .line 595
    const-string v3, "CAR.HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HalService not found for prop: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 596
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v2}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 601
    .local v3, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    if-nez v3, :cond_1

    .line 602
    new-instance v4, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/VehicleHal$1;)V

    move-object v3, v4

    .line 603
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mEventLog:Ljava/util/HashMap;

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 605
    :cond_1
    invoke-static {v3, v1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->access$200(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 607
    :goto_1
    instance-of v4, v2, Lcom/android/car/hal/PropertyHalService;

    if-nez v4, :cond_2

    .line 608
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 609
    goto :goto_0

    .line 613
    :cond_2
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 614
    .local v4, "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v4, :cond_3

    .line 615
    const-string v5, "CAR.HAL"

    const-string v6, "onPropertyEventXp get pid info error!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    goto :goto_0

    .line 618
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 619
    .local v6, "p":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 620
    .local v7, "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    if-nez v7, :cond_4

    .line 621
    const-string v8, "CAR.HAL"

    const-string v9, "onPropertyEventXp get listener info error!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    goto :goto_2

    .line 624
    :cond_4
    new-instance v8, Lcom/android/car/hal/VehicleHal$HalEvent;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/car/hal/VehicleHal;->mPidToHandler:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/car/hal/VehicleHal$HalEventHandler;

    invoke-direct {v8, p0, v9, v7, v10}, Lcom/android/car/hal/VehicleHal$HalEvent;-><init>(Lcom/android/car/hal/VehicleHal;ILjava/util/ArrayList;Lcom/android/car/hal/VehicleHal$HalEventHandler;)V

    .line 626
    .local v8, "halEvent":Lcom/android/car/hal/VehicleHal$HalEvent;
    move-object v9, v2

    check-cast v9, Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v9, v1}, Lcom/android/car/hal/PropertyHalService;->convertHalEventToCarEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v9

    .line 627
    .local v9, "event":Landroid/car/hardware/property/CarPropertyEvent;
    if-nez v9, :cond_5

    .line 628
    const-string v10, "CAR.HAL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prop not support:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    goto :goto_2

    .line 631
    :cond_5
    invoke-virtual {v8, v9}, Lcom/android/car/hal/VehicleHal$HalEvent;->addProp(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 632
    iget-object v10, p0, Lcom/android/car/hal/VehicleHal;->mHalEventToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v6    # "p":Ljava/lang/Integer;
    .end local v7    # "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    .end local v8    # "halEvent":Lcom/android/car/hal/VehicleHal$HalEvent;
    .end local v9    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_2

    .line 636
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "service":Lcom/android/car/hal/HalServiceBase;
    .end local v3    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    .end local v4    # "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    goto/16 :goto_0

    .line 637
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalEventToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/VehicleHal$HalEvent;

    .line 639
    .local v1, "event":Lcom/android/car/hal/VehicleHal$HalEvent;
    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal$HalEvent;->handleHalEvent()V

    .line 640
    .end local v1    # "event":Lcom/android/car/hal/VehicleHal$HalEvent;
    goto :goto_3

    .line 641
    :cond_8
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalEventToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 642
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    .line 643
    .local v1, "s":Lcom/android/car/hal/HalServiceBase;
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/hal/HalServiceBase;->handleHalEvents(Ljava/util/List;)V

    .line 644
    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->getDispatchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 645
    .end local v1    # "s":Lcom/android/car/hal/HalServiceBase;
    goto :goto_4

    .line 646
    :cond_9
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mServicesToDispatch:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 648
    return-void

    .line 637
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 655
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 659
    invoke-static {p2}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "CAR.HAL"

    const-string v1, "onPropertySetError, errorCode: %d, prop: 0x%x, area: 0x%x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 660
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    if-eqz p2, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPropertyHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/hal/HalServiceBase;

    .line 665
    .local v0, "service":Lcom/android/car/hal/HalServiceBase;
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v0, p2, p1}, Lcom/android/car/hal/HalServiceBase;->handlePropertySetError(II)V

    .line 669
    .end local v0    # "service":Lcom/android/car/hal/HalServiceBase;
    :cond_1
    return-void
.end method

.method public registerClientInfo(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)I
    .locals 10
    .param p1, "pid"    # I
    .param p2, "halService"    # Lcom/android/car/hal/PropertyHalService;
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 941
    const-string v0, "CAR.HAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " registerClientInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    monitor-enter p0

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 944
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v2, "hs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    new-instance v3, Landroid/os/HandlerThread;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 949
    .local v3, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 950
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mPidToThread:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    new-instance v4, Lcom/android/car/hal/VehicleHal$HalEventHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/car/hal/VehicleHal$HalEventHandler;-><init>(Lcom/android/car/hal/VehicleHal;Landroid/os/Looper;)V

    .line 952
    .local v4, "handler":Lcom/android/car/hal/VehicleHal$HalEventHandler;
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPidToHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v5, "lisenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v6, "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v7, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v7, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v7, "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v8, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .end local v2    # "hs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    .end local v3    # "thr":Landroid/os/HandlerThread;
    .end local v4    # "handler":Lcom/android/car/hal/VehicleHal$HalEventHandler;
    .end local v5    # "lisenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    .end local v6    # "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    goto/16 :goto_6

    .line 963
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 964
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_4

    .line 965
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    .line 966
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 967
    .local v3, "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    if-nez v3, :cond_1

    .line 968
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v4, "la":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .end local v4    # "la":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    goto :goto_2

    .line 972
    :cond_1
    move v4, v1

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 973
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p3, :cond_2

    .line 974
    const-string v1, "CAR.HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has registe this listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 972
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 978
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .end local v3    # "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .line 984
    .local v2, "found":Z
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 985
    .local v3, "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_6

    .line 986
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v4, "pa":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    .end local v4    # "pa":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_5

    .line 990
    :cond_6
    move v4, v1

    .local v4, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 991
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_7

    .line 992
    const-string v5, "CAR.HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pid is in the record:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v2, 0x1

    .line 994
    goto :goto_4

    .line 990
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 997
    .end local v4    # "i":I
    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_9
    :goto_5
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1003
    .local v4, "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    if-nez v4, :cond_a

    .line 1004
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v5, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .end local v5    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    goto :goto_6

    .line 1008
    :cond_a
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .end local v0    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    .end local v2    # "found":Z
    .end local v3    # "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    const-string v0, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " registerClientInfo sucess."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v1

    .line 1012
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mAllServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/HalServiceBase;

    invoke-virtual {v1}, Lcom/android/car/hal/HalServiceBase;->release()V

    .line 256
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_0
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v1, "p":I
    :try_start_1
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v2, v1}, Lcom/android/car/hal/HalClient;->unsubscribe(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    goto :goto_2

    .line 263
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.HAL"

    const-string v4, "Failed to unsubscribe"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v1    # "p":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 269
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal$Debug;->stop()V

    .line 273
    return-void

    .line 270
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method set(I)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;
    .locals 7
    .param p1, "propId"    # I

    .line 487
    new-instance v6, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;-><init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;IILcom/android/car/hal/VehicleHal$1;)V

    return-object v6
.end method

.method set(II)Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;
    .locals 7
    .param p1, "propId"    # I
    .param p2, "areaId"    # I

    .line 492
    new-instance v6, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;

    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;-><init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;IILcom/android/car/hal/VehicleHal$1;)V

    return-object v6
.end method

.method set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->setValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 479
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal;->mContext:Landroid/content/Context;

    .line 199
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->setContext(Landroid/content/Context;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1085
    monitor-enter p0

    .line 1086
    if-eqz p1, :cond_2

    .line 1087
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    if-nez v0, :cond_1

    .line 1088
    const-string v0, "CAR.HAL"

    const-string v1, "Start CarService hal Debug thread"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    if-nez v0, :cond_0

    .line 1090
    new-instance v0, Lcom/android/car/hal/VehicleHal$Debug;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/car/hal/VehicleHal$Debug;-><init>(Lcom/android/car/hal/VehicleHal;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal$Debug;->start()V

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    goto :goto_0

    .line 1095
    :cond_1
    const-string v0, "CAR.HAL"

    const-string v1, "Debug thread already running"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    if-eqz v0, :cond_3

    .line 1099
    const-string v0, "CAR.HAL"

    const-string v1, "Stop CarService hal Debug thread"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/VehicleHal;->mDebugIsRunning:Z

    .line 1101
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mDebug:Lcom/android/car/hal/VehicleHal$Debug;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal$Debug;->stop()V

    .line 1104
    :cond_3
    :goto_0
    monitor-exit p0

    .line 1105
    return-void

    .line 1104
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setMultiProperties(Ljava/util/ArrayList;)V
    .locals 1
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

    .line 482
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/HalClient;->setMultiValues(Ljava/util/ArrayList;)V

    .line 483
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V

    .line 306
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .param p3, "sampleRateHz"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V

    .line 316
    return-void
.end method

.method public subscribeProperty(Lcom/android/car/hal/HalServiceBase;IFI)V
    .locals 5
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I
    .param p3, "samplingRateHz"    # F
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 336
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    if-eqz v0, :cond_1

    .line 341
    invoke-static {v0}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    invoke-direct {v1}, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;-><init>()V

    .line 343
    .local v1, "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    iput p2, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    .line 344
    iput p3, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->sampleRate:F

    .line 345
    iput p4, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->flags:I

    .line 346
    monitor-enter p0

    .line 347
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/hal/VehicleHal;->assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V

    .line 348
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :try_start_2
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/car/hal/HalClient;->subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    nop

    .line 356
    .end local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    goto :goto_0

    .line 352
    .restart local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to subscribe to property: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.HAL"

    invoke-static {v4, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    new-instance v3, Landroid/util/AndroidRuntimeException;

    invoke-direct {v3, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 349
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 357
    .end local v1    # "opts":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :cond_0
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot subscribe to property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 339
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribe error: config is null for property 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public unregisterClientInfo(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 9
    .param p1, "pid"    # I
    .param p2, "halService"    # Lcom/android/car/hal/PropertyHalService;
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "handler":Lcom/android/car/hal/VehicleHal$HalEventHandler;
    const/4 v1, 0x0

    .line 1021
    .local v1, "thread":Landroid/os/HandlerThread;
    const-string v2, "CAR.HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unregisterClientInfo from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    monitor-enter p0

    .line 1023
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1024
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    if-nez v2, :cond_0

    .line 1025
    const-string v3, "CAR.HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    monitor-exit p0

    return-void

    .line 1028
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1029
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 1030
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1031
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1032
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPidToHalService:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPidToHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/hal/VehicleHal$HalEventHandler;

    move-object v0, v5

    .line 1034
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mPidToThread:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/HandlerThread;

    move-object v1, v5

    .line 1035
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_1

    .line 1028
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1041
    .end local v4    # "i":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    .line 1042
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1043
    .local v4, "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    if-eqz v4, :cond_4

    .line 1044
    move v5, v3

    .local v5, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1045
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p3, :cond_3

    .line 1046
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1047
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1048
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToClientListener:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1044
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1054
    .end local v5    # "i":I
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1055
    .local v5, "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_6

    .line 1056
    move v6, v3

    .local v6, "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1057
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 1058
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1059
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 1060
    iget-object v7, p0, Lcom/android/car/hal/VehicleHal;->mHalServiceToPid:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    goto :goto_5

    .line 1056
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1066
    .end local v6    # "i":I
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    .line 1067
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1068
    .local v6, "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    if-eqz v6, :cond_8

    .line 1069
    nop

    .local v3, "i":I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 1070
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p3, :cond_7

    .line 1071
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1072
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_8

    .line 1073
    iget-object v7, p0, Lcom/android/car/hal/VehicleHal;->mPidToClientListener:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1069
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1080
    .end local v2    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/car/hal/PropertyHalService;>;"
    .end local v3    # "i":I
    .end local v4    # "listenerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    .end local v5    # "pidArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "lisenerArray4Pid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    :cond_8
    :goto_7
    monitor-exit p0

    .line 1082
    return-void

    .line 1080
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V
    .locals 5
    .param p1, "service"    # Lcom/android/car/hal/HalServiceBase;
    .param p2, "property"    # I

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mAllProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 369
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    if-nez v0, :cond_0

    .line 372
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsubscribeProperty: property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 373
    :cond_0
    invoke-static {v0}, Lcom/android/car/hal/VehicleHal;->isPropertySubscribable(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/hal/VehicleHal;->assertServiceOwnerLocked(Lcom/android/car/hal/HalServiceBase;I)V

    .line 376
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :try_start_2
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, p2}, Lcom/android/car/hal/HalClient;->unsubscribe(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unsubscribe from property: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 377
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 385
    :cond_1
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot unsubscribe property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_1
    return-void

    .line 369
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 5
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0}, Lcom/android/car/hal/HalClient;->stop()V

    .line 206
    new-instance v0, Lcom/android/car/hal/HalClient;

    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/car/hal/HalClient;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    .line 208
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v0}, Lcom/android/car/hal/HalClient;->start()V

    .line 209
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal;->mSubscribedProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .local v0, "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_start_1
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal;->mHalClient:Lcom/android/car/hal/HalClient;

    invoke-virtual {v1, v0}, Lcom/android/car/hal/HalClient;->subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    nop

    .line 218
    .end local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :try_start_2
    monitor-exit p0

    .line 219
    return-void

    .line 214
    .restart local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.HAL"

    const-string v3, "Failed to subscribe when re-connecting VHAL"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to subscribe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 218
    .end local v0    # "options":[Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
