.class public Lcom/android/car/ICarImpl;
.super Landroid/car/ICar$Stub;
.source "ICarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ICarImpl$CarShellCommand;
    }
.end annotation


# static fields
.field private static final AOSP_DIAGNOSTIC_SERVICE:Ljava/lang/String; = "diagnostic"

.field private static final ENABLE_BLUETOOTH_SERVICE:Z = false

.field public static final INTERNAL_INPUT_SERVICE:Ljava/lang/String; = "internal_input"

.field public static final INTERNAL_SYSTEM_ACTIVITY_MONITORING_SERVICE:Ljava/lang/String; = "system_activity_monitoring"

.field private static final SHA1_COM_EX_DABPLAYER_PAD:Ljava/lang/String; = "20:75:87:ED:28:A3:FC:6D:D0:BB:A7:38:5C:15:1F:96:CC:F1:B3:5B"

.field private static final SHA1_COM_TELENAV_APP_ARP:Ljava/lang/String; = "52:B2:38:EC:BA:68:C2:47:4A:2A:4B:0B:12:01:D4:36:94:96:F3:1D"

.field private static final SHA1_COM_XIAOPENG_DVR:Ljava/lang/String; = "27:19:6E:38:6B:87:5E:76:AD:F7:00:E7:EA:84:E4:C6:EE:E3:3D:FA"

.field private static final TAG:Ljava/lang/String; = "ICarImpl"

.field private static final VHAL_TIMING_TAG:Ljava/lang/String; = "VehicleHalTiming"

.field private static final mBootTiming:Landroid/util/TimingsTraceLog;

.field private static final mPermmissionCached:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPermmissionCached"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAirplaneModeService:Lcom/android/car/AirplaneModeService;

.field private final mAllServices:[Lcom/android/car/CarServiceBase;

.field private final mAppFocusService:Lcom/android/car/AppFocusService;

.field private final mCarAudioService:Lcom/android/car/CarAudioService;

.field private final mCarBluetoothService:Lcom/android/car/CarBluetoothService;

.field private final mCarConditionService:Lcom/android/car/CarConditionService;

.field private final mCarConfigurationService:Lcom/android/car/CarConfigurationService;

.field private final mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

.field private final mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

.field private final mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

.field private final mCarLocationService:Lcom/android/car/CarLocationService;

.field private final mCarNightService:Lcom/android/car/CarNightService;

.field private final mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

.field private final mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

.field private final mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private final mCarProjectionService:Lcom/android/car/CarProjectionService;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mCarRemindService:Lcom/android/car/xpeng/remind/CarRemindService;

.field private final mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

.field private mCarTestService:Lcom/android/car/CarTestService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

.field private mCarUserService:Lcom/android/car/user/CarUserService;

.field private final mContext:Landroid/content/Context;

.field private final mDumpServices:[Lcom/android/car/CarServiceBase;

.field private final mGarageModeService:Lcom/android/car/GarageModeService;

.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

.field private final mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

.field private final mStartTime:J

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private final mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

.field private final mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

.field private final mUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

.field private final mVehicleInterfaceName:Ljava/lang/String;

.field private mVmsPublisherService:Lcom/android/car/VmsPublisherService;

.field private mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

.field private final mXpDiagnosticService:Lcom/android/car/XpDiagnosticService;

.field private final mXpSharedMemoryService:Lcom/android/car/XpSharedMemoryService;

.field private final mXpUpdateTimeService:Lcom/android/car/XpUpdateTimeService;

.field private final mXpVehicleService:Lcom/android/car/XpVehicleService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 123
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "VehicleHalTiming"

    const-wide/16 v2, 0x800

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/car/ICarImpl;->mPermmissionCached:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Lcom/android/car/systeminterface/SystemInterface;Lcom/android/car/CanBusErrorNotifier;Ljava/lang/String;)V
    .locals 5
    .param p1, "serviceContext"    # Landroid/content/Context;
    .param p2, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p3, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;
    .param p4, "errorNotifier"    # Lcom/android/car/CanBusErrorNotifier;
    .param p5, "vehicleInterfaceName"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Landroid/car/ICar$Stub;-><init>()V

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/ICarImpl;->mStartTime:J

    .line 144
    iput-object p1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    .line 145
    iput-object p3, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 146
    new-instance v0, Lcom/android/car/hal/VehicleHal;

    invoke-direct {v0, p2}, Lcom/android/car/hal/VehicleHal;-><init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 147
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VehicleHal;->setContext(Landroid/content/Context;)V

    .line 148
    iput-object p5, p0, Lcom/android/car/ICarImpl;->mVehicleInterfaceName:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {v0, p1}, Lcom/android/car/SystemActivityMonitoringService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 150
    new-instance v0, Lcom/android/car/CarPowerManagementService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Lcom/android/car/hal/VehicleHal;->getPowerHal()Lcom/android/car/hal/PowerHalService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/android/car/CarPowerManagementService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PowerHalService;Lcom/android/car/systeminterface/SystemInterface;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 152
    new-instance v0, Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarPropertyService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 153
    new-instance v0, Lcom/android/car/CarDrivingStateService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarDrivingStateService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 154
    new-instance v0, Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/car/CarUxRestrictionsManagerService;-><init>(Landroid/content/Context;Lcom/android/car/CarDrivingStateService;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 156
    new-instance v0, Lcom/android/car/pm/CarPackageManagerService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/car/pm/CarPackageManagerService;-><init>(Landroid/content/Context;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/SystemActivityMonitoringService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    .line 159
    new-instance v0, Lcom/android/car/CarInputService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getInputHal()Lcom/android/car/hal/InputHalService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarInputService;-><init>(Landroid/content/Context;Lcom/android/car/hal/InputHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    .line 160
    new-instance v0, Lcom/android/car/CarProjectionService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarProjectionService;-><init>(Landroid/content/Context;Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    .line 161
    new-instance v0, Lcom/android/car/GarageModeService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-direct {v0, v1, v2}, Lcom/android/car/GarageModeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/GarageModeService;

    .line 162
    new-instance v0, Lcom/android/car/CarLocationService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/car/CarLocationService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarLocationService:Lcom/android/car/CarLocationService;

    .line 164
    new-instance v0, Lcom/android/car/AppFocusService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {v0, p1, v1}, Lcom/android/car/AppFocusService;-><init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    .line 165
    new-instance v0, Lcom/android/car/CarAudioService;

    invoke-direct {v0, p1}, Lcom/android/car/CarAudioService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/CarAudioService;

    .line 166
    new-instance v0, Lcom/android/car/CarNightService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarNightService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    .line 167
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/car/cluster/InstrumentClusterService;-><init>(Landroid/content/Context;Lcom/android/car/AppFocusService;Lcom/android/car/CarInputService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    .line 169
    new-instance v0, Lcom/android/car/SystemStateControllerService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/CarAudioService;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/car/SystemStateControllerService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarAudioService;Lcom/android/car/ICarImpl;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

    .line 171
    new-instance v0, Lcom/android/car/PerUserCarServiceHelper;

    invoke-direct {v0, p1}, Lcom/android/car/PerUserCarServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    .line 172
    new-instance v0, Lcom/android/car/CarBluetoothService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/car/CarBluetoothService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    .line 174
    new-instance v0, Lcom/android/car/VmsSubscriberService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getVmsHal()Lcom/android/car/hal/VmsHalService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/VmsSubscriberService;-><init>(Landroid/content/Context;Lcom/android/car/hal/VmsHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    .line 175
    new-instance v0, Lcom/android/car/VmsPublisherService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getVmsHal()Lcom/android/car/hal/VmsHalService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/VmsPublisherService;-><init>(Landroid/content/Context;Lcom/android/car/hal/VmsHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mVmsPublisherService:Lcom/android/car/VmsPublisherService;

    .line 176
    new-instance v0, Lcom/android/car/CarDiagnosticService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarDiagnosticService;-><init>(Landroid/content/Context;Lcom/android/car/hal/DiagnosticHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    .line 177
    new-instance v0, Lcom/android/car/CarStorageMonitoringService;

    invoke-direct {v0, p1, p3}, Lcom/android/car/CarStorageMonitoringService;-><init>(Landroid/content/Context;Lcom/android/car/systeminterface/SystemInterface;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    .line 179
    new-instance v0, Lcom/android/car/CarConfigurationService;

    new-instance v1, Lcom/android/car/JsonReaderImpl;

    invoke-direct {v1}, Lcom/android/car/JsonReaderImpl;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/car/CarConfigurationService;-><init>(Landroid/content/Context;Lcom/android/car/CarConfigurationService$JsonReader;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    .line 181
    new-instance v0, Landroid/car/user/CarUserManagerHelper;

    invoke-direct {v0, p1}, Landroid/car/user/CarUserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    .line 182
    new-instance v0, Lcom/android/car/AirplaneModeService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-direct {v0, v1, v2}, Lcom/android/car/AirplaneModeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mAirplaneModeService:Lcom/android/car/AirplaneModeService;

    .line 184
    new-instance v0, Lcom/android/car/XpVehicleService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/car/XpVehicleService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mXpVehicleService:Lcom/android/car/XpVehicleService;

    .line 185
    new-instance v0, Lcom/android/car/XpSharedMemoryService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-direct {v0, v1, v2}, Lcom/android/car/XpSharedMemoryService;-><init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mXpSharedMemoryService:Lcom/android/car/XpSharedMemoryService;

    .line 186
    new-instance v0, Lcom/android/car/XpDiagnosticService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v4, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/car/XpDiagnosticService;-><init>(Lcom/android/car/CarPropertyService;Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/hal/VehicleHal;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mXpDiagnosticService:Lcom/android/car/XpDiagnosticService;

    .line 188
    new-instance v0, Lcom/android/car/XpUpdateTimeService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/car/XpUpdateTimeService;-><init>(Lcom/android/car/CarPropertyService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mXpUpdateTimeService:Lcom/android/car/XpUpdateTimeService;

    .line 189
    new-instance v0, Lcom/android/car/CarConditionService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/car/CarConditionService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/hal/PropertyHalService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarConditionService:Lcom/android/car/CarConditionService;

    .line 190
    new-instance v0, Lcom/android/car/permission/CarPermissionManagerService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, v1, v2}, Lcom/android/car/permission/CarPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

    .line 191
    new-instance v0, Lcom/android/car/intelligent/CarIntelligentEngineService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, v1, v2}, Lcom/android/car/intelligent/CarIntelligentEngineService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

    .line 192
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

    .line 194
    const-class v0, Lcom/android/car/permission/CarPermissionManagerService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

    invoke-static {v0, v1}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 195
    new-instance v0, Lcom/android/car/xpeng/remind/CarRemindService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Lcom/android/car/hal/VehicleHal;->getPropertyHal()Lcom/android/car/hal/PropertyHalService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/car/xpeng/remind/CarRemindService;-><init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;Lcom/android/car/CarPropertyService;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarRemindService:Lcom/android/car/xpeng/remind/CarRemindService;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "allServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarServiceBase;>;"
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarLocationService:Lcom/android/car/CarLocationService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/GarageModeService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/CarAudioService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mSystemStateControllerService:Lcom/android/car/SystemStateControllerService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mVmsPublisherService:Lcom/android/car/VmsPublisherService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mXpVehicleService:Lcom/android/car/XpVehicleService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mXpDiagnosticService:Lcom/android/car/XpDiagnosticService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mAirplaneModeService:Lcom/android/car/AirplaneModeService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mXpSharedMemoryService:Lcom/android/car/XpSharedMemoryService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mXpUpdateTimeService:Lcom/android/car/XpUpdateTimeService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarConditionService:Lcom/android/car/CarConditionService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarRemindService:Lcom/android/car/xpeng/remind/CarRemindService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    invoke-virtual {v1}, Landroid/car/user/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lcom/android/car/user/CarUserService;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mUserManagerHelper:Landroid/car/user/CarUserManagerHelper;

    invoke-direct {v1, p1, v2}, Lcom/android/car/user/CarUserService;-><init>(Landroid/content/Context;Landroid/car/user/CarUserManagerHelper;)V

    iput-object v1, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    .line 236
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mCarUserService:Lcom/android/car/user/CarUserService;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/car/CarServiceBase;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/car/CarServiceBase;

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    .line 240
    const/16 v2, 0xd

    new-array v2, v2, [Lcom/android/car/CarServiceBase;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mXpVehicleService:Lcom/android/car/XpVehicleService;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mXpUpdateTimeService:Lcom/android/car/XpUpdateTimeService;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mXpSharedMemoryService:Lcom/android/car/XpSharedMemoryService;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mXpDiagnosticService:Lcom/android/car/XpDiagnosticService;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/CarAudioService;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mAirplaneModeService:Lcom/android/car/AirplaneModeService;

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    aput-object v3, v2, v1

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarConditionService:Lcom/android/car/CarConditionService;

    aput-object v3, v2, v1

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

    aput-object v3, v2, v1

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

    aput-object v3, v2, v1

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/android/car/ICarImpl;->mDumpServices:[Lcom/android/car/CarServiceBase;

    .line 245
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/ICarImpl;)Lcom/android/car/permission/CarPermissionManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPermissionManagerService:Lcom/android/car/permission/CarPermissionManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/ICarImpl;)Lcom/android/car/intelligent/CarIntelligentEngineService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/ICarImpl;)Lcom/android/car/xpeng/guard/CarGuardModeService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/ICarImpl;)Lcom/android/car/CarNightService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarNightService:Lcom/android/car/CarNightService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/ICarImpl;)Lcom/android/car/GarageModeService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mGarageModeService:Lcom/android/car/GarageModeService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/ICarImpl;)Lcom/android/car/hal/VehicleHal;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/ICarImpl;

    .line 66
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    return-object v0
.end method

.method public static assertAnyDiagnosticPermission(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 547
    const-string v0, "android.car.permission.CAR_DIAGNOSTICS"

    const-string v1, "android.car.permission.CLEAR_CAR_DIAGNOSTICS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertAnyPermission(Landroid/content/Context;[Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public static varargs assertAnyPermission(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 604
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 605
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 607
    return-void

    .line 604
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires any of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertClusterManagerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 535
    const-string v0, "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public static assertDrivingStatePermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 553
    const-string v0, "android.car.permission.CAR_DRIVING_STATE"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public static assertNavigationManagerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 531
    const-string v0, "android.car.permission.CAR_NAVIGATION_MANAGER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public static assertPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 565
    if-nez p1, :cond_0

    .line 566
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 571
    return-void

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertPowerPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 539
    const-string v0, "android.car.permission.CAR_POWER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public static assertProjectionPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 543
    const-string v0, "android.car.permission.CAR_PROJECTION"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public static assertSystemUidOrSystemSignatures(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 393
    invoke-static {}, Lcom/android/car/ICarImpl;->isCallingFromSystemProcessOrSelf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/car/ICarImpl;->isCallingMatchSystemSignatures(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "CarApi Caller does not have the system signature or is not in target uid list!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    :goto_0
    return-void
.end method

.method public static assertVehicleHalMockPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 527
    const-string v0, "android.car.permission.CAR_MOCK_VEHICLE_HAL"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static assertVmsPublisherPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 557
    const-string v0, "android.car.permission.VMS_PUBLISHER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public static assertVmsSubscriberPermission(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 561
    const-string v0, "android.car.permission.VMS_SUBSCRIBER"

    invoke-static {p0, v0}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "service"    # Lcom/android/car/CarServiceBase;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 656
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/car/CarServiceBase;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed dumping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 581
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 582
    return v0

    .line 584
    :cond_0
    const/4 v1, 0x0

    .line 585
    .local v1, "isGranted":Z
    sget-object v2, Lcom/android/car/ICarImpl;->mPermmissionCached:Ljava/util/Map;

    monitor-enter v2

    .line 586
    :try_start_0
    sget-object v3, Lcom/android/car/ICarImpl;->mPermmissionCached:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 587
    .local v3, "history":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    monitor-exit v2

    return v0

    .line 590
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 592
    if-eqz v1, :cond_4

    .line 593
    if-nez v3, :cond_3

    .line 594
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v3, v0

    .line 595
    sget-object v0, Lcom/android/car/ICarImpl;->mPermmissionCached:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_3
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v3    # "history":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    monitor-exit v2

    .line 600
    return v1

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isCallingFromSystemProcessOrSelf()Z
    .locals 3

    .line 331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 332
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 333
    .local v1, "pid":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0x417

    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v2, 0x411

    if-eq v0, v2, :cond_0

    .line 336
    const/4 v2, 0x0

    return v2

    .line 338
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method static isCallingMatchSystemSignatures(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 344
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 345
    .local v1, "pid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 347
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    .line 348
    .local v3, "res":I
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 349
    return v4

    .line 352
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 354
    invoke-static {p0, v1, v0}, Lcom/android/car/ProcessUtils;->getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "packName":Ljava/lang/String;
    const-string v6, "com.ex.dabplayer.pad"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    invoke-static {p0, v5}, Lcom/android/car/utils/AppUtils;->getAppSignatureSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "sha1":Ljava/lang/String;
    const-string v7, "20:75:87:ED:28:A3:FC:6D:D0:BB:A7:38:5C:15:1F:96:CC:F1:B3:5B"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 368
    return v4

    .line 371
    .end local v5    # "packName":Ljava/lang/String;
    .end local v6    # "sha1":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 373
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/android/car/ProcessUtils;->getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5    # "packName":Ljava/lang/String;
    const-string v6, "com.xiaopeng.dvr"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    invoke-static {p0, v5}, Lcom/android/car/utils/AppUtils;->getAppSignatureSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 378
    .restart local v6    # "sha1":Ljava/lang/String;
    const-string v7, "27:19:6E:38:6B:87:5E:76:AD:F7:00:E7:EA:84:E4:C6:EE:E3:3D:FA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    .line 379
    return v4

    .line 385
    .end local v5    # "packName":Ljava/lang/String;
    .end local v6    # "sha1":Ljava/lang/String;
    :cond_3
    :goto_0
    goto :goto_1

    .line 383
    :catch_0
    move-exception v4

    .line 384
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p0, v1, v0}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "processName":Ljava/lang/String;
    const-string v5, "ICarImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CarAPi [uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] does not have the system signature or  is not in target uid list! res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v5, 0x0

    return v5
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 669
    const-string v0, "ICarImpl"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .line 675
    sget-object v0, Lcom/android/car/ICarImpl;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 676
    return-void
.end method


# virtual methods
.method public disableFeature(Ljava/lang/String;)I
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump CarService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    return-void

    .line 622
    :cond_0
    if-eqz p3, :cond_4

    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_1

    .line 647
    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 650
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commands not supported in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 648
    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/android/car/ICarImpl;->execShellCmd([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto/16 :goto_4

    .line 623
    :cond_4
    :goto_1
    const-string v0, "*dump car service*"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    :try_start_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 626
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 627
    .local v1, "now":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    current date time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    run time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/car/ICarImpl;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string v2, "*FutureConfig, DEFAULT:false"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string v2, "*Dump all services*"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/android/car/ICarImpl;->mDumpServices:[Lcom/android/car/CarServiceBase;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 632
    .local v5, "service":Lcom/android/car/CarServiceBase;
    invoke-direct {p0, v5, p2}, Lcom/android/car/ICarImpl;->dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;)V

    .line 633
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 631
    .end local v5    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 635
    :cond_5
    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    if-eqz v2, :cond_6

    .line 636
    iget-object v2, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    invoke-direct {p0, v2, p2}, Lcom/android/car/ICarImpl;->dumpService(Lcom/android/car/CarServiceBase;Ljava/io/PrintWriter;)V

    .line 637
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 639
    :cond_6
    const-string v2, "*Dump Vehicle HAL*"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vehicle HAL Interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/ICarImpl;->mVehicleInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, p2}, Lcom/android/car/hal/VehicleHal;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    .end local v1    # "now":Ljava/time/LocalDateTime;
    goto :goto_3

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed dumping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 652
    :goto_4
    return-void
.end method

.method public enableFeature(Ljava/lang/String;)I
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method execShellCmd([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 664
    new-instance v0, Lcom/android/car/ICarImpl$CarShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ICarImpl$CarShellCommand;-><init>(Lcom/android/car/ICarImpl;Lcom/android/car/ICarImpl$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ICarImpl$CarShellCommand;->exec([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 665
    return-void
.end method

.method public getAllEnabledFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAllPendingDisabledFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAllPendingEnabledFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCarConnectionType()I
    .locals 1

    .line 510
    const/4 v0, 0x5

    return v0
.end method

.method public getCarInternalService(Ljava/lang/String;)Lcom/android/car/CarServiceBase;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xce968

    if-eq v0, v1, :cond_1

    const v1, 0x2ea4bfc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "internal_input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "system_activity_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 520
    const-string v0, "CAR.SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarInternalService for unknown service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    return-object v0

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    return-object v0

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarInputService:Lcom/android/car/CarInputService;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCarManagerClassForFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 307
    const-string v0, ""

    return-object v0
.end method

.method public getCarService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "xp_radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "xp_input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "app_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "cluster_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "xp_remind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "intelligent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "uxrestriction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "xp_condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "vehicle_map_subscriber_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "xp_diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "cabin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "xp_vehicle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "hvac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "storage_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "drivingstate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "car-service-test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "xp_xpu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "xp_vpm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "xp_vcu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "xp_srs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "xp_spc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "xp_scu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "xp_msm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "xp_msb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "xp_mcu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "xp_llu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "xp_ipu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "xp_imu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "xp_icm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "xp_hud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "xp_esp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "xp_eps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "xp_dhc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "xp_ciu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "xp_cdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "xp_ccs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "xp_can"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "xp_bms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "xp_bcm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "xp_avm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "xp_atl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "xp_amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "vendor_extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "xp_shared_memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "property"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "guard_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_1

    :sswitch_34
    const-string v0, "diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_35
    const-string v0, "car_navigation_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_1

    :sswitch_36
    const-string v0, "car_bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_1

    :sswitch_37
    const-string v0, "xp_tpms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_38
    const-string v0, "xp_tbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_1

    :sswitch_39
    const-string v0, "xp_dcdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_3a
    const-string v0, "xp_avas"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_3b
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 503
    const-string v0, "CAR.SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarService for unknown service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-object v1

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarRemindService:Lcom/android/car/xpeng/remind/CarRemindService;

    return-object v0

    .line 499
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarGuardModeService:Lcom/android/car/xpeng/guard/CarGuardModeService;

    return-object v0

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarIntelligentEngineService:Lcom/android/car/intelligent/CarIntelligentEngineService;

    return-object v0

    .line 495
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarConditionService:Lcom/android/car/CarConditionService;

    return-object v0

    .line 493
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mXpSharedMemoryService:Lcom/android/car/XpSharedMemoryService;

    return-object v0

    .line 491
    :pswitch_5
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mXpDiagnosticService:Lcom/android/car/XpDiagnosticService;

    return-object v0

    .line 489
    :pswitch_6
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mXpVehicleService:Lcom/android/car/XpVehicleService;

    return-object v0

    .line 487
    :pswitch_7
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarConfigurationService:Lcom/android/car/CarConfigurationService;

    return-object v0

    .line 485
    :pswitch_8
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarUXRestrictionsService:Lcom/android/car/CarUxRestrictionsManagerService;

    return-object v0

    .line 482
    :pswitch_9
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertDrivingStatePermission(Landroid/content/Context;)V

    .line 483
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    return-object v0

    .line 479
    :pswitch_a
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.STORAGE_MONITORING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarStorageMonitoringService:Lcom/android/car/CarStorageMonitoringService;

    return-object v0

    .line 477
    :pswitch_b
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    return-object v0

    .line 468
    :pswitch_c
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_TEST_SERVICE"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lcom/android/car/CarTestService;

    iget-object v1, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/car/CarTestService;-><init>(Landroid/content/Context;Lcom/android/car/ICarImpl;)V

    iput-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarTestService:Lcom/android/car/CarTestService;

    monitor-exit p0

    return-object v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 465
    :pswitch_d
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 466
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mVmsSubscriberService:Lcom/android/car/VmsSubscriberService;

    return-object v0

    .line 462
    :pswitch_e
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 463
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarProjectionService:Lcom/android/car/CarProjectionService;

    return-object v0

    .line 459
    :pswitch_f
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertClusterManagerPermission(Landroid/content/Context;)V

    .line 460
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-virtual {v0}, Lcom/android/car/cluster/InstrumentClusterService;->getManagerService()Landroid/car/cluster/IInstrumentClusterManagerService$Stub;

    move-result-object v0

    return-object v0

    .line 454
    :pswitch_10
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertNavigationManagerPermission(Landroid/content/Context;)V

    .line 455
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mInstrumentClusterService:Lcom/android/car/cluster/InstrumentClusterService;

    .line 456
    invoke-virtual {v0}, Lcom/android/car/cluster/InstrumentClusterService;->getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v0

    .line 457
    .local v0, "navService":Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    return-object v1

    .line 452
    .end local v0    # "navService":Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    :pswitch_11
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    return-object v0

    .line 412
    :pswitch_12
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertPowerPermission(Landroid/content/Context;)V

    .line 413
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    return-object v0

    .line 409
    :pswitch_13
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertAnyDiagnosticPermission(Landroid/content/Context;)V

    .line 410
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarDiagnosticService:Lcom/android/car/CarDiagnosticService;

    return-object v0

    .line 407
    :pswitch_14
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarPackageManagerService:Lcom/android/car/pm/CarPackageManagerService;

    return-object v0

    .line 405
    :pswitch_15
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAppFocusService:Lcom/android/car/AppFocusService;

    return-object v0

    .line 403
    :pswitch_16
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mCarAudioService:Lcom/android/car/CarAudioService;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756b35b1 -> :sswitch_3b
        -0x6f8cdbf2 -> :sswitch_3a
        -0x6f8bc5db -> :sswitch_39
        -0x6f848242 -> :sswitch_38
        -0x6f844df7 -> :sswitch_37
        -0x6e917bfd -> :sswitch_36
        -0x6e7fee2b -> :sswitch_35
        -0x5c432459 -> :sswitch_34
        -0x5841cd03 -> :sswitch_33
        -0x3b32222b -> :sswitch_32
        -0x35ffac46 -> :sswitch_31
        -0x35c86eec -> :sswitch_30
        -0x341b3df8 -> :sswitch_2f
        -0x301acbba -> :sswitch_2e
        -0x2ce38403 -> :sswitch_2d
        -0x2ce3832e -> :sswitch_2c
        -0x2ce382ef -> :sswitch_2b
        -0x2ce3817b -> :sswitch_2a
        -0x2ce3803f -> :sswitch_29
        -0x2ce37df7 -> :sswitch_28
        -0x2ce37db4 -> :sswitch_27
        -0x2ce37da5 -> :sswitch_26
        -0x2ce37cf8 -> :sswitch_25
        -0x2ce37968 -> :sswitch_24
        -0x2ce3749f -> :sswitch_23
        -0x2ce37445 -> :sswitch_22
        -0x2ce368d0 -> :sswitch_21
        -0x2ce36734 -> :sswitch_20
        -0x2ce365f6 -> :sswitch_1f
        -0x2ce36599 -> :sswitch_1e
        -0x2ce35ad2 -> :sswitch_1d
        -0x2ce35828 -> :sswitch_1c
        -0x2ce3564b -> :sswitch_1b
        -0x2ce35640 -> :sswitch_1a
        -0x2ce341a2 -> :sswitch_19
        -0x2ce34021 -> :sswitch_18
        -0x2ce33fd3 -> :sswitch_17
        -0x2ce3365f -> :sswitch_16
        -0x2ce334d4 -> :sswitch_15
        -0x2ce32d4a -> :sswitch_14
        -0x23f279fd -> :sswitch_13
        -0x1a8272d6 -> :sswitch_12
        -0xf701374 -> :sswitch_11
        0x310db0 -> :sswitch_10
        0x3164ae -> :sswitch_f
        0x150cce5 -> :sswitch_e
        0x58d9bd6 -> :sswitch_d
        0x5a0abe9 -> :sswitch_c
        0x65e8905 -> :sswitch_b
        0xfbe974e -> :sswitch_a
        0x1d05dc14 -> :sswitch_9
        0x333e2094 -> :sswitch_8
        0x401b9149 -> :sswitch_7
        0x43994e77 -> :sswitch_6
        0x5c52882c -> :sswitch_5
        0x6201e570 -> :sswitch_4
        0x6d19553a -> :sswitch_3
        0x733374f6 -> :sswitch_2
        0x7e5eafc3 -> :sswitch_1
        0x7ed76bf4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
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

.method init()V
    .locals 7

    .line 249
    const-string v0, "VehicleHal.init"

    invoke-static {v0}, Lcom/android/car/ICarImpl;->traceBegin(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->init()V

    .line 251
    invoke-static {}, Lcom/android/car/ICarImpl;->traceEnd()V

    .line 252
    const-string v0, "CarService.initAllServices"

    invoke-static {v0}, Lcom/android/car/ICarImpl;->traceBegin(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 255
    .local v3, "service":Lcom/android/car/CarServiceBase;
    :try_start_0
    invoke-interface {v3}, Lcom/android/car/CarServiceBase;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_1

    .line 256
    :catch_0
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ICarImpl"

    const-string v6, "Got unexpected exception"

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {}, Lcom/android/car/ICarImpl;->traceEnd()V

    .line 261
    return-void
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method release()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/car/CarServiceBase;->release()V

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0}, Lcom/android/car/hal/VehicleHal;->release()V

    .line 269
    return-void
.end method

.method public setCarServiceHelper(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "helper"    # Landroid/os/IBinder;

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 320
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/car/ICarServiceHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/car/ICarServiceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ICarImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    .line 325
    iget-object v1, p0, Lcom/android/car/ICarImpl;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    iget-object v2, p0, Lcom/android/car/ICarImpl;->mICarServiceHelper:Lcom/android/internal/car/ICarServiceHelper;

    invoke-virtual {v1, v2}, Lcom/android/car/systeminterface/SystemInterface;->setCarServiceHelper(Lcom/android/internal/car/ICarServiceHelper;)V

    .line 326
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only allowed from system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V
    .locals 4
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 311
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V

    .line 312
    iget-object v0, p0, Lcom/android/car/ICarImpl;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 313
    .local v3, "service":Lcom/android/car/CarServiceBase;
    invoke-interface {v3}, Lcom/android/car/CarServiceBase;->vehicleHalReconnected()V

    .line 312
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method
