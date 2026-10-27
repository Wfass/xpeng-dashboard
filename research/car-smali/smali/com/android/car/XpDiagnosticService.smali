.class Lcom/android/car/XpDiagnosticService;
.super Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;
.source "XpDiagnosticService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/XpDiagnosticService$DiagHandler;,
        Lcom/android/car/XpDiagnosticService$Client;,
        Lcom/android/car/XpDiagnosticService$PropertyId;
    }
.end annotation


# static fields
.field private static final CAR_SERVICE_DEBUG_ENABLE:I = 0x1

.field private static final CHECK_ICM_TBOX_CONNECTED_INTERVAL:Ljava/time/Duration;

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "XpDiagnosticService"

.field private static final WAIT_ECUS_DIAGNOSTIC_DATA_TIMEOUT_MS:I = 0x1770


# instance fields
.field private final mAfterSalesIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackStatistics:Lcom/android/car/CallbackStatistics;

.field private final mCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/car/hardware/property/ICarPropertyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckConnectedStateRunnable:Ljava/lang/Runnable;

.field private final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/XpDiagnosticService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiagPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

.field private final mEcusDataLock:Ljava/lang/Object;

.field private volatile mEcusDiagDataValid:Z

.field private final mEcusFailureStatePropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

.field private mEcusIntDataConsumerMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEcusDataLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/IntConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private mEcusIntDataMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEcusDataLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEcusDataLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/Consumer<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private mEcusIntVectorDataMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEcusDataLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIcmConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLock:Ljava/lang/Object;

.field private final mMcuDiagPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyPid:I

.field private final mPropIdClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/car/XpDiagnosticService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPropertyService:Lcom/android/car/CarPropertyService;

.field private mReportEcusDiagRunnable:Ljava/lang/Runnable;

.field private mSupportedAfterSalesPropConfigs:Ljava/util/Map;
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

.field private mSupportedCheckedPropConfigs:Ljava/util/Map;
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

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private mSystemDiagContent:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mTboxConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/car/XpDiagnosticService;->CHECK_ICM_TBOX_CONNECTED_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/hal/VehicleHal;)V
    .locals 21
    .param p1, "service"    # Lcom/android/car/CarPropertyService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p4, "hal"    # Lcom/android/car/hal/VehicleHal;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 424
    invoke-direct/range {p0 .. p0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;-><init>()V

    .line 179
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mCallbacks:Landroid/util/ArraySet;

    .line 183
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    .line 184
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    .line 186
    new-instance v2, Landroid/util/ArraySet;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/Integer;

    .line 187
    const v5, 0x21701404

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 188
    const v6, 0x21701405

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    .line 189
    const v8, 0x21701410

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v4, v11

    .line 190
    const v10, 0x21701411

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v4, v13

    .line 191
    const v12, 0x21701412

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v4, v15

    .line 192
    const v14, 0x21701413

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x5

    aput-object v14, v4, v16

    .line 193
    const v14, 0x21701414

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x6

    aput-object v14, v4, v17

    .line 194
    const v14, 0x2170143a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x7

    aput-object v14, v4, v18

    .line 187
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mMcuDiagPropertyIds:Landroid/util/ArraySet;

    .line 195
    new-instance v2, Landroid/util/ArraySet;

    new-array v4, v11, [Ljava/lang/Integer;

    const v14, 0x2140160e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v7

    .line 196
    const v14, 0x2140100f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v9

    .line 195
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mAfterSalesIds:Landroid/util/ArraySet;

    .line 197
    new-instance v2, Landroid/util/ArraySet;

    const/16 v4, 0x4e

    new-array v4, v4, [Ljava/lang/Integer;

    .line 198
    const v14, 0x21401c86

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v7

    .line 199
    const v14, 0x21401c87

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v9

    .line 200
    const v14, 0x21401c88

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v11

    .line 201
    const v14, 0x21401c89

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    .line 202
    const v14, 0x21401c8a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v15

    .line 203
    const v14, 0x21401c8b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v16

    .line 204
    const v14, 0x21401c8c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v17

    .line 205
    const v14, 0x21401c8d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v18

    .line 206
    const v14, 0x21401c8e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v3

    .line 207
    const v14, 0x21402e16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x9

    aput-object v14, v4, v19

    .line 208
    const v14, 0x2140180b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xa

    aput-object v14, v4, v19

    .line 209
    const v14, 0x21401c8f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xb

    aput-object v14, v4, v19

    .line 210
    const v14, 0x21401c90

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xc

    aput-object v14, v4, v19

    .line 211
    const v14, 0x21401c91

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xd

    aput-object v14, v4, v19

    .line 212
    const v14, 0x21401c92

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xe

    aput-object v14, v4, v19

    .line 213
    const v14, 0x21401c93

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0xf

    aput-object v14, v4, v19

    .line 214
    const v14, 0x2140320f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x10

    aput-object v14, v4, v19

    .line 215
    const v14, 0x21401e06

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x11

    aput-object v14, v4, v19

    .line 216
    const v14, 0x21401e07

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x12

    aput-object v14, v4, v19

    .line 217
    const v14, 0x21401c12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x13

    aput-object v14, v4, v19

    .line 218
    const v14, 0x2140180c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x14

    aput-object v14, v4, v19

    .line 219
    const v14, 0x21401c94

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x15

    aput-object v14, v4, v19

    .line 220
    const v14, 0x21401231

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x16

    aput-object v14, v4, v19

    .line 221
    const v14, 0x21401232

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x17

    aput-object v14, v4, v19

    .line 222
    const v14, 0x21401233

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x18

    aput-object v14, v4, v19

    .line 223
    const v14, 0x21401234

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x19

    aput-object v14, v4, v19

    .line 224
    const v14, 0x21401235

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1a

    aput-object v14, v4, v19

    .line 225
    const v14, 0x21401236

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1b

    aput-object v14, v4, v19

    .line 226
    const v14, 0x21401237

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1c

    aput-object v14, v4, v19

    .line 227
    const v14, 0x21401238

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1d

    aput-object v14, v4, v19

    .line 228
    const v14, 0x21401239

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1e

    aput-object v14, v4, v19

    .line 229
    const v14, 0x2140123a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x1f

    aput-object v14, v4, v19

    .line 230
    const v14, 0x2140123b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x20

    aput-object v14, v4, v19

    .line 231
    const v14, 0x2140123f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x21

    aput-object v14, v4, v19

    .line 232
    const v14, 0x21401240

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x22

    aput-object v14, v4, v19

    .line 233
    const v14, 0x21402409

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x23

    aput-object v14, v4, v19

    .line 234
    const v14, 0x2140240e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x24

    aput-object v14, v4, v19

    .line 235
    const v14, 0x2140240f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x25

    aput-object v14, v4, v19

    .line 236
    const v14, 0x2140240b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x26

    aput-object v14, v4, v19

    .line 237
    const v14, 0x21402411

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x27

    aput-object v14, v4, v19

    .line 238
    const v14, 0x2140240d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x28

    aput-object v14, v4, v19

    .line 239
    const v14, 0x21402678

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x29

    aput-object v14, v4, v19

    .line 240
    const v14, 0x21402679

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2a

    aput-object v14, v4, v19

    .line 241
    const v14, 0x21402603

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2b

    aput-object v14, v4, v19

    .line 242
    const v14, 0x21402605

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2c

    aput-object v14, v4, v19

    .line 243
    const v14, 0x21402608

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2d

    aput-object v14, v4, v19

    .line 244
    const v14, 0x21402606

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2e

    aput-object v14, v4, v19

    .line 245
    const v14, 0x21402607

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x2f

    aput-object v14, v4, v19

    .line 246
    const v14, 0x21402674

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x30

    aput-object v14, v4, v19

    .line 247
    const v14, 0x21402675

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x31

    aput-object v14, v4, v19

    .line 248
    const v14, 0x21402676

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x32

    aput-object v14, v4, v19

    .line 249
    const v14, 0x21402677

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x33

    aput-object v14, v4, v19

    .line 250
    const v14, 0x21402627

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x34

    aput-object v14, v4, v19

    .line 251
    const v14, 0x2140260d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x35

    aput-object v14, v4, v19

    .line 252
    const v14, 0x21402672

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x36

    aput-object v14, v4, v19

    .line 253
    const v14, 0x21402673

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x37

    aput-object v14, v4, v19

    .line 254
    const v14, 0x2140240c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x38

    aput-object v14, v4, v19

    .line 255
    const v14, 0x2140240a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x39

    aput-object v14, v4, v19

    .line 256
    const v14, 0x21411e0e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3a

    aput-object v14, v4, v19

    .line 257
    const v14, 0x21411e10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3b

    aput-object v14, v4, v19

    .line 258
    const v14, 0x21401241

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3c

    aput-object v14, v4, v19

    .line 259
    const v14, 0x21401242

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3d

    aput-object v14, v4, v19

    .line 260
    const v14, 0x21401243

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3e

    aput-object v14, v4, v19

    .line 261
    const v14, 0x21401245

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x3f

    aput-object v14, v4, v19

    .line 262
    const v14, 0x21401246

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v3, 0x40

    aput-object v14, v4, v3

    .line 263
    const v14, 0x21401247

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x41

    aput-object v14, v4, v19

    .line 264
    const v14, 0x21401248

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x42

    aput-object v14, v4, v19

    .line 265
    const v14, 0x21401249

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x43

    aput-object v14, v4, v19

    .line 266
    const v14, 0x2141124a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x44

    aput-object v14, v4, v19

    .line 267
    const v14, 0x21411c96

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x45

    aput-object v14, v4, v19

    .line 268
    const v14, 0x21402818

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x46

    aput-object v14, v4, v19

    .line 269
    const v14, 0x21402803

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x47

    aput-object v14, v4, v19

    .line 270
    const v14, 0x21402602

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x48

    aput-object v14, v4, v19

    .line 271
    const v14, 0x21402601

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x49

    aput-object v14, v4, v19

    .line 272
    const v14, 0x2140262a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x4a

    aput-object v14, v4, v19

    .line 273
    const v14, 0x21401a2e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x4b

    aput-object v14, v4, v19

    .line 274
    const v14, 0x21411a2f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x4c

    aput-object v14, v4, v19

    .line 275
    const v14, 0x2141124b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v19, 0x4d

    aput-object v14, v4, v19

    .line 198
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStatePropertyIds:Landroid/util/ArraySet;

    .line 276
    new-instance v2, Landroid/util/ArraySet;

    const/16 v4, 0x59

    new-array v4, v4, [Ljava/lang/Integer;

    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 278
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 280
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    .line 281
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    .line 282
    const v5, 0x21701413

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    .line 283
    const v5, 0x21701414

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    .line 284
    const v5, 0x2170143a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    .line 285
    const v5, 0x21401c86

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 286
    const v5, 0x21401c87

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 287
    const v5, 0x21401c88

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v4, v6

    .line 288
    const v5, 0x21401c89

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xb

    aput-object v5, v4, v6

    .line 289
    const v5, 0x21401c8a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    aput-object v5, v4, v6

    .line 290
    const v5, 0x21401c8b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xd

    aput-object v5, v4, v6

    .line 291
    const v5, 0x21401c8c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    aput-object v5, v4, v6

    .line 292
    const v5, 0x21401c8d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v4, v6

    .line 293
    const v5, 0x21401c8e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x10

    aput-object v5, v4, v6

    .line 294
    const v5, 0x21402e16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x11

    aput-object v5, v4, v6

    .line 295
    const v5, 0x2140180b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x12

    aput-object v5, v4, v6

    .line 296
    const v5, 0x21401c8f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x13

    aput-object v5, v4, v6

    .line 297
    const v5, 0x21401c90

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x14

    aput-object v5, v4, v6

    .line 298
    const v5, 0x21401c91

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x15

    aput-object v5, v4, v6

    .line 299
    const v5, 0x21401c92

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x16

    aput-object v5, v4, v6

    .line 300
    const v5, 0x21401c93

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x17

    aput-object v5, v4, v6

    .line 301
    const v5, 0x2140320f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x18

    aput-object v5, v4, v6

    .line 302
    const v5, 0x21401e06

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x19

    aput-object v5, v4, v6

    .line 303
    const v5, 0x21401e07

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1a

    aput-object v5, v4, v6

    .line 304
    const v5, 0x21401c12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1b

    aput-object v5, v4, v6

    .line 305
    const v5, 0x2140180c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1c

    aput-object v5, v4, v6

    .line 306
    const v5, 0x21401c94

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1d

    aput-object v5, v4, v6

    .line 307
    const v5, 0x21401231

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e

    aput-object v5, v4, v6

    .line 308
    const v5, 0x21401232

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1f

    aput-object v5, v4, v6

    .line 309
    const v5, 0x21401233

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x20

    aput-object v5, v4, v6

    .line 310
    const v5, 0x21401234

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x21

    aput-object v5, v4, v6

    .line 311
    const v5, 0x21401235

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x22

    aput-object v5, v4, v6

    .line 312
    const v5, 0x21401236

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x23

    aput-object v5, v4, v6

    .line 313
    const v5, 0x21401237

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x24

    aput-object v5, v4, v6

    .line 314
    const v5, 0x21401238

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x25

    aput-object v5, v4, v6

    .line 315
    const v5, 0x21401239

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x26

    aput-object v5, v4, v6

    .line 316
    const v5, 0x2140123a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x27

    aput-object v5, v4, v6

    .line 317
    const v5, 0x2140123b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x28

    aput-object v5, v4, v6

    .line 318
    const v5, 0x2140123f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x29

    aput-object v5, v4, v6

    .line 319
    const v5, 0x21401240

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2a

    aput-object v5, v4, v6

    .line 320
    const v5, 0x21402409

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2b

    aput-object v5, v4, v6

    .line 321
    const v5, 0x2140240e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2c

    aput-object v5, v4, v6

    .line 322
    const v5, 0x2140240f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2d

    aput-object v5, v4, v6

    .line 323
    const v5, 0x2140240b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2e

    aput-object v5, v4, v6

    .line 324
    const v5, 0x21402411

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2f

    aput-object v5, v4, v6

    .line 325
    const v5, 0x2140240d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x30

    aput-object v5, v4, v6

    .line 326
    const v5, 0x21402678

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x31

    aput-object v5, v4, v6

    .line 327
    const v5, 0x21402679

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x32

    aput-object v5, v4, v6

    .line 328
    const v5, 0x21402603

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x33

    aput-object v5, v4, v6

    .line 329
    const v5, 0x21402605

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x34

    aput-object v5, v4, v6

    .line 330
    const v5, 0x21402608

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x35

    aput-object v5, v4, v6

    .line 331
    const v5, 0x21402606

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x36

    aput-object v5, v4, v6

    .line 332
    const v5, 0x21402607

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x37

    aput-object v5, v4, v6

    .line 333
    const v5, 0x21402674

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x38

    aput-object v5, v4, v6

    .line 334
    const v5, 0x21402675

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x39

    aput-object v5, v4, v6

    .line 335
    const v5, 0x21402676

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a

    aput-object v5, v4, v6

    .line 336
    const v5, 0x21402677

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3b

    aput-object v5, v4, v6

    .line 337
    const v5, 0x21402627

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3c

    aput-object v5, v4, v6

    .line 338
    const v5, 0x2140260d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3d

    aput-object v5, v4, v6

    .line 339
    const v5, 0x21402672

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3e

    aput-object v5, v4, v6

    .line 340
    const v5, 0x21402673

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3f

    aput-object v5, v4, v6

    .line 341
    const v5, 0x2140123e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 342
    const v5, 0x2140240c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x41

    aput-object v5, v4, v6

    .line 343
    const v5, 0x2140240a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x42

    aput-object v5, v4, v6

    .line 344
    const v5, 0x21411e0e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x43

    aput-object v5, v4, v6

    .line 345
    const v5, 0x21411e10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x44

    aput-object v5, v4, v6

    .line 346
    const v5, 0x21401241

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x45

    aput-object v5, v4, v6

    .line 347
    const v5, 0x21401242

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x46

    aput-object v5, v4, v6

    .line 348
    const v5, 0x21401243

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x47

    aput-object v5, v4, v6

    .line 349
    const v5, 0x21401245

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x48

    aput-object v5, v4, v6

    .line 350
    const v5, 0x21401246

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x49

    aput-object v5, v4, v6

    .line 351
    const v5, 0x21401247

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4a

    aput-object v5, v4, v6

    .line 352
    const v5, 0x21401248

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4b

    aput-object v5, v4, v6

    .line 353
    const v5, 0x21401249

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4c

    aput-object v5, v4, v6

    .line 354
    const v5, 0x2141124a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4d

    aput-object v5, v4, v6

    .line 355
    const v5, 0x21411c96

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4e

    aput-object v5, v4, v6

    .line 356
    const v5, 0x21402818

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x4f

    aput-object v5, v4, v6

    .line 357
    const v5, 0x21402803

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x50

    aput-object v5, v4, v6

    .line 358
    const v5, 0x21402602

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x51

    aput-object v5, v4, v6

    .line 359
    const v5, 0x21402601

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x52

    aput-object v5, v4, v6

    .line 360
    const v5, 0x2140262a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x53

    aput-object v5, v4, v6

    .line 361
    const v5, 0x21401a2e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x54

    aput-object v5, v4, v6

    .line 362
    const v5, 0x21411a2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x55

    aput-object v5, v4, v6

    .line 363
    const v5, 0x2141124b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x56

    aput-object v5, v4, v6

    .line 364
    const v5, 0x2140160e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x57

    aput-object v5, v4, v6

    .line 365
    const v5, 0x2140100f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x58

    aput-object v5, v4, v6

    .line 277
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mDiagPropertyIds:Landroid/util/ArraySet;

    .line 367
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    .line 368
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    .line 375
    new-instance v2, Lcom/android/car/XpDiagnosticService$1;

    invoke-direct {v2, v0}, Lcom/android/car/XpDiagnosticService$1;-><init>(Lcom/android/car/XpDiagnosticService;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 384
    new-instance v2, Landroid/car/diagnostic/EcusFailureStates;

    invoke-direct {v2}, Landroid/car/diagnostic/EcusFailureStates;-><init>()V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    .line 385
    iput-boolean v7, v0, Lcom/android/car/XpDiagnosticService;->mEcusDiagDataValid:Z

    .line 393
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mTboxConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 394
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mIcmConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 398
    new-instance v2, Lcom/android/car/-$$Lambda$XpDiagnosticService$iol7Rtqy14H0S5ebWfrLcEJGIe8;

    invoke-direct {v2, v0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$iol7Rtqy14H0S5ebWfrLcEJGIe8;-><init>(Lcom/android/car/XpDiagnosticService;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mCheckConnectedStateRunnable:Ljava/lang/Runnable;

    .line 408
    new-instance v2, Landroid/util/SparseArray;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    .line 410
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    .line 412
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    .line 414
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    .line 416
    new-instance v2, Lcom/android/car/-$$Lambda$XpDiagnosticService$hcWnQk0aC5PTcHLR34zMpVFnxek;

    invoke-direct {v2, v0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$hcWnQk0aC5PTcHLR34zMpVFnxek;-><init>(Lcom/android/car/XpDiagnosticService;)V

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mReportEcusDiagRunnable:Ljava/lang/Runnable;

    .line 425
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 426
    iput-object v1, v0, Lcom/android/car/XpDiagnosticService;->mContext:Landroid/content/Context;

    .line 427
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/car/XpDiagnosticService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 428
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/car/XpDiagnosticService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 429
    new-instance v5, Lcom/android/car/DiagnosisErrorReporter;

    invoke-direct {v5, v1}, Lcom/android/car/DiagnosisErrorReporter;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/car/XpDiagnosticService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    .line 430
    new-instance v5, Lcom/android/car/CallbackStatistics;

    const-string v6, "XpDiagnosticService"

    invoke-direct {v5, v6, v9}, Lcom/android/car/CallbackStatistics;-><init>(Ljava/lang/String;Z)V

    iput-object v5, v0, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    .line 431
    iget-object v5, v0, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v5}, Lcom/android/car/CallbackStatistics;->getMyPid()I

    move-result v5

    iput v5, v0, Lcom/android/car/XpDiagnosticService;->mMyPid:I

    .line 432
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/XpDiagnosticService;)Lcom/android/car/XpDiagnosticService$DiagHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/car/XpDiagnosticService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStatePropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;
    .param p2, "x2"    # I

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/car/XpDiagnosticService;->handleEcuFailureStateChanged(Landroid/car/hardware/CarPropertyValue;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleIcmConnectStateChanged(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleTboxConnectStateChanged(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleIgStateChanged(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/XpDiagnosticService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/XpDiagnosticService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/XpDiagnosticService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/XpDiagnosticService;ILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/car/XpDiagnosticService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/XpDiagnosticService;)Lcom/android/car/CallbackStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService;

    .line 170
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    return-object v0
.end method

.method private buildCurrentEcusDiagData()Landroid/car/diagnostic/EcusFailureStates;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1946
    new-instance v0, Landroid/car/diagnostic/EcusFailureStates;

    invoke-direct {v0}, Landroid/car/diagnostic/EcusFailureStates;-><init>()V

    .line 1947
    .local v0, "data":Landroid/car/diagnostic/EcusFailureStates;
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1948
    :try_start_0
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c86

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setHighBeamFailureState(I)V

    .line 1949
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c87

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLowBeamFailureState(I)V

    .line 1950
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c88

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLeftTurnLampFailureState(I)V

    .line 1951
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c89

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRightTurnLampFailureState(I)V

    .line 1952
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRearFogLampFailureState(I)V

    .line 1953
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8b

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRightDaytimeRunningLightFailureState(I)V

    .line 1954
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8c

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLeftDaytimeRunningLightFailureState(I)V

    .line 1955
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8d

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setParkingLampFailureState(I)V

    .line 1956
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8e

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBcmSystemFailureState(I)V

    .line 1957
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402e16

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLluFailureState(I)V

    .line 1958
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140180b

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAtlsFailureSate(I)V

    .line 1959
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c8f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmFailureState(I)V

    .line 1960
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c90

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmVentilationMotorFailureState(I)V

    .line 1961
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c91

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmHeatSysFailureState(I)V

    .line 1962
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c92

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setPassengerMsmFailureState(I)V

    .line 1963
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c93

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setPassengerMsmHeatSysFailureState(I)V

    .line 1964
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140320f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAvasFailureState(I)V

    .line 1965
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401e06

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setTpmsSysFailureState(I)V

    .line 1966
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401e07

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAbnormalTirePressureState(I)V

    .line 1967
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c12

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAirbagFailureState(I)V

    .line 1968
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140180c

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAlsFailureState(I)V

    .line 1969
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401c94

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDhcFailureState(I)V

    .line 1970
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401231

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setEvSysFailureState(I)V

    .line 1971
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401232

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setGearWarningInfo(I)V

    .line 1972
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401233

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setEbsFailureState(I)V

    .line 1973
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401234

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLiquidHighTempState(I)V

    .line 1974
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401235

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setWaterSensorFailureState(I)V

    .line 1975
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401236

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBCruiseFailureState(I)V

    .line 1976
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401237

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setThermalRunawayState(I)V

    .line 1977
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401238

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setPowerLimitationState(I)V

    .line 1978
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401239

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setChargePortHotState(I)V

    .line 1979
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140123a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setObcMsgLostState(I)V

    .line 1980
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140123b

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryDeadState(I)V

    .line 1981
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402409

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setEspFailureState(I)V

    .line 1982
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240e

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setApbFailureState(I)V

    .line 1983
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAbsFailureState(I)V

    .line 1984
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240b

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAvhFailureState(I)V

    .line 1985
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402411

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setIbtFailureState(I)V

    .line 1986
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240d

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setEpsFailureState(I)V

    .line 1987
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402678

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setCdcFailureState(I)V

    .line 1988
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402679

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setXpuFailureState(I)V

    .line 1989
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402603

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setIhbState(I)V

    .line 1990
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402605

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBsdState(I)V

    .line 1991
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402608

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDowState(I)V

    .line 1992
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402606

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRctaState(I)V

    .line 1993
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402607

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRcwState(I)V

    .line 1994
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402674

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setFlSrrFailureState(I)V

    .line 1995
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402675

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setFrSrrFailureState(I)V

    .line 1996
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402676

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRlSrrFailureState(I)V

    .line 1997
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402677

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRrSrrFailureState(I)V

    .line 1998
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402627

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setScuLongCtrlRemindInfo(I)V

    .line 1999
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140260d

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setIslcState(I)V

    .line 2000
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402672

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAlcCtrlRemindInfo(I)V

    .line 2001
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402673

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setApaFailureState(I)V

    .line 2002
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401240

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setFrontIpuFailureState(I)V

    .line 2003
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140123f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setRearIpuFailureState(I)V

    .line 2005
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240c

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setEpbSysFailureState(I)V

    .line 2006
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140240a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setHdcFailureState(I)V

    .line 2007
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x21411e0e

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAllTireTemperatureWarnings([I)V

    .line 2008
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x21411e10

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAllTirePerssureSensorsFailureStates([I)V

    .line 2009
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401241

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryOverheatingState(I)V

    .line 2010
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401242

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setCcsWorkState(I)V

    .line 2011
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401243

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDcdcFailureState(I)V

    .line 2012
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401245

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryVoltageLowState(I)V

    .line 2013
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401246

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setElectricMotorSystemHotState(I)V

    .line 2014
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401247

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setElectricVacuumPumpFailureState(I)V

    .line 2015
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401248

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setHighVoltageRelayAdhesionState(I)V

    .line 2016
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401249

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAgsFailureState(I)V

    .line 2017
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x2141124a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setTcmMotorFailureStates([I)V

    .line 2018
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x21411c96

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAllMsmModulesFailureStates([I)V

    .line 2019
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402818

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setDvrFailureState(I)V

    .line 2020
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402803

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setCiuSdcardFailureState(I)V

    .line 2021
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402602

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setLdwState(I)V

    .line 2022
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21402601

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setAebState(I)V

    .line 2023
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x2140262a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setSideReversingState(I)V

    .line 2024
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v3, 0x21401a2e

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setHvacPtcFailureState(I)V

    .line 2025
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x21411a2f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setHvacCompressorFailureStates([I)V

    .line 2026
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v3, 0x2141124b

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryPtcFailureStates([I)V

    .line 2027
    monitor-exit v1

    .line 2028
    return-object v0

    .line 2027
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static createErrorEvent(II)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 3
    .param p0, "property"    # I
    .param p1, "errorCode"    # I

    .line 435
    new-instance v0, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v1, Landroid/car/hardware/CarPropertyValue;

    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 435
    return-object v0
.end method

.method private dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    monitor-enter p0

    .line 1155
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mCallbacks:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1156
    .local v1, "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1160
    .local v3, "l":Landroid/car/hardware/property/ICarPropertyEventListener;
    :try_start_1
    invoke-interface {v3, v0}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1166
    goto :goto_1

    .line 1161
    :catch_0
    move-exception v4

    .line 1164
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "XpDiagnosticService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent calling failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v3    # "l":Landroid/car/hardware/property/ICarPropertyEventListener;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1168
    :cond_0
    return-void

    .line 1156
    .end local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/car/hardware/property/ICarPropertyEventListener;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private doHandleDiagEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 1305
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1306
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleOnOtherEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1315
    return-void

    .line 1311
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleOnANDEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1312
    goto :goto_0

    .line 1308
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->handleOnMcuEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1309
    nop

    .line 1317
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21701404
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;
    .locals 3
    .param p1, "propId"    # I

    .line 1070
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1072
    .local v1, "config":Landroid/car/hardware/CarPropertyConfig;
    :goto_0
    monitor-exit v0

    .line 1073
    return-object v1

    .line 1072
    .end local v1    # "config":Landroid/car/hardware/CarPropertyConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentEcusDiagData()Landroid/car/diagnostic/EcusFailureStates;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2033
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->getSupportedCheckedPropIds()Ljava/util/Set;

    move-result-object v0

    .line 2034
    .local v0, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2035
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2036
    .local v3, "prop":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/car/XpDiagnosticService;->getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v4

    .line 2037
    .local v4, "config":Landroid/car/hardware/CarPropertyConfig;
    if-eqz v4, :cond_2

    .line 2038
    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object v5

    .line 2039
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Integer;

    if-ne v6, v5, :cond_0

    .line 2040
    iget-object v6, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/function/IntConsumer;

    iget-object v7, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1

    .line 2041
    :cond_0
    const-class v6, [Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    .line 2042
    iget-object v6, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/function/Consumer;

    iget-object v7, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Integer;

    invoke-static {v7}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 2044
    :cond_1
    const-string v6, "XpDiagnosticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for propId=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2044
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v3    # "prop":Ljava/lang/Integer;
    .end local v4    # "config":Landroid/car/hardware/CarPropertyConfig;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 2049
    :cond_3
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    monitor-exit v1

    return-object v2

    .line 2050
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCurrentEcusDiagEventList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation

    .line 440
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 441
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/car/XpDiagnosticService;->getSupportedCheckedPropIds()Ljava/util/Set;

    move-result-object v3

    .line 442
    .local v3, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v3, :cond_0

    .line 443
    return-object v2

    .line 445
    :cond_0
    iget-object v4, v1, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 446
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 447
    .local v5, "prop":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/car/XpDiagnosticService;->getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v6

    .line 449
    .local v6, "config":Landroid/car/hardware/CarPropertyConfig;
    if-nez v6, :cond_1

    .line 450
    const-string v7, "XpDiagnosticService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported propId=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {v6}, Landroid/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    .line 455
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/lang/Integer;

    if-ne v8, v7, :cond_3

    .line 457
    iget-object v8, v1, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 458
    .local v8, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 459
    .local v10, "propData":Ljava/lang/Integer;
    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 460
    new-instance v15, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v14, Landroid/car/hardware/CarPropertyValue;

    .line 461
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    const/16 v16, 0x0

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v11, v14

    move-object v9, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    move-object/from16 v11, v19

    const/4 v12, 0x0

    invoke-direct {v11, v12, v9}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 460
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v8    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v10    # "propData":Ljava/lang/Integer;
    :cond_2
    goto :goto_1

    :cond_3
    const-class v8, [Ljava/lang/Integer;

    if-ne v8, v7, :cond_5

    .line 465
    iget-object v8, v1, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 466
    .local v8, "value":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Integer;

    .line 467
    .local v9, "propData":[Ljava/lang/Integer;
    sget-object v10, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    if-eq v10, v9, :cond_4

    .line 468
    new-instance v14, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v15, Landroid/car/hardware/CarPropertyValue;

    .line 469
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v10, v15

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-wide/from16 v14, v16

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    const/4 v12, 0x0

    invoke-direct {v10, v12, v11}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 468
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v8    # "value":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v9    # "propData":[Ljava/lang/Integer;
    :cond_4
    goto :goto_1

    .line 472
    :cond_5
    const-string v8, "XpDiagnosticService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for propId=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 472
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v5    # "prop":Ljava/lang/Integer;
    .end local v6    # "config":Landroid/car/hardware/CarPropertyConfig;
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    goto/16 :goto_0

    .line 476
    :cond_6
    monitor-exit v4

    .line 477
    return-object v2

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getIntValueOrThrow(I)I
    .locals 2
    .param p1, "key"    # I

    .line 1447
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1449
    .local v1, "ret":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    const/4 v0, -0x1

    if-eq v0, v1, :cond_0

    .line 1453
    return v1

    .line 1451
    :cond_0
    new-instance v0, Landroid/car/ValueUnavailableException;

    invoke-direct {v0}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v0

    .line 1449
    .end local v1    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getIntVectorValueOrThrow(I)[I
    .locals 2
    .param p1, "key"    # I

    .line 1459
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lcom/android/car/CarServiceUtils;->toIntArray([Ljava/lang/Integer;)[I

    move-result-object v1

    .line 1461
    .local v1, "ret":[I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    sget-object v0, Landroid/car/diagnostic/EcusFailureStates;->INT_VECTOR_DEFAULT_STATE:[I

    if-eq v0, v1, :cond_0

    .line 1465
    return-object v1

    .line 1463
    :cond_0
    new-instance v0, Landroid/car/ValueUnavailableException;

    invoke-direct {v0}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v0

    .line 1461
    .end local v1    # "ret":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 517
    .local p1, "propertyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1}, Lcom/android/car/CarPropertyService;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 520
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

    .line 521
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 522
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 525
    :cond_1
    return-object v0
.end method

.method private getSupportedCheckedPropIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 858
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 844
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 848
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 850
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleEcuFailureStateChanged(Landroid/car/hardware/CarPropertyValue;I)V
    .locals 7
    .param p2, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;I)V"
        }
    .end annotation

    .line 2357
    .local p1, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-direct {p0, p2}, Lcom/android/car/XpDiagnosticService;->getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v0

    .line 2358
    .local v0, "config":Landroid/car/hardware/CarPropertyConfig;
    if-eqz v0, :cond_2

    .line 2359
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    .line 2360
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Integer;

    if-ne v2, v1, :cond_0

    .line 2361
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2362
    :try_start_0
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    .line 2363
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2364
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2363
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 2362
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2365
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2366
    :cond_0
    const-class v2, [Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    .line 2367
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2368
    :try_start_1
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    .line 2369
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 2370
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2369
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 2368
    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2371
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 2373
    :cond_1
    const-string v2, "XpDiagnosticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for propId=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2373
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_0
    return-void
.end method

.method private handleIcmConnectStateChanged(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 2058
    .local p1, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mIcmConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2059
    return-void
.end method

.method private handleIgStateChanged(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 2062
    .local p1, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2063
    .local v0, "igState":I
    const-string v1, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ig state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mCheckConnectedStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/car/XpDiagnosticService$DiagHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2065
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2066
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mCheckConnectedStateRunnable:Ljava/lang/Runnable;

    sget-object v3, Lcom/android/car/XpDiagnosticService;->CHECK_ICM_TBOX_CONNECTED_INTERVAL:Ljava/time/Duration;

    .line 2067
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    .line 2066
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/car/XpDiagnosticService$DiagHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2069
    :cond_0
    return-void
.end method

.method private handleOnANDEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p1, "value"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 1142
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1143
    return-void
.end method

.method private handleOnMcuEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p1, "value"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 1138
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1139
    return-void
.end method

.method private handleOnOtherEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p1, "value"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/car/XpDiagnosticService;->dispatchEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 1147
    return-void
.end method

.method private handleTboxConnectStateChanged(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 2054
    .local p1, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mTboxConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2055
    return-void
.end method

.method private initEcusDataConsumerMap()V
    .locals 5

    .line 690
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c86

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$qBdF3dkRE_ALq7_pW1nGKMt18V8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$qBdF3dkRE_ALq7_pW1nGKMt18V8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c87

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$Q7Ch6IwgskbUm2K71VzJH1u33ig;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$Q7Ch6IwgskbUm2K71VzJH1u33ig;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c88

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$9Gvg1Zwnuju10R3suSdFHk3A0ME;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$9Gvg1Zwnuju10R3suSdFHk3A0ME;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c89

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$Zibb3GyJRnXftVkM5m5-LeCIj4o;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$Zibb3GyJRnXftVkM5m5-LeCIj4o;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8a

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$fbzLLGcFsCouS-Us6m4pvdvHTqU;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$fbzLLGcFsCouS-Us6m4pvdvHTqU;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8b

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$ZgI-O5z-nkDSmX6GuwdIyyAmUMc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$ZgI-O5z-nkDSmX6GuwdIyyAmUMc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 703
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8c

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$G9kZX4G4_o-O47WcJICYJ3sWkBM;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$G9kZX4G4_o-O47WcJICYJ3sWkBM;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8d

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$b_FF52OM5oYTgokQPlOJXRPGDgw;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$b_FF52OM5oYTgokQPlOJXRPGDgw;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8e

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$6lbVPIylgvUt3CIif3x24QvVCo0;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$6lbVPIylgvUt3CIif3x24QvVCo0;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402e16

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$knzOLLWyDG3LiZhReJUTX5xnBu4;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$knzOLLWyDG3LiZhReJUTX5xnBu4;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140180b

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$-9qexQY76oKTUxBmhsi4lRBCHc4;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$-9qexQY76oKTUxBmhsi4lRBCHc4;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c8f

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$JDbMdE4AWV9mDod6Uom5zXwjC2g;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$JDbMdE4AWV9mDod6Uom5zXwjC2g;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c90

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$pW_XACrsat4z7flTXqW-SisTTmc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$pW_XACrsat4z7flTXqW-SisTTmc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c91

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$THEni5FmRYpXyZcn7E-Au-uJgQ8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$THEni5FmRYpXyZcn7E-Au-uJgQ8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 717
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c92

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$GP3rBq0qoUw3Qm4pkPGrR_T4Nb8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$GP3rBq0qoUw3Qm4pkPGrR_T4Nb8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c93

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$eb99sNINGDVjQpAf2Th2lYUhgiE;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$eb99sNINGDVjQpAf2Th2lYUhgiE;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140320f

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$PVzn-dN_w4F-1K29VjQY4yBeybs;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$PVzn-dN_w4F-1K29VjQY4yBeybs;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401e06

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$mj0NleCdR5f3CvIlCxNXPtJUbgk;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$mj0NleCdR5f3CvIlCxNXPtJUbgk;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 724
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401e07

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$5EX90otr9siSZKJJi04HFspaYs0;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$5EX90otr9siSZKJJi04HFspaYs0;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c12

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$M40v8ITW7nihNs2lf77MilQoMDw;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$M40v8ITW7nihNs2lf77MilQoMDw;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140180c

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$hL37e3yTsIASku1DySyDQarrVXk;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$hL37e3yTsIASku1DySyDQarrVXk;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401c94

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$xBF1AkcCDgoMxX9WF3WCklCJeAA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$xBF1AkcCDgoMxX9WF3WCklCJeAA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401231

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$PcF9luIkJ8PKkKf93plb42YPgaY;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$PcF9luIkJ8PKkKf93plb42YPgaY;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 732
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401232

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$KjKFzeCHHBPxHRMB9RorKnz5a24;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$KjKFzeCHHBPxHRMB9RorKnz5a24;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 734
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401233

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$hUgh1-GSx_zg_t2fYR-uGXGIdhI;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$hUgh1-GSx_zg_t2fYR-uGXGIdhI;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401234

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$cb52vZ5WBDokn7lAJKKugPl_kMU;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$cb52vZ5WBDokn7lAJKKugPl_kMU;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401235

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$W-j19uyK0PG0KArQn7yjHJ22MSA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$W-j19uyK0PG0KArQn7yjHJ22MSA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401236

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$irN-fQruqi0u_JvrCKVzN_wzUrM;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$irN-fQruqi0u_JvrCKVzN_wzUrM;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401237

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$FFte1cavrFZX0SUPDXrarulByAY;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$FFte1cavrFZX0SUPDXrarulByAY;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401238

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$7EaeF8HnnGFMD8U0ySa4tPxBUi8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$7EaeF8HnnGFMD8U0ySa4tPxBUi8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401239

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$p1indbJDbrEeu5oHoAeDV8ocumg;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$p1indbJDbrEeu5oHoAeDV8ocumg;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140123a

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$cG9XLaflGJNPiKwryRSZb0OINLs;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$cG9XLaflGJNPiKwryRSZb0OINLs;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140123b

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$EFg6OY25rDSzBPkB37PhOfoV2Co;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$EFg6OY25rDSzBPkB37PhOfoV2Co;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401240

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$UXgzj6iiUCo1ZJAn6tUGLqVeUIU;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$UXgzj6iiUCo1ZJAn6tUGLqVeUIU;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140123f

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$nmbwCL27uc7ys9Prh7DC4FBIeis;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$nmbwCL27uc7ys9Prh7DC4FBIeis;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402409

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$UqPOlO9ftAgDmoMcVWCGL3zuZOo;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$UqPOlO9ftAgDmoMcVWCGL3zuZOo;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 754
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240e

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$12U1Vpp2Q18zGFhCIT2RFpSvQhs;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$12U1Vpp2Q18zGFhCIT2RFpSvQhs;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240f

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$Bz-eCRXpe1-dPuMCrrUKm2Ppfr0;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$Bz-eCRXpe1-dPuMCrrUKm2Ppfr0;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240b

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$nuXE0mm0gmMx74j6i4Hb1hh7ObA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$nuXE0mm0gmMx74j6i4Hb1hh7ObA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 757
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402411

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$1YepSWdH0extUjeZgZSEN2PcSPI;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$1YepSWdH0extUjeZgZSEN2PcSPI;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240d

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$b-RbqFOd2i8ILqw2tcDmpElArZI;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$b-RbqFOd2i8ILqw2tcDmpElArZI;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402678

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$eGqvC3_yC3WsXHhbOQz29YL_1N4;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$eGqvC3_yC3WsXHhbOQz29YL_1N4;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402679

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$4i8afgAOB8xs085a-Cmwfnc4tgA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$4i8afgAOB8xs085a-Cmwfnc4tgA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402603

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$IR9bBVaxj7ppMBX-5dk0339kGbM;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$IR9bBVaxj7ppMBX-5dk0339kGbM;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 764
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402605

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$BBHBx7Sr6WjEoVrAwz5hNyA7gGc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$BBHBx7Sr6WjEoVrAwz5hNyA7gGc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402608

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$lLMq7U7J7BVzeJflAGwHxmUrOT0;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$lLMq7U7J7BVzeJflAGwHxmUrOT0;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 766
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402606

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$SBIfDFrP9pULcylDpad3D9O5CIc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$SBIfDFrP9pULcylDpad3D9O5CIc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402607

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$krHlU9hfN8x1ZQ7JZmc-bZXDu-8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$krHlU9hfN8x1ZQ7JZmc-bZXDu-8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402674

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$lP33gXCTKgBWVgstlN86NRLVBts;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$lP33gXCTKgBWVgstlN86NRLVBts;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402675

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$eqIUvcZeH-_pm4G6VWOvG9x4oPQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$eqIUvcZeH-_pm4G6VWOvG9x4oPQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402676

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$2tOeZhQFoHHWJSXHQnPtBXUVieQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$2tOeZhQFoHHWJSXHQnPtBXUVieQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402677

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$OxtWp33drShc5e6lFWNK_V_IeBo;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$OxtWp33drShc5e6lFWNK_V_IeBo;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 772
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402627

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$2qByKjQ-AI4zBBK_o2OVYTNdeAs;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$2qByKjQ-AI4zBBK_o2OVYTNdeAs;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140260d

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$MU-PHWtOC7MJ0MR3HI66FSW5Ieg;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$MU-PHWtOC7MJ0MR3HI66FSW5Ieg;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402672

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$zgj2tLyUvQ8DwdagvJA-k0V6_-8;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$zgj2tLyUvQ8DwdagvJA-k0V6_-8;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402673

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$sB0WVTvr5Pfv5HTMfXfpxrJQx2Y;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$sB0WVTvr5Pfv5HTMfXfpxrJQx2Y;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240c

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$diVvTRXamzHEkowyR9MNFz0TSkc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$diVvTRXamzHEkowyR9MNFz0TSkc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140240a

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$b6GmqOlR1w2eDD9308-uuMCT2vQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$b6GmqOlR1w2eDD9308-uuMCT2vQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21411e0e

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$vefc2zVSTHZXDoL1F1OM0JxlJHM;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$vefc2zVSTHZXDoL1F1OM0JxlJHM;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 785
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21411e10

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$y6v1Qm8NEkKBDCO7feSd45Q50jU;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$y6v1Qm8NEkKBDCO7feSd45Q50jU;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 787
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401241

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$IJWLGlMyzPVlGwcwVKG6-qnlx_4;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$IJWLGlMyzPVlGwcwVKG6-qnlx_4;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 789
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401242

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$jBPbxsoLptuKGduf-yccc9RfHCw;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$jBPbxsoLptuKGduf-yccc9RfHCw;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401243

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$w8xkGt4EbAgrmO_4OThkslU8b7I;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$w8xkGt4EbAgrmO_4OThkslU8b7I;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401245

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$kUoXGGU0cDIrGmAbdvH16DLK5Wc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$kUoXGGU0cDIrGmAbdvH16DLK5Wc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 793
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401246

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$-iTlA6h7q6ajuJJ5gFxW70PX9P4;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$-iTlA6h7q6ajuJJ5gFxW70PX9P4;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 795
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401247

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$eFsfSTq2H28ukw65neXoesZiBHQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$eFsfSTq2H28ukw65neXoesZiBHQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401248

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$l4a1huZOd563dL_7Vt61s_-xW9A;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$l4a1huZOd563dL_7Vt61s_-xW9A;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 799
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401249

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$569kP2qhAEZ6AP8zxizLHNQ2OSQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$569kP2qhAEZ6AP8zxizLHNQ2OSQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 800
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2141124a

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$zeZrG_hOS9QFOWP2DNciDrTveeU;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$zeZrG_hOS9QFOWP2DNciDrTveeU;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21411c96

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$okNwYaZ8BiNVc0FAHQMA70Ne8hQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$okNwYaZ8BiNVc0FAHQMA70Ne8hQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402818

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$rhMb2lcxEfnTFCezvSdEah5Ptgg;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$rhMb2lcxEfnTFCezvSdEah5Ptgg;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402803

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$QWzeNCAF4i7R29BnpSMY0w02Tzk;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$QWzeNCAF4i7R29BnpSMY0w02Tzk;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402602

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$5vwV130YKIbPHNOusOVCtsLMDKA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$5vwV130YKIbPHNOusOVCtsLMDKA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21402601

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$Qsc_CP6k-Qs-NqdaoTeVHdnnBkc;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$Qsc_CP6k-Qs-NqdaoTeVHdnnBkc;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2140262a

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$ucKWuYyhH97zgtL3QteORmHJMlk;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$ucKWuYyhH97zgtL3QteORmHJMlk;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21401a2e

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$OXXQ4v1P27EzA0UsOM2FBNw0cfQ;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$OXXQ4v1P27EzA0UsOM2FBNw0cfQ;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x21411a2f

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$HtOc881CMxvsI0f8EqQofq62SFA;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$HtOc881CMxvsI0f8EqQofq62SFA;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 814
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    const v2, 0x2141124b

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStates:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/car/-$$Lambda$XpDiagnosticService$_yESXX6Lg50cwLe3W1whYNU9CdY;

    invoke-direct {v4, v3}, Lcom/android/car/-$$Lambda$XpDiagnosticService$_yESXX6Lg50cwLe3W1whYNU9CdY;-><init>(Landroid/car/diagnostic/EcusFailureStates;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initEcusDataMap()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c86

    .line 532
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 531
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c87

    .line 534
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 533
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c88

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 535
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c89

    .line 538
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 537
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8a

    .line 540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 539
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8b

    .line 542
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 541
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8c

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 543
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8d

    .line 546
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 545
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8e

    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 547
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402e16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 550
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 549
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140180b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 552
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 551
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 553
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 554
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 553
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c90

    .line 556
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 555
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c91

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 557
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c92

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 560
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 559
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c93

    .line 562
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 561
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140320f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 564
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 563
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401e06

    .line 566
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 565
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 567
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401e07

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 567
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c12

    .line 570
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 569
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140180c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 572
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 571
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401c94

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 574
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401231

    .line 575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 574
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401232

    .line 577
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 576
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401233

    .line 579
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 578
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401234

    .line 581
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 580
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401235

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 582
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401236

    .line 585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 584
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401237

    .line 587
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 586
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 588
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401238

    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 588
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401239

    .line 591
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 590
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140123a

    .line 593
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 592
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140123b

    .line 595
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 594
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140123f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 597
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 596
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 599
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 598
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402409

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 601
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 600
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 603
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 602
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 605
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 604
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 607
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 606
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402411

    .line 609
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 608
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 611
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 610
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402678

    .line 613
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 612
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402679

    .line 615
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 614
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402603

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 617
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 616
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402605

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 619
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 618
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402608

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 621
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 620
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402606

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 623
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 622
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402607

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 625
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 624
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402674

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 627
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 626
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402675

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 629
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 628
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402676

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 631
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 630
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402677

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 633
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 632
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402627

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 634
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140260d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 637
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 636
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402672

    .line 639
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 638
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402673

    .line 641
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 640
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240c

    .line 644
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 643
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140240a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 646
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 645
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x21411e0e

    sget-object v4, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 648
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 647
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x21411e10

    sget-object v4, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 650
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 649
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401241

    .line 652
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 651
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401242

    .line 654
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 653
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401243

    .line 656
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 655
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401245

    .line 658
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 657
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401246

    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 659
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401247

    .line 662
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 661
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401248

    .line 664
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 663
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401249

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 666
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 665
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x2141124a

    sget-object v4, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 668
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 667
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x21411c96

    sget-object v4, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 670
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 669
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402818

    .line 672
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 671
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402803

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402602

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 675
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 674
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 676
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21402601

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 677
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 676
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x2140262a

    .line 679
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 678
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    const v2, 0x21401a2e

    .line 681
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 680
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x21411a2f

    sget-object v3, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 683
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 682
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    const v2, 0x2141124b

    sget-object v3, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    .line 685
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 684
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupportedAfterSalesPropConfigs()V
    .locals 6

    .line 505
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedAfterSalesPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedAfterSalesPropConfigs:Ljava/util/Map;

    .line 508
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mAfterSalesIds:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/car/XpDiagnosticService;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 509
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

    .line 510
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mSupportedAfterSalesPropConfigs:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    goto :goto_0

    .line 513
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :cond_0
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupportedCheckedPropConfigs()V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    .line 496
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mEcusFailureStatePropertyIds:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/car/XpDiagnosticService;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 497
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

    .line 498
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    goto :goto_0

    .line 501
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :cond_0
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSupportedPropConfigs()V
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    .line 484
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mDiagPropertyIds:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/car/XpDiagnosticService;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 485
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

    .line 486
    .local v3, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .end local v3    # "c":Landroid/car/hardware/CarPropertyConfig;
    goto :goto_0

    .line 489
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :cond_0
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$-9qexQY76oKTUxBmhsi4lRBCHc4(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAtlsFailureSate(I)V

    return-void
.end method

.method public static synthetic lambda$-iTlA6h7q6ajuJJ5gFxW70PX9P4(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setElectricMotorSystemHotState(I)V

    return-void
.end method

.method public static synthetic lambda$12U1Vpp2Q18zGFhCIT2RFpSvQhs(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setApbFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$1YepSWdH0extUjeZgZSEN2PcSPI(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setIbtFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$2qByKjQ-AI4zBBK_o2OVYTNdeAs(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setScuLongCtrlRemindInfo(I)V

    return-void
.end method

.method public static synthetic lambda$2tOeZhQFoHHWJSXHQnPtBXUVieQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRlSrrFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$4i8afgAOB8xs085a-Cmwfnc4tgA(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setXpuFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$569kP2qhAEZ6AP8zxizLHNQ2OSQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAgsFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$5EX90otr9siSZKJJi04HFspaYs0(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAbnormalTirePressureState(I)V

    return-void
.end method

.method public static synthetic lambda$5vwV130YKIbPHNOusOVCtsLMDKA(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLdwState(I)V

    return-void
.end method

.method public static synthetic lambda$6lbVPIylgvUt3CIif3x24QvVCo0(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBcmSystemFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$7EaeF8HnnGFMD8U0ySa4tPxBUi8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setPowerLimitationState(I)V

    return-void
.end method

.method public static synthetic lambda$9Gvg1Zwnuju10R3suSdFHk3A0ME(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLeftTurnLampFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$BBHBx7Sr6WjEoVrAwz5hNyA7gGc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBsdState(I)V

    return-void
.end method

.method public static synthetic lambda$Bz-eCRXpe1-dPuMCrrUKm2Ppfr0(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAbsFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$EFg6OY25rDSzBPkB37PhOfoV2Co(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryDeadState(I)V

    return-void
.end method

.method public static synthetic lambda$FFte1cavrFZX0SUPDXrarulByAY(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setThermalRunawayState(I)V

    return-void
.end method

.method public static synthetic lambda$G9kZX4G4_o-O47WcJICYJ3sWkBM(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLeftDaytimeRunningLightFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$GP3rBq0qoUw3Qm4pkPGrR_T4Nb8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setPassengerMsmFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$HtOc881CMxvsI0f8EqQofq62SFA(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setHvacCompressorFailureStates([I)V

    return-void
.end method

.method public static synthetic lambda$IJWLGlMyzPVlGwcwVKG6-qnlx_4(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryOverheatingState(I)V

    return-void
.end method

.method public static synthetic lambda$IR9bBVaxj7ppMBX-5dk0339kGbM(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setIhbState(I)V

    return-void
.end method

.method public static synthetic lambda$JDbMdE4AWV9mDod6Uom5zXwjC2g(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$KjKFzeCHHBPxHRMB9RorKnz5a24(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setGearWarningInfo(I)V

    return-void
.end method

.method public static synthetic lambda$M40v8ITW7nihNs2lf77MilQoMDw(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAirbagFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$MU-PHWtOC7MJ0MR3HI66FSW5Ieg(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setIslcState(I)V

    return-void
.end method

.method public static synthetic lambda$OXXQ4v1P27EzA0UsOM2FBNw0cfQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setHvacPtcFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$OxtWp33drShc5e6lFWNK_V_IeBo(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRrSrrFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$PVzn-dN_w4F-1K29VjQY4yBeybs(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAvasFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$PcF9luIkJ8PKkKf93plb42YPgaY(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setEvSysFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$Q7Ch6IwgskbUm2K71VzJH1u33ig(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLowBeamFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$QWzeNCAF4i7R29BnpSMY0w02Tzk(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setCiuSdcardFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$Qsc_CP6k-Qs-NqdaoTeVHdnnBkc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAebState(I)V

    return-void
.end method

.method public static synthetic lambda$SBIfDFrP9pULcylDpad3D9O5CIc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRctaState(I)V

    return-void
.end method

.method public static synthetic lambda$THEni5FmRYpXyZcn7E-Au-uJgQ8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmHeatSysFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$UXgzj6iiUCo1ZJAn6tUGLqVeUIU(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setFrontIpuFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$UqPOlO9ftAgDmoMcVWCGL3zuZOo(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setEspFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$W-j19uyK0PG0KArQn7yjHJ22MSA(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setWaterSensorFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$ZgI-O5z-nkDSmX6GuwdIyyAmUMc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRightDaytimeRunningLightFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$Zibb3GyJRnXftVkM5m5-LeCIj4o(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRightTurnLampFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$_yESXX6Lg50cwLe3W1whYNU9CdY(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryPtcFailureStates([I)V

    return-void
.end method

.method public static synthetic lambda$b-RbqFOd2i8ILqw2tcDmpElArZI(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setEpsFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$b6GmqOlR1w2eDD9308-uuMCT2vQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setHdcFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$b_FF52OM5oYTgokQPlOJXRPGDgw(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setParkingLampFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$cG9XLaflGJNPiKwryRSZb0OINLs(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setObcMsgLostState(I)V

    return-void
.end method

.method public static synthetic lambda$cb52vZ5WBDokn7lAJKKugPl_kMU(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLiquidHighTempState(I)V

    return-void
.end method

.method public static synthetic lambda$diVvTRXamzHEkowyR9MNFz0TSkc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setEpbSysFailureState(I)V

    return-void
.end method

.method static synthetic lambda$dump$2(Lcom/android/car/XpDiagnosticService$Client;)I
    .locals 1
    .param p0, "c"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 910
    iget v0, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    return v0
.end method

.method public static synthetic lambda$dump$3(Lcom/android/car/XpDiagnosticService;Lcom/android/car/XpDiagnosticService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 910
    iget v0, p1, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    iget v1, p0, Lcom/android/car/XpDiagnosticService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Lcom/android/car/XpDiagnosticService$Client;)V
    .locals 0
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 910
    invoke-virtual {p1, p0}, Lcom/android/car/XpDiagnosticService$Client;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic lambda$dump$5(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "o"    # Ljava/util/Map$Entry;

    .line 913
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$dump$6(Lcom/android/car/XpDiagnosticService;Lcom/android/car/XpDiagnosticService$Client;)Z
    .locals 2
    .param p1, "v"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 919
    iget v0, p1, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    iget v1, p0, Lcom/android/car/XpDiagnosticService;->mMyPid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Lcom/android/car/XpDiagnosticService$Client;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;
    .param p1, "c"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "            pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), mListenerBinder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-static {p1}, Lcom/android/car/XpDiagnosticService$Client;->access$400(Lcom/android/car/XpDiagnosticService$Client;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dump$8(Lcom/android/car/XpDiagnosticService;Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "cs"    # Ljava/util/Map$Entry;

    .line 915
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 916
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 917
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

    .line 918
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$XpDiagnosticService$He3YpbHjtOTvwgcB1MRVlvqQzxM;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$He3YpbHjtOTvwgcB1MRVlvqQzxM;-><init>(Lcom/android/car/XpDiagnosticService;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$XpDiagnosticService$dOciQydiknQNbNgNq11ehFwZMIA;

    invoke-direct {v3, p1}, Lcom/android/car/-$$Lambda$XpDiagnosticService$dOciQydiknQNbNgNq11ehFwZMIA;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 922
    return-void
.end method

.method public static synthetic lambda$eFsfSTq2H28ukw65neXoesZiBHQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setElectricVacuumPumpFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$eGqvC3_yC3WsXHhbOQz29YL_1N4(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setCdcFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$eb99sNINGDVjQpAf2Th2lYUhgiE(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setPassengerMsmHeatSysFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$eqIUvcZeH-_pm4G6VWOvG9x4oPQ(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setFrSrrFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$fbzLLGcFsCouS-Us6m4pvdvHTqU(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRearFogLampFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$hL37e3yTsIASku1DySyDQarrVXk(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAlsFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$hUgh1-GSx_zg_t2fYR-uGXGIdhI(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setEbsFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$irN-fQruqi0u_JvrCKVzN_wzUrM(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBCruiseFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$jBPbxsoLptuKGduf-yccc9RfHCw(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setCcsWorkState(I)V

    return-void
.end method

.method public static synthetic lambda$kUoXGGU0cDIrGmAbdvH16DLK5Wc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setBatteryVoltageLowState(I)V

    return-void
.end method

.method public static synthetic lambda$knzOLLWyDG3LiZhReJUTX5xnBu4(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setLluFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$krHlU9hfN8x1ZQ7JZmc-bZXDu-8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRcwState(I)V

    return-void
.end method

.method public static synthetic lambda$l4a1huZOd563dL_7Vt61s_-xW9A(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setHighVoltageRelayAdhesionState(I)V

    return-void
.end method

.method public static synthetic lambda$lLMq7U7J7BVzeJflAGwHxmUrOT0(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDowState(I)V

    return-void
.end method

.method public static synthetic lambda$lP33gXCTKgBWVgstlN86NRLVBts(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setFlSrrFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$mj0NleCdR5f3CvIlCxNXPtJUbgk(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setTpmsSysFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/car/XpDiagnosticService;)V
    .locals 2

    .line 399
    const-string v0, "XpDiagnosticService"

    const-string v1, "time to Check ICM/TBOX connected state"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mTboxConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    invoke-virtual {v0}, Lcom/android/car/DiagnosisErrorReporter;->reportTboxNotConnected()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mIcmConnectedState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mDiagnosisErrorReporter:Lcom/android/car/DiagnosisErrorReporter;

    invoke-virtual {v0}, Lcom/android/car/DiagnosisErrorReporter;->reportIcmNotConnected()V

    .line 407
    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/car/XpDiagnosticService;)V
    .locals 2

    .line 417
    const-string v0, "XpDiagnosticService"

    const-string v1, "time to report ECUs diagnostic data"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusDiagDataValid:Z

    .line 419
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->getCurrentEcusDiagEventList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/XpDiagnosticService;->onPropertyChange(Ljava/util/List;)V

    .line 420
    return-void
.end method

.method public static synthetic lambda$nmbwCL27uc7ys9Prh7DC4FBIeis(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setRearIpuFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$nuXE0mm0gmMx74j6i4Hb1hh7ObA(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAvhFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$okNwYaZ8BiNVc0FAHQMA70Ne8hQ(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAllMsmModulesFailureStates([I)V

    return-void
.end method

.method public static synthetic lambda$p1indbJDbrEeu5oHoAeDV8ocumg(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setChargePortHotState(I)V

    return-void
.end method

.method public static synthetic lambda$pW_XACrsat4z7flTXqW-SisTTmc(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDriverMsmVentilationMotorFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$qBdF3dkRE_ALq7_pW1nGKMt18V8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setHighBeamFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$rhMb2lcxEfnTFCezvSdEah5Ptgg(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDvrFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$sB0WVTvr5Pfv5HTMfXfpxrJQx2Y(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setApaFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$ucKWuYyhH97zgtL3QteORmHJMlk(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setSideReversingState(I)V

    return-void
.end method

.method public static synthetic lambda$vefc2zVSTHZXDoL1F1OM0JxlJHM(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAllTireTemperatureWarnings([I)V

    return-void
.end method

.method public static synthetic lambda$w8xkGt4EbAgrmO_4OThkslU8b7I(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDcdcFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$xBF1AkcCDgoMxX9WF3WCklCJeAA(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setDhcFailureState(I)V

    return-void
.end method

.method public static synthetic lambda$y6v1Qm8NEkKBDCO7feSd45Q50jU(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAllTirePerssureSensorsFailureStates([I)V

    return-void
.end method

.method public static synthetic lambda$zeZrG_hOS9QFOWP2DNciDrTveeU(Landroid/car/diagnostic/EcusFailureStates;[I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setTcmMotorFailureStates([I)V

    return-void
.end method

.method public static synthetic lambda$zgj2tLyUvQ8DwdagvJA-k0V6_-8(Landroid/car/diagnostic/EcusFailureStates;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates;->setAlcCtrlRemindInfo(I)V

    return-void
.end method

.method private startFactorTestApp()V
    .locals 6

    .line 1120
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 1121
    invoke-virtual {v0}, Lcom/android/car/SystemActivityMonitoringService;->getTopTasks()Ljava/util/List;

    move-result-object v0

    .line 1122
    .local v0, "topTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1123
    .local v2, "t":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    const-string v3, "XpDiagnosticService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v3, v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaopeng.factory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 1125
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaopeng.factory.view.factorytest.AllTestActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    const-string v1, "XpDiagnosticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is on top!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void

    .line 1130
    .end local v2    # "t":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :cond_0
    goto :goto_0

    .line 1131
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.factory"

    const-string v3, "com.xiaopeng.factory.view.factorytest.AllTestActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1133
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1134
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1135
    return-void
.end method

.method private unregisterListenerBinderLocked(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 1098
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpDiagnosticService$Client;

    .line 1099
    .local v0, "client":Lcom/android/car/XpDiagnosticService$Client;
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1101
    .local v1, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mDiagPropertyIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    const-string v2, "XpDiagnosticService"

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

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1107
    :cond_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 1110
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    invoke-virtual {v0, p1}, Lcom/android/car/XpDiagnosticService$Client;->removeProperty(I)V

    goto :goto_1

    .line 1113
    :cond_2
    const-string v2, "XpDiagnosticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListenerBinderLocked: Listener was not registered for propId=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1113
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1108
    :cond_3
    :goto_0
    const-string v2, "XpDiagnosticService"

    const-string v3, "unregisterListenerBinderLocked: Listener was not previously registered."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 907
    const-string v0, "*XpDiagnosticService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Client Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpDiagnosticService$1oizBHRh1wZpUBfAm24McJrHj5I;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$1oizBHRh1wZpUBfAm24McJrHj5I;-><init>(Lcom/android/car/XpDiagnosticService;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpDiagnosticService$m4jewEimtS3lbQvaaxdCpLjn9nY;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$XpDiagnosticService$m4jewEimtS3lbQvaaxdCpLjn9nY;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPropertyToClientsMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$XpDiagnosticService$6nptzz1lzQOc3KFeyqEogPKaRVs;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$6nptzz1lzQOc3KFeyqEogPKaRVs;

    .line 914
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    .line 913
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$XpDiagnosticService$PzCC4iMY2jtExM0cAMi2wvMwzlg;

    invoke-direct {v1, p0, p1}, Lcom/android/car/-$$Lambda$XpDiagnosticService$PzCC4iMY2jtExM0cAMi2wvMwzlg;-><init>(Lcom/android/car/XpDiagnosticService;Ljava/io/PrintWriter;)V

    .line 914
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 924
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v0, p1}, Lcom/android/car/CallbackStatistics;->dump(Ljava/io/PrintWriter;)V

    .line 936
    const-string v0, "Ecus Int Data: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 938
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 939
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 940
    .local v3, "tmp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    .line 941
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    .end local v3    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    .end local v2    # "i":I
    :cond_0
    const-string v2, "Ecus Int Vector Data: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 946
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 947
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 948
    .local v2, "tmp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    .line 949
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 948
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 951
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getAebState()I
    .locals 1

    .line 1916
    const v0, 0x21402601

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAgsFailureState()I
    .locals 1

    .line 1886
    const v0, 0x21401249

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAirbagFaultSt()I
    .locals 1

    .line 1594
    const v0, 0x21401c12

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAllEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;
    .locals 1

    .line 1941
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->getCurrentEcusDiagData()Landroid/car/diagnostic/EcusFailureStates;

    move-result-object v0

    return-object v0
.end method

.method public getAllMsmModulesFailureStates()[I
    .locals 1

    .line 1896
    const v0, 0x21411c96

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTirePerssureSensorsFailureStates()[I
    .locals 1

    .line 1846
    const v0, 0x21411e10

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1

    .line 1841
    const v0, 0x21411e0e

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAlsErrorSt()I
    .locals 1

    .line 1600
    const v0, 0x2140180c

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAndLastDiagCmd()[B
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701405

    invoke-virtual {v0, v1}, Lcom/android/car/CarPropertyService;->getByteVectorProperty(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAtlsErrSt()I
    .locals 1

    .line 1534
    const v0, 0x2140180b

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAvasFault()I
    .locals 1

    .line 1573
    const v0, 0x2140320f

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getBatteryOverheatingState()I
    .locals 1

    .line 1851
    const v0, 0x21401241

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getBatteryPtcFailureStates()[I
    .locals 1

    .line 1936
    const v0, 0x2141124b

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltageLowState()I
    .locals 1

    .line 1866
    const v0, 0x21401245

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getCcsWorkState()I
    .locals 1

    .line 1856
    const v0, 0x21401242

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getCdcDataUploadSt()I
    .locals 1

    .line 1724
    const v0, 0x21402678

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getCiuSdcardFailureState()I
    .locals 1

    .line 1906
    const v0, 0x21402803

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getDcdcFailureState()I
    .locals 1

    .line 1861
    const v0, 0x21401243

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getDhcErr()I
    .locals 1

    .line 1606
    const v0, 0x21401c94

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getDvrFailureState()I
    .locals 1

    .line 1901
    const v0, 0x21402818

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getElectricMotorSystemHotState()I
    .locals 1

    .line 1871
    const v0, 0x21401246

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getElectricVacuumPumpFailureState()I
    .locals 1

    .line 1876
    const v0, 0x21401247

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEpbSysFailureState()I
    .locals 1

    .line 1831
    const v0, 0x2140240c

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEpsWarnLamp()I
    .locals 1

    .line 1717
    const v0, 0x2140240d

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEspAbsFault()I
    .locals 1

    .line 1698
    const v0, 0x2140240f

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEspApbErrSt()I
    .locals 1

    .line 1692
    const v0, 0x2140240e

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEspAvhFault()I
    .locals 1

    .line 1704
    const v0, 0x2140240b

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEspEspFault()I
    .locals 1

    .line 1686
    const v0, 0x21402409

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getFrontIpuFailureState()I
    .locals 1

    .line 1816
    const v0, 0x21401240

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHdcFailureState()I
    .locals 1

    .line 1836
    const v0, 0x2140240a

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHighBeamFailState()I
    .locals 1

    .line 1442
    const v0, 0x21401c86

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHighVoltageRelayAdhesionState()I
    .locals 1

    .line 1881
    const v0, 0x21401248

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHvacCompressorFailureStates()[I
    .locals 1

    .line 1931
    const v0, 0x21411a2f

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getHvacPtcFailureState()I
    .locals 1

    .line 1926
    const v0, 0x21401a2e

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getIbtFailureLamp()I
    .locals 1

    .line 1711
    const v0, 0x21402411

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLDtrOutputFailState()I
    .locals 1

    .line 1508
    const v0, 0x21401c8c

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLTurnLampFailState()I
    .locals 1

    .line 1480
    const v0, 0x21401c88

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLdwState()I
    .locals 1

    .line 1911
    const v0, 0x21402602

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLluErrSt()I
    .locals 1

    .line 1528
    const v0, 0x21402e16

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLowBeamFailState()I
    .locals 1

    .line 1473
    const v0, 0x21401c87

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getMaterSlaveSettings()[B
    .locals 2

    .line 1430
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170143a

    invoke-virtual {v0, v1}, Lcom/android/car/CarPropertyService;->getByteVectorProperty(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMcuLastDiagCmd()[B
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701404

    invoke-virtual {v0, v1}, Lcom/android/car/CarPropertyService;->getByteVectorProperty(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMsmdEcuErr()I
    .locals 1

    .line 1540
    const v0, 0x21401c8f

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getMsmdHeatSysErr()I
    .locals 1

    .line 1554
    const v0, 0x21401c91

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getMsmdVentilationMotorErr()I
    .locals 1

    .line 1547
    const v0, 0x21401c90

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getMsmpEcuErr()I
    .locals 1

    .line 1560
    const v0, 0x21401c92

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getMsmpHeatSysErr()I
    .locals 1

    .line 1567
    const v0, 0x21401c93

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getParkingLampFailState()I
    .locals 1

    .line 1515
    const v0, 0x21401c8d

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getRDtrOutputFailState()I
    .locals 1

    .line 1501
    const v0, 0x21401c8b

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getRTurnLampFailState()I
    .locals 1

    .line 1487
    const v0, 0x21401c89

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getRearFogFailState()I
    .locals 1

    .line 1494
    const v0, 0x21401c8a

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getRearIpuFailureState()I
    .locals 1

    .line 1821
    const v0, 0x2140123f

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuAlcCtrlRemind()I
    .locals 1

    .line 1804
    const v0, 0x21402672

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuBsdSw()I
    .locals 1

    .line 1742
    const v0, 0x21402605

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuDowSw()I
    .locals 1

    .line 1748
    const v0, 0x21402608

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuIcmApaErrTips()I
    .locals 1

    .line 1811
    const v0, 0x21402673

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuIhbSw()I
    .locals 1

    .line 1736
    const v0, 0x21402603

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuIslcSw()I
    .locals 1

    .line 1797
    const v0, 0x2140260d

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuLongCtrlRemind()I
    .locals 1

    .line 1791
    const v0, 0x21402627

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuRctaSw()I
    .locals 1

    .line 1754
    const v0, 0x21402606

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getScuRcwSw()I
    .locals 1

    .line 1760
    const v0, 0x21402607

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSideReversingState()I
    .locals 1

    .line 1921
    const v0, 0x2140262a

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSrrFlFailState()I
    .locals 1

    .line 1766
    const v0, 0x21402674

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSrrFrFailState()I
    .locals 1

    .line 1772
    const v0, 0x21402675

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSrrRlFailState()I
    .locals 1

    .line 1778
    const v0, 0x21402676

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSrrRrFailState()I
    .locals 1

    .line 1784
    const v0, 0x21402677

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSysErrorWarn()I
    .locals 1

    .line 1522
    const v0, 0x21401c8e

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSystemDiagContent()I
    .locals 1

    .line 1341
    monitor-enter p0

    .line 1342
    :try_start_0
    iget v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    monitor-exit p0

    return v0

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTcmMotorFailureStates()[I
    .locals 1

    .line 1891
    const v0, 0x2141124a

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntVectorValueOrThrow(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTpmsAbnormalPrWarn()I
    .locals 1

    .line 1587
    const v0, 0x21401e07

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getTpmsSysFaultWarn()I
    .locals 1

    .line 1580
    const v0, 0x21401e06

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuBCruiseErr()I
    .locals 1

    .line 1646
    const v0, 0x21401236

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuChgPortHotDsp()I
    .locals 1

    .line 1667
    const v0, 0x21401239

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuDeadBatteryFlag()I
    .locals 1

    .line 1680
    const v0, 0x2140123b

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuEbsErrDsp()I
    .locals 1

    .line 1626
    const v0, 0x21401233

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuEvErrLampDsp()I
    .locals 1

    .line 1613
    const v0, 0x21401231

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuEvErrorMessage()I
    .locals 3

    .line 1826
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2140123e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVcuGearWarning()I
    .locals 1

    .line 1620
    const v0, 0x21401232

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuLiquidHighTempErr()I
    .locals 1

    .line 1633
    const v0, 0x21401234

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuObcMsgLost()I
    .locals 1

    .line 1673
    const v0, 0x2140123a

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuPowerLimitationDsp()I
    .locals 1

    .line 1660
    const v0, 0x21401238

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuThermoRunawaySt()I
    .locals 1

    .line 1653
    const v0, 0x21401237

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getVcuWaterSensorErr()I
    .locals 1

    .line 1640
    const v0, 0x21401235

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getXpuXpuFailState()I
    .locals 1

    .line 1730
    const v0, 0x21402679

    invoke-direct {p0, v0}, Lcom/android/car/XpDiagnosticService;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 6

    .line 821
    monitor-enter p0

    .line 822
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.XPDIAG"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/XpDiagnosticService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 823
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 824
    new-instance v0, Lcom/android/car/XpDiagnosticService$DiagHandler;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/XpDiagnosticService$DiagHandler;-><init>(Lcom/android/car/XpDiagnosticService;Landroid/os/Looper;Lcom/android/car/XpDiagnosticService$1;)V

    iput-object v0, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    .line 825
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    .line 826
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->initEcusDataMap()V

    .line 828
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->initEcusDataConsumerMap()V

    .line 829
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->initSupportedPropConfigs()V

    .line 830
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->initSupportedCheckedPropConfigs()V

    .line 831
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->initSupportedAfterSalesPropConfigs()V

    .line 833
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21401409

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 834
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    .line 835
    .local v0, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 836
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 837
    .local v2, "prop":I
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/XpDiagnosticService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 838
    .end local v2    # "prop":I
    goto :goto_0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mReportEcusDiagRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/car/XpDiagnosticService$DiagHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void

    .line 826
    .end local v0    # "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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

    .line 1171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 1174
    .local v2, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/property/CarPropertyEvent;

    .line 1175
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v3}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    .line 1176
    .local v4, "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v5

    .line 1178
    .local v5, "propId":I
    iget-object v6, v1, Lcom/android/car/XpDiagnosticService;->mEcusFailureStatePropertyIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1179
    iget-boolean v6, v1, Lcom/android/car/XpDiagnosticService;->mEcusDiagDataValid:Z

    if-nez v6, :cond_2

    .line 1180
    const-string v6, "XpDiagnosticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore sending changed data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    goto :goto_0

    .line 1183
    :cond_1
    iget-object v6, v1, Lcom/android/car/XpDiagnosticService;->mAfterSalesIds:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1184
    goto :goto_0

    .line 1188
    :cond_2
    iget-object v6, v1, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1189
    :try_start_0
    iget-object v7, v1, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1190
    .local v7, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    if-nez v7, :cond_3

    .line 1192
    invoke-static {v5}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1193
    const-string v6, "XpDiagnosticService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPropertyChange: no listener registered for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-static {v5}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1193
    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/XpDiagnosticService$Client;

    .line 1200
    .local v8, "c":Lcom/android/car/XpDiagnosticService$Client;
    invoke-virtual {v8}, Lcom/android/car/XpDiagnosticService$Client;->getListenerBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1201
    .local v9, "listenerBinder":Landroid/os/IBinder;
    nop

    .line 1202
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 1203
    .local v10, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-nez v10, :cond_4

    .line 1205
    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v8}, Lcom/android/car/XpDiagnosticService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v12

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v11

    .line 1206
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_4
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    .end local v8    # "c":Lcom/android/car/XpDiagnosticService$Client;
    .end local v9    # "listenerBinder":Landroid/os/IBinder;
    .end local v10    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_1

    .line 1211
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v4    # "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v5    # "propId":I
    .end local v7    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    :cond_5
    goto/16 :goto_0

    .line 1190
    .restart local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .restart local v4    # "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .restart local v5    # "propId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1213
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v4    # "carPropertyValue":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v5    # "propId":I
    :cond_6
    invoke-static {}, Lcom/android/car/CarLog;->isPerfLogEnable()Z

    move-result v3

    .line 1215
    .local v3, "perfLogEnable":Z
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 1216
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1217
    .local v6, "listener":Landroid/car/hardware/property/ICarPropertyEventListener;
    if-eqz v6, :cond_e

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "client":Lcom/android/car/XpDiagnosticService$Client;
    invoke-interface {v6}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1220
    .local v7, "listenerBinder":Landroid/os/IBinder;
    if-eqz v7, :cond_7

    .line 1221
    iget-object v8, v1, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/car/XpDiagnosticService$Client;

    .line 1223
    .end local v0    # "client":Lcom/android/car/XpDiagnosticService$Client;
    .local v8, "client":Lcom/android/car/XpDiagnosticService$Client;
    :cond_7
    move-object v8, v0

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object v9, v0

    .line 1225
    .local v9, "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1226
    .local v10, "startTimeStamp":J
    invoke-interface {v6, v9}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 1227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 1228
    .local v12, "costTimeInMs":J
    sget-wide v14, Lcom/android/car/CarPropertyService;->MAX_SEND_PROPS_INTERVAL_MS:J

    cmp-long v0, v12, v14

    if-lez v0, :cond_a

    .line 1229
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1230
    nop

    .line 1231
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {v14}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v14

    invoke-virtual {v14}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v14

    .line 1232
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

    .line 1233
    .local v17, "sendTimeStamp":J
    if-nez v8, :cond_8

    :try_start_3
    const-string v0, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1248
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

    .line 1234
    .restart local v10    # "startTimeStamp":J
    .restart local v12    # "costTimeInMs":J
    .restart local v14    # "propertyId":I
    .restart local v17    # "sendTimeStamp":J
    :cond_8
    :try_start_4
    invoke-virtual {v8}, Lcom/android/car/XpDiagnosticService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "clientDescription":Ljava/lang/String;
    :goto_3
    const-string v15, "XpDiagnosticService"
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

    .line 1236
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

    .line 1235
    invoke-static {v15, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v4    # "sendTimeStamp":J
    .end local v14    # "propertyId":I
    .end local v22    # "clientDescription":Ljava/lang/String;
    goto :goto_6

    .line 1248
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

    .line 1246
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v10    # "startTimeStamp":J
    .restart local v12    # "costTimeInMs":J
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_6

    .line 1240
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-eqz v3, :cond_c

    .line 1241
    if-nez v8, :cond_b

    const-string v0, ""

    goto :goto_5

    .line 1242
    :cond_b
    invoke-virtual {v8}, Lcom/android/car/XpDiagnosticService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .restart local v0    # "clientDescription":Ljava/lang/String;
    :goto_5
    const-string v2, "XpDiagnosticService"

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

    .line 1246
    .end local v0    # "clientDescription":Ljava/lang/String;
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    iget-object v2, v8, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    .line 1247
    invoke-static {v8}, Lcom/android/car/XpDiagnosticService$Client;->access$400(Lcom/android/car/XpDiagnosticService$Client;)Landroid/os/IBinder;

    move-result-object v5

    .line 1246
    invoke-virtual {v0, v9, v2, v4, v5}, Lcom/android/car/CallbackStatistics;->addPropsMethodCallCount(Ljava/util/List;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1256
    .end local v10    # "startTimeStamp":J
    .end local v12    # "costTimeInMs":J
    goto :goto_8

    .line 1248
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

    .line 1251
    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :goto_7
    if-eqz v8, :cond_d

    .line 1252
    const-string v2, "XpDiagnosticService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/car/XpDiagnosticService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_d
    const-string v2, "XpDiagnosticService"

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
    .end local v8    # "client":Lcom/android/car/XpDiagnosticService$Client;
    .end local v9    # "propertyEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    .end local v21    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_8

    .line 1258
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    .line 1215
    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :goto_8
    move-object/from16 v2, v19

    move-object/from16 v4, v20

    goto/16 :goto_2

    .line 1259
    .end local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    :cond_f
    move-object/from16 v19, v2

    .end local v2    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    .restart local v19    # "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    return-void
.end method

.method public onPropertySetError(II)V
    .locals 9
    .param p1, "property"    # I
    .param p2, "errorCode"    # I

    .line 1262
    invoke-static {p1}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    .line 1263
    .local v0, "callbackLogEnable":Z
    if-eqz v0, :cond_0

    .line 1264
    const-string v1, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPropertySetError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1270
    :try_start_0
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1271
    .local v2, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    if-eqz v2, :cond_4

    .line 1273
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1274
    .local v1, "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-static {p1, p2}, Lcom/android/car/XpDiagnosticService;->createErrorEvent(II)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/XpDiagnosticService$Client;

    .line 1277
    .local v4, "c":Lcom/android/car/XpDiagnosticService$Client;
    :try_start_1
    invoke-static {}, Lcom/android/car/CarLog;->isPerfLogEnable()Z

    move-result v5

    .line 1278
    .local v5, "perfLogEnable":Z
    if-eqz v5, :cond_1

    .line 1279
    const-string v6, "XpDiagnosticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++onPropertySetError pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " binder:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-static {v4}, Lcom/android/car/XpDiagnosticService$Client;->access$400(Lcom/android/car/XpDiagnosticService$Client;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " eventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1279
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_1
    invoke-virtual {v4}, Lcom/android/car/XpDiagnosticService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 1284
    if-eqz v5, :cond_2

    .line 1285
    const-string v6, "XpDiagnosticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--onPropertySetError pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " binder:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-static {v4}, Lcom/android/car/XpDiagnosticService$Client;->access$400(Lcom/android/car/XpDiagnosticService$Client;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " eventList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1285
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1294
    .end local v5    # "perfLogEnable":Z
    :cond_2
    goto :goto_1

    .line 1289
    :catch_0
    move-exception v5

    .line 1292
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "XpDiagnosticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onEvent calling failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1292
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    .end local v4    # "c":Lcom/android/car/XpDiagnosticService$Client;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto/16 :goto_0

    .line 1296
    .end local v1    # "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :cond_3
    goto :goto_2

    .line 1297
    :cond_4
    if-eqz v0, :cond_5

    .line 1298
    const-string v1, "XpDiagnosticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPropertySetError called with no listener registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1298
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_5
    :goto_2
    return-void

    .line 1271
    .end local v2    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 24
    .param p1, "propId"    # I
    .param p2, "rate"    # F
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    move-object/from16 v1, p0

    move/from16 v9, p1

    move/from16 v10, p2

    .line 956
    move-object/from16 v11, p3

    const-string v0, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-static/range {p1 .. p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-direct/range {p0 .. p0}, Lcom/android/car/XpDiagnosticService;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v12

    .line 963
    .local v12, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v12, :cond_0

    .line 964
    const-string v0, "XpDiagnosticService"

    const-string v2, "registerListener:  no supported properties"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void

    .line 968
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    const-string v0, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not in config list:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void

    .line 976
    :cond_1
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/car/XpDiagnosticService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 978
    if-eqz v11, :cond_f

    .line 983
    invoke-interface/range {p3 .. p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 985
    .local v13, "listenerBinder":Landroid/os/IBinder;
    iget-object v2, v1, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 987
    :try_start_0
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/XpDiagnosticService$Client;

    .line 988
    .local v0, "client":Lcom/android/car/XpDiagnosticService$Client;
    if-nez v0, :cond_2

    .line 989
    new-instance v3, Lcom/android/car/XpDiagnosticService$Client;

    invoke-direct {v3, v1, v11}, Lcom/android/car/XpDiagnosticService$Client;-><init>(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/property/ICarPropertyEventListener;)V

    move-object v0, v3

    .line 991
    :cond_2
    invoke-virtual {v0, v9, v10}, Lcom/android/car/XpDiagnosticService$Client;->addProperty(IF)V

    .line 993
    iget-object v3, v1, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 994
    .local v3, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    if-nez v3, :cond_3

    .line 995
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v3, v4

    .line 996
    iget-object v4, v1, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 999
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    .end local v0    # "client":Lcom/android/car/XpDiagnosticService$Client;
    .end local v3    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/XpDiagnosticService$Client;>;"
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1004
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v14, v0

    .line 1005
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mEcusFailureStatePropertyIds:Landroid/util/ArraySet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1006
    iget-boolean v0, v1, Lcom/android/car/XpDiagnosticService;->mEcusDiagDataValid:Z

    if-eqz v0, :cond_a

    .line 1007
    invoke-direct/range {p0 .. p1}, Lcom/android/car/XpDiagnosticService;->getCarPropertyConfig(I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v8

    .line 1009
    .local v8, "config":Landroid/car/hardware/CarPropertyConfig;
    if-nez v8, :cond_5

    .line 1010
    const-string v0, "XpDiagnosticService"

    const-string v2, "registerListener:  no supported properties to notify"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void

    .line 1013
    :cond_5
    invoke-virtual {v8}, Landroid/car/hardware/CarPropertyConfig;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    .line 1014
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Integer;

    if-ne v0, v6, :cond_7

    .line 1016
    iget-object v2, v1, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1017
    :try_start_1
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1018
    .local v0, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    .line 1020
    .local v7, "propData":Ljava/lang/Integer;
    const/4 v2, -0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 1021
    new-instance v5, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v4, Landroid/car/hardware/CarPropertyValue;

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1022
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v2, v4

    move v3, v9

    move-object v15, v4

    move/from16 v4, v16

    move-object/from16 v20, v5

    move/from16 v5, v17

    move-object/from16 v21, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, v18

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "propData":Ljava/lang/Integer;
    .local v16, "propData":Ljava/lang/Integer;
    .local v21, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v17, v8

    move-object/from16 v8, v16

    .end local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    .local v17, "config":Landroid/car/hardware/CarPropertyConfig;
    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    move-object/from16 v2, v20

    const/4 v3, 0x0

    invoke-direct {v2, v3, v15}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 1021
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v16    # "propData":Ljava/lang/Integer;
    goto :goto_0

    .line 1024
    .end local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .end local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    :cond_6
    move-object/from16 v21, v6

    move-object/from16 v17, v8

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto/16 :goto_2

    .line 1018
    .end local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .end local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v17, v8

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1024
    .end local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .end local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    :cond_7
    move-object/from16 v21, v6

    move-object/from16 v17, v8

    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    .restart local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Ljava/lang/Integer;

    move-object/from16 v15, v21

    if-ne v0, v15, :cond_9

    .line 1026
    .end local v21    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v15, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, v1, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1027
    :try_start_3
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1028
    .local v0, "value":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/Integer;Ljava/lang/Long;>;"
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1029
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [Ljava/lang/Integer;

    .line 1030
    .local v8, "propData":[Ljava/lang/Integer;
    sget-object v2, Landroid/car/diagnostic/EcusFailureStates;->INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer;

    if-eq v2, v8, :cond_8

    .line 1031
    new-instance v6, Landroid/car/hardware/property/CarPropertyEvent;

    new-instance v7, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1032
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v2, v7

    move v3, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v6, v18

    move-object/from16 v16, v8

    .end local v8    # "propData":[Ljava/lang/Integer;
    .local v16, "propData":[Ljava/lang/Integer;
    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 1031
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    .end local v0    # "value":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v16    # "propData":[Ljava/lang/Integer;
    :cond_8
    goto :goto_2

    .line 1028
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1035
    :cond_9
    const-string v0, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for propId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    .end local v15    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "config":Landroid/car/hardware/CarPropertyConfig;
    :goto_2
    goto :goto_3

    .line 1039
    :cond_a
    const-string v0, "XpDiagnosticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore sending current data for prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1043
    :cond_b
    :try_start_5
    iget-object v0, v1, Lcom/android/car/XpDiagnosticService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Lcom/android/car/hal/PropertyHalService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 1044
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_c

    .line 1045
    new-instance v3, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {v3, v2, v0}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    move-object v2, v3

    .line 1047
    .local v2, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1053
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v2    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_c
    goto :goto_3

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/car/CarLog;->isGetLogEnable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1051
    const-string v2, "XpDiagnosticService"

    const-string v3, "get prop data failed, won\'t callback"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1058
    :try_start_6
    invoke-interface {v11, v14}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1064
    goto :goto_4

    .line 1059
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1062
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "XpDiagnosticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent calling failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-static/range {p1 .. p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1062
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_e
    :goto_4
    return-void

    .line 1001
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 979
    .end local v13    # "listenerBinder":Landroid/os/IBinder;
    :cond_f
    const-string v0, "XpDiagnosticService"

    const-string v2, "registerListener: Listener is null."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const v2, 0x21401409

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 866
    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    .line 867
    .local v0, "props":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 868
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 869
    .local v2, "prop":I
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v3, v2, v4}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 870
    .end local v2    # "prop":I
    goto :goto_0

    .line 873
    :cond_0
    monitor-enter p0

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandler:Lcom/android/car/XpDiagnosticService$DiagHandler;

    invoke-static {v1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->access$300(Lcom/android/car/XpDiagnosticService$DiagHandler;)V

    .line 875
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 876
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 877
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 879
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 882
    goto :goto_1

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "XpDiagnosticService"

    const-string v4, "Timeout while joining for handler thread to join."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 885
    :try_start_2
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 886
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/car/XpDiagnosticService;->mSupportedPropConfigs:Ljava/util/Map;

    .line 887
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 888
    iput-object v3, p0, Lcom/android/car/XpDiagnosticService;->mSupportedCheckedPropConfigs:Ljava/util/Map;

    .line 889
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/XpDiagnosticService$Client;

    .line 890
    .local v4, "c":Lcom/android/car/XpDiagnosticService$Client;
    invoke-virtual {v4}, Lcom/android/car/XpDiagnosticService$Client;->release()V

    .line 891
    .end local v4    # "c":Lcom/android/car/XpDiagnosticService$Client;
    goto :goto_2

    .line 892
    :cond_1
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 893
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 894
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mCallbackStatistics:Lcom/android/car/CallbackStatistics;

    invoke-virtual {v3}, Lcom/android/car/CallbackStatistics;->release()V

    .line 895
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 897
    iget-object v3, p0, Lcom/android/car/XpDiagnosticService;->mEcusDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 898
    :try_start_3
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataConsumerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 899
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 900
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataConsumerMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 901
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService;->mEcusIntVectorDataMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 902
    monitor-exit v3

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 895
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 876
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public sendAndDiagCmd([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1336
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701405

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1337
    return-void
.end method

.method public sendCableDiagToMcu([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1370
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701412

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1371
    return-void
.end method

.method public sendInsufficientSQI([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1400
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170141b

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1401
    return-void
.end method

.method public sendIpErr([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1405
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170141c

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1406
    return-void
.end method

.method public sendLinkStatus([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1375
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701416

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1376
    return-void
.end method

.method public sendMaterSlaveMode([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1425
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170143b

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1426
    return-void
.end method

.method public sendMaterSlaveSettingsResponse([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1435
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170143a

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1436
    return-void
.end method

.method public sendMcuDiagCmdAck([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1326
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701404

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1327
    return-void
.end method

.method public sendReceivedPak([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1390
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701419

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1391
    return-void
.end method

.method public sendResetPhyToMcu([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1360
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701410

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1361
    return-void
.end method

.method public sendSQI1000Base([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1420
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701414

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1421
    return-void
.end method

.method public sendSQI100Base([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1415
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701413

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1416
    return-void
.end method

.method public sendSQIMax([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1410
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701415

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1411
    return-void
.end method

.method public sendSQIValue([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1380
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701417

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1381
    return-void
.end method

.method public sendTestModeToMcu([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1365
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701411

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1366
    return-void
.end method

.method public sendTransmittedPak([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1385
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21701418

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1386
    return-void
.end method

.method public sendUnexpectedLnkLoss([B)V
    .locals 2
    .param p1, "cmd"    # [B

    .line 1395
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2170141a

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setByteVectorProperty(I[B)V

    .line 1396
    return-void
.end method

.method public setCarServiceDebugEnabled(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 1348
    monitor-enter p0

    .line 1349
    if-eqz p1, :cond_0

    .line 1350
    :try_start_0
    iget v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    goto :goto_0

    .line 1354
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1352
    :cond_0
    iget v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/car/XpDiagnosticService;->mSystemDiagContent:I

    .line 1354
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->setDebugEnabled(Z)V

    .line 1356
    return-void

    .line 1354
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1079
    const-string v0, "XpDiagnosticService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener prop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
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

    .line 1079
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1086
    if-eqz p2, :cond_0

    .line 1091
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1092
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1093
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/XpDiagnosticService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    .line 1094
    monitor-exit v1

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1087
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_0
    const-string v0, "XpDiagnosticService"

    const-string v1, "unregisterListener: Listener is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
