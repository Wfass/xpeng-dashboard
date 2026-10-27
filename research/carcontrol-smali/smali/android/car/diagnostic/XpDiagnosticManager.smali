.class public final Landroid/car/diagnostic/XpDiagnosticManager;
.super Landroid/car/hardware/CarEcuManager;
.source "XpDiagnosticManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;,
        Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;,
        Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;,
        Landroid/car/diagnostic/XpDiagnosticManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AEB_STATE_BLOCK:I = 0x4

.field public static final AEB_STATE_NO_FAULT:I = 0x5

.field public static final AEB_STATE_OFF:I = 0x0

.field public static final AEB_STATE_ON:I = 0x1

.field public static final AEB_STATE_PERMANENT_FAILURE:I = 0x3

.field public static final AEB_STATE_TEMPORARY_FAILURE:I = 0x2

.field public static final ALC_CTRL_REMIND_ACTIVE_BY_ALC_DIR_LEFT:I = 0x1

.field public static final ALC_CTRL_REMIND_ACTIVE_BY_ALC_DIR_RIGHT:I = 0x2

.field public static final ALC_CTRL_REMIND_ALC_CANCEL:I = 0x6

.field public static final ALC_CTRL_REMIND_ALC_FAILURE:I = 0xa

.field public static final ALC_CTRL_REMIND_ALC_FINISH:I = 0x7

.field public static final ALC_CTRL_REMIND_ALC_WAIT_DIR_LEFT:I = 0x3

.field public static final ALC_CTRL_REMIND_ALC_WAIT_DIR_RIGHT:I = 0x4

.field public static final ALC_CTRL_REMIND_ALC_WAIT_TIMEOUT_DIR_LEFT:I = 0x8

.field public static final ALC_CTRL_REMIND_ALC_WAIT_TIMEOUT_DIR_RIGHT:I = 0x9

.field public static final ALC_CTRL_REMIND_NO_DISPLAY:I = 0x0

.field public static final ALC_CTRL_REMIND_UNABLE_TO_ACTIVATE_ALC:I = 0x5

.field public static final ALS_FAILURE_STATE_ACCELERATION_SENSOR_ERROR:I = 0x2

.field public static final ALS_FAILURE_STATE_COMMUNICATION_ERROR:I = 0x1

.field public static final ALS_FAILURE_STATE_INITIAL_DATA_ERROR:I = 0x4

.field public static final ALS_FAILURE_STATE_NOT_INITIALIZED:I = 0x3

.field public static final ALS_FAILURE_STATE_NO_ERROR:I = 0x0

.field public static final ALS_FAILURE_STATE_ROAD_ANGLE_ERROR:I = 0x5

.field public static final APA_FAILURE:I = 0x2

.field public static final APA_NORMAL:I = 0x1

.field public static final APA_NOT_DEFINED:I = 0x0

.field public static final BATTERY_DEAD:I = 0x1

.field public static final BATTERY_NORMAL:I = 0x0

.field public static final BATTERY_PTC_FAILURE_INDEX_ELEMENT:I = 0x1

.field public static final BATTERY_PTC_FAILURE_INDEX_INTERNAL:I = 0x0

.field public static final BATTERY_VOLTAGE_LOW:I = 0x1

.field public static final BATTERY_VOLTAGE_NORMAL:I = 0x0

.field public static final BSD_STATE_FAIL:I = 0x2

.field public static final BSD_STATE_NO_FAULT:I = 0x3

.field public static final BSD_STATE_OFF:I = 0x0

.field public static final BSD_STATE_ON:I = 0x1

.field public static final CCS_ERROR:I = 0x2

.field public static final CCS_PREWARM:I = 0x3

.field public static final CCS_STANDBY:I = 0x0

.field public static final CCS_WORK:I = 0x1

.field public static final CHARGE_PORT_HOT:I = 0x1

.field public static final CHARGE_PORT_NORMAL:I = 0x0

.field public static final COMPRESSOR_FAILURE_INDEX_CAUSE:I = 0x1

.field public static final COMPRESSOR_FAILURE_INDEX_STT:I = 0x0

.field private static final DBG:Z = false

.field public static final DOW_STATE_FAIL:I = 0x2

.field public static final DOW_STATE_OFF:I = 0x0

.field public static final DOW_STATE_ON:I = 0x1

.field public static final ECU_FAILURE:I = 0x1

.field public static final ECU_NORMAL:I = 0x0

.field public static final ELECTRIC_MOTOR_SYSTEM_HOT:I = 0x1

.field public static final ELECTRIC_MOTOR_SYSTEM_NORMAL:I = 0x0

.field public static final EV_COLLISION_AND_CUT_OFF_THE_POWER:I = 0x7

.field public static final EV_LIMIT_SPEED:I = 0x2

.field public static final EV_LIMP_AND_CONTACT_MAINTENANCE:I = 0x3

.field public static final EV_NO_ERROR:I = 0x0

.field public static final EV_PARK_AND_BE_ABOUT_TO_LOSE_POWER:I = 0x6

.field public static final EV_PARK_AND_IMMEDIATELY_LOST_POWER:I = 0x4

.field public static final EV_REDUCE_POWER:I = 0x1

.field public static final GEAR_WARNING_BATTERY_CHARGING:I = 0x1

.field public static final GEAR_WARNING_CLOSE_DOOR_AND_FASTEN_SEATBELT:I = 0x7

.field public static final GEAR_WARNING_DRIVING:I = 0x2

.field public static final GEAR_WARNING_NO_BRAKE:I = 0x4

.field public static final GEAR_WARNING_NO_READY:I = 0x3

.field public static final GEAR_WARNING_NO_WARNING:I = 0x0

.field public static final GEAR_WARNING_SHIFT_SWITCH_TO_N_GEAR:I = 0x6

.field public static final GEAR_WARNING_SPEED_DOWN:I = 0x5

.field public static final HIGH_VOLTAGE_RELAY_ADHESION:I = 0x1

.field public static final HIGH_VOLTAGE_RELAY_NORMAL:I = 0x0

.field public static final HVAC_PTC_EXTERNAL_ERROR:I = 0x2

.field public static final HVAC_PTC_INTERNAL_ERROR:I = 0x1

.field public static final HVAC_PTC_NORMAL:I = 0x0

.field public static final ID_ALS_ERROR_ST:I = 0x2140180c

.field public static final ID_AND_DIAG_REQUEST:I = 0x21701405

.field public static final ID_ATLS_ERR_ST:I = 0x2140180b

.field public static final ID_AVAS_FAULT:I = 0x2140320f

.field public static final ID_BCM_AIRBAG_FAULT_ST:I = 0x21401c12

.field public static final ID_BCM_HIGHTBEAM_FAIL:I = 0x21401c86

.field public static final ID_BCM_LDTROUTPUT_FAIL:I = 0x21401c8c

.field public static final ID_BCM_LOWBEAM_FAIL:I = 0x21401c87

.field public static final ID_BCM_LTURNLAMP_FAIL:I = 0x21401c88

.field public static final ID_BCM_MSM_ERROR_INFO:I = 0x21411c96

.field public static final ID_BCM_PARKINGLAMP_FAIL:I = 0x21401c8d

.field public static final ID_BCM_RDTROUTPUT_FAIL:I = 0x21401c8b

.field public static final ID_BCM_REARFOG_FAIL:I = 0x21401c8a

.field public static final ID_BCM_RTURNLAMP_FAIL:I = 0x21401c89

.field public static final ID_BCM_SYSERROR_WARN:I = 0x21401c8e

.field public static final ID_BIZ_DIAGN_SOA_CONFIG_RETRY_REQ:I = 0x2140a807

.field public static final ID_CDC_DATAUPLOAD_ST:I = 0x21402678

.field public static final ID_CIU_DVR_STATUS:I = 0x21402818

.field public static final ID_CIU_SD_ST:I = 0x21402803

.field public static final ID_DHC_ERR:I = 0x21401c94

.field public static final ID_EPS_WARN_LAMP:I = 0x2140240d

.field public static final ID_ESP_ABS_FAULT:I = 0x2140240f

.field public static final ID_ESP_APBERR_ST:I = 0x2140240e

.field public static final ID_ESP_AVH_FAULT:I = 0x2140240b

.field public static final ID_ESP_ESP_FAULT:I = 0x21402409

.field public static final ID_ESP_HDC_FAULT:I = 0x2140240a

.field public static final ID_ESP_SYS_WARNIND_REQ:I = 0x2140240c

.field public static final ID_HVAC_COMPRESSOR_ERROR_INFO:I = 0x21411a2f

.field public static final ID_HVAC_PTC_ERROR:I = 0x21401a2e

.field public static final ID_IBT_FAILURE_LAMP:I = 0x21402411

.field public static final ID_IPUF_FAILST:I = 0x21401240

.field public static final ID_IPUR_FAILST:I = 0x2140123f

.field public static final ID_LLU_ERR_ST:I = 0x21402e16

.field public static final ID_MCU_DIAG_REQUEST:I = 0x21701404

.field public static final ID_MCU_DID_LINK_STATUS:I = 0x21701416

.field public static final ID_MCU_DID_PHY_SETTING:I = 0x2170143b

.field public static final ID_MCU_DID_RECEIVED_PAK:I = 0x21701419

.field public static final ID_MCU_DID_SQI_1000BASE:I = 0x21701414

.field public static final ID_MCU_DID_SQI_100BASE:I = 0x21701413

.field public static final ID_MCU_DID_SQI_MAX:I = 0x21701415

.field public static final ID_MCU_DID_SQI_VALUE:I = 0x21701417

.field public static final ID_MCU_DID_TRANSMITTED_PAK:I = 0x21701418

.field public static final ID_MCU_DTC_ETH_UNEXPECTED_LOSS:I = 0x2170141a

.field public static final ID_MCU_DTC_INSUFFICIENT_SQI:I = 0x2170141b

.field public static final ID_MCU_DTC_IP_ERROR:I = 0x2170141c

.field public static final ID_MCU_RID_CABLE_DIAGNOSTICS:I = 0x21701412

.field public static final ID_MCU_RID_MASTERSLAVE_CONTROL:I = 0x2170143a

.field public static final ID_MCU_RID_RESET_PHY:I = 0x21701410

.field public static final ID_MCU_RID_TEST_MODE:I = 0x21701411

.field public static final ID_MSMD_ECU_ERR:I = 0x21401c8f

.field public static final ID_MSMD_HEATSYS_ERR:I = 0x21401c91

.field public static final ID_MSMD_VENTILATIONMOTOR_ERR:I = 0x21401c90

.field public static final ID_MSMP_ECU_ERR:I = 0x21401c92

.field public static final ID_MSMP_HEATSYS_ERR:I = 0x21401c93

.field public static final ID_SCU_ALCCTRL_REMIND:I = 0x21402672

.field public static final ID_SCU_BSD_SW:I = 0x21402605

.field public static final ID_SCU_DOW_SW:I = 0x21402608

.field public static final ID_SCU_FCWAEB_SW:I = 0x21402601

.field public static final ID_SCU_ICM_APAERR_TIPS:I = 0x21402673

.field public static final ID_SCU_IHB_SW:I = 0x21402603

.field public static final ID_SCU_ISLC_SW:I = 0x2140260d

.field public static final ID_SCU_LDW_SW:I = 0x21402602

.field public static final ID_SCU_LONGCTRL_REMIND:I = 0x21402627

.field public static final ID_SCU_RCTA_SW:I = 0x21402606

.field public static final ID_SCU_RCW_SW:I = 0x21402607

.field public static final ID_SCU_SIDE_REVERSION_WARNING:I = 0x2140262a

.field public static final ID_SRR_FLFAIL_ST:I = 0x21402674

.field public static final ID_SRR_FRFAIL_ST:I = 0x21402675

.field public static final ID_SRR_RLFAIL_ST:I = 0x21402676

.field public static final ID_SRR_RRFAIL_ST:I = 0x21402677

.field public static final ID_TPMS_ABNORMALPRWARN:I = 0x21401e07

.field public static final ID_TPMS_SYSFAULTWARN:I = 0x21401e06

.field public static final ID_TPMS_TIRE_PRESSURE_SENSOR_STATUS_ALL:I = 0x21411e10

.field public static final ID_TPMS_WARNING_TIRE_TEMPERATURE_ALL:I = 0x21411e0e

.field public static final ID_VCU_AGS_ERROR:I = 0x21401249

.field public static final ID_VCU_BATTERY_PTC_ERROR_INFO:I = 0x2141124b

.field public static final ID_VCU_BATTERY_VOLTAGE_LOW:I = 0x21401245

.field public static final ID_VCU_BCRUISE_ERR:I = 0x21401236

.field public static final ID_VCU_CCS_WORK_STATE:I = 0x21401242

.field public static final ID_VCU_CHGPORTHOT_DSP:I = 0x21401239

.field public static final ID_VCU_DCDC_ERROR:I = 0x21401243

.field public static final ID_VCU_DEADBATTERY_FLAG:I = 0x2140123b

.field public static final ID_VCU_EBS_ERR_DSP:I = 0x21401233

.field public static final ID_VCU_ELECTRIC_MOTOR_SYSTEM_OVERHEATING:I = 0x21401246

.field public static final ID_VCU_ELECTRIC_VACUUM_PUMP_ERROR:I = 0x21401247

.field public static final ID_VCU_EVERRLAMP_DSP:I = 0x21401231

.field public static final ID_VCU_EVERR_MSGDISP:I = 0x2140123e

.field public static final ID_VCU_GEAR_WARNING:I = 0x21401232

.field public static final ID_VCU_HVRLY_ADHESION_ST:I = 0x21401248

.field public static final ID_VCU_LIQUIDHIGHTEMP_ERR:I = 0x21401234

.field public static final ID_VCU_OBCMSG_LOST:I = 0x2140123a

.field public static final ID_VCU_POWERLIMITATION_DSP:I = 0x21401238

.field public static final ID_VCU_TCM_P_GEAR_FAIL_ST:I = 0x2141124a

.field public static final ID_VCU_THERMORUNAWAY_ST:I = 0x21401237

.field public static final ID_VCU_WARNING_BATTERY_OVERHEATING:I = 0x21401241

.field public static final ID_VCU_WATERSENSOR_ERR:I = 0x21401235

.field public static final ID_XPU_XPU_FAIL_ST:I = 0x21402679

.field public static final IHB_STATE_ACTIVE:I = 0x3

.field public static final IHB_STATE_OFF:I = 0x0

.field public static final IHB_STATE_PASSIVE:I = 0x1

.field public static final IHB_STATE_PERMANENT_FAILURE:I = 0x5

.field public static final IHB_STATE_STANDBY:I = 0x2

.field public static final IHB_STATE_TEMPORARY_FAILURE:I = 0x4

.field public static final IPU_DISABLED:I = 0x2

.field public static final IPU_NORMAL:I = 0x0

.field public static final IPU_REDUCE_POWER:I = 0x1

.field public static final IPU_SYSTEM_SHUTDOWN:I = 0x3

.field public static final ISLC_STATE_ACTIVE:I = 0x3

.field public static final ISLC_STATE_NO_FAULT:I = 0x8

.field public static final ISLC_STATE_OFF:I = 0x0

.field public static final ISLC_STATE_OVERRIDE:I = 0x5

.field public static final ISLC_STATE_PASSIVE:I = 0x1

.field public static final ISLC_STATE_PERMANENT_FAILURE:I = 0x7

.field public static final ISLC_STATE_STANDBY:I = 0x2

.field public static final ISLC_STATE_STANDWAIT:I = 0x4

.field public static final ISLC_STATE_TEMPORARY_FAILURE:I = 0x6

.field public static final LDW_STATE_ACTIVE:I = 0x3

.field public static final LDW_STATE_NO_FAULT:I = 0x6

.field public static final LDW_STATE_OFF:I = 0x0

.field public static final LDW_STATE_PASSIVE:I = 0x1

.field public static final LDW_STATE_PERMANENT_FAILURE:I = 0x5

.field public static final LDW_STATE_STANDBY:I = 0x2

.field public static final LDW_STATE_TEMPORARY_FAILURE:I = 0x4

.field public static final LIQUID_TEMP_HIGH:I = 0x1

.field public static final LIQUID_TEMP_NORMAL:I = 0x0

.field private static final MSG_GENERIC_EVENT:I = 0x0

.field public static final MSM_INDEX_ECU:I = 0xc

.field public static final MSM_INDEX_HORIZONAL_BACKWARD:I = 0x3

.field public static final MSM_INDEX_HORIZONAL_FORWARD:I = 0x2

.field public static final MSM_INDEX_HORIZONAL_HALL:I = 0x9

.field public static final MSM_INDEX_HORIZONAL_MOTOR:I = 0x6

.field public static final MSM_INDEX_TILTING_BACKWARD:I = 0x1

.field public static final MSM_INDEX_TILTING_FORWARD:I = 0x0

.field public static final MSM_INDEX_TILTING_HALL:I = 0xb

.field public static final MSM_INDEX_TILTING_MOTOR:I = 0x8

.field public static final MSM_INDEX_VERTICAL_DOWNWARD:I = 0x5

.field public static final MSM_INDEX_VERTICAL_HALL:I = 0xa

.field public static final MSM_INDEX_VERTICAL_MOTOR:I = 0x7

.field public static final MSM_INDEX_VERTICAL_UPWARD:I = 0x4

.field public static final OBC_MESSAGE_LOST:I = 0x1

.field public static final OBC_MESSAGE_NORMAL:I = 0x0

.field public static final POWER_LIMIT:I = 0x1

.field public static final POWER_NORMAL:I = 0x0

.field public static final RCTA_STATE_FAIL:I = 0x2

.field public static final RCTA_STATE_OFF:I = 0x0

.field public static final RCTA_STATE_ON:I = 0x1

.field public static final RCW_STATE_FAIL:I = 0x2

.field public static final RCW_STATE_OFF:I = 0x0

.field public static final RCW_STATE_ON:I = 0x1

.field public static final SCU_ACC_FAILURE:I = 0x9

.field public static final SCU_CRUISE_CTRL_ACTIVE_FAILED:I = 0x1

.field public static final SCU_CRUISE_CTRL_CANCELLED_ACTIVELY:I = 0x2

.field public static final SCU_CRUISE_CTRL_CANCELLED_PASSIVELY:I = 0x8

.field public static final SCU_INACTIVE_FOR_DOORS_UNLOCK:I = 0x5

.field public static final SCU_INACTIVE_FOR_EPB_ACTIVE:I = 0x7

.field public static final SCU_INACTIVE_FOR_NOT_D_SHIFT:I = 0x6

.field public static final SCU_INACTIVE_FOR_SETBELT_UNLOCK:I = 0x4

.field public static final SCU_LONG_CTRL_PLEASE_TAKE_OVER:I = 0x3

.field public static final SCU_LONG_CTRL_REMIND_NONE:I = 0x0

.field public static final SIDE_REVERSING_STATE_ACTIVE:I = 0x3

.field public static final SIDE_REVERSING_STATE_NO_FAULT:I = 0x0

.field public static final SIDE_REVERSING_STATE_PERMANENT_FAILURE:I = 0x2

.field public static final SIDE_REVERSING_STATE_TEMPORARY_FAILURE:I = 0x1

.field public static final SRR_BLOCKED:I = 0x1

.field public static final SRR_DYNAMIC_CALIBRATION_RUNNING:I = 0x3

.field public static final SRR_FAILURE:I = 0x2

.field public static final SRR_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XpDiagnosticManager"

.field public static final TCM_INDEX_OPEN_CIRCUIT:I = 0x3

.field public static final TCM_INDEX_POSITION_SHORT_TO_GROUND:I = 0x0

.field public static final TCM_INDEX_SHORT_TO_BATTERY:I = 0x1

.field public static final TCM_INDEX_SHORT_TO_GROUND:I = 0x2

.field public static final THERMAL_NORMAL:I = 0x0

.field public static final THERMAL_RUNAWAY:I = 0x1

.field public static final TIRE_INDEX_FRONT_LEFT:I = 0x0

.field public static final TIRE_INDEX_FRONT_RIGHT:I = 0x1

.field public static final TIRE_INDEX_REAR_LEFT:I = 0x2

.field public static final TIRE_INDEX_REAR_RIGHT:I = 0x3

.field public static final TIRE_PRESSURE_SENSOR_STATUS_FAILURE:I = 0x1

.field public static final TIRE_PRESSURE_SENSOR_STATUS_NORMAL:I = 0x0

.field public static final TIRE_TEMPERATURE_NORMAL:I = 0x0

.field public static final TIRE_TEMPERATURE_WARNING:I = 0x1

.field public static final TRACTION_BATTERY_SYSTEM_HOT:I = 0x1


# instance fields
.field private final mD21CheckedEcusFailureStateIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiagPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mE28CheckedEcusFailureStateIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
            "Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

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
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "XpDiagnosticManager"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 1246
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 78
    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

    .line 83
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    .line 1006
    new-instance v2, Landroid/util/ArraySet;

    const/16 v3, 0x60

    new-array v3, v3, [Ljava/lang/Integer;

    const v4, 0x21701404

    .line 1007
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v4, 0x21701405

    .line 1008
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x21701410

    .line 1009
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const v4, 0x21701411

    .line 1010
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const v4, 0x21701412

    .line 1011
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const v4, 0x21701413

    .line 1012
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const v4, 0x21701414

    .line 1013
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v3, v10

    const v4, 0x21701416

    .line 1014
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v3, v11

    const v4, 0x21701417

    .line 1015
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v3, v12

    const v4, 0x21701418

    .line 1016
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v13, 0x9

    aput-object v4, v3, v13

    const v4, 0x21701419

    .line 1017
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v14, 0xa

    aput-object v4, v3, v14

    const v4, 0x2170141a

    .line 1018
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v15, 0xb

    aput-object v4, v3, v15

    const v4, 0x2170141b

    .line 1019
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0xc

    aput-object v4, v3, v16

    const v4, 0x2170141c

    .line 1020
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0xd

    aput-object v4, v3, v17

    const v4, 0x21701415

    .line 1021
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0xe

    aput-object v4, v3, v18

    const v4, 0x2170143a

    .line 1022
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v19, 0xf

    aput-object v4, v3, v19

    const v4, 0x21401c86

    .line 1023
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x10

    aput-object v4, v3, v20

    const v21, 0x21401c87

    .line 1024
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x11

    aput-object v21, v3, v22

    const v23, 0x21401c88

    .line 1025
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x12

    aput-object v23, v3, v24

    const v25, 0x21401c89

    .line 1026
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x13

    aput-object v25, v3, v26

    const v25, 0x21401c8a

    .line 1027
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x14

    aput-object v25, v3, v26

    const v25, 0x21401c8b

    .line 1028
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x15

    aput-object v25, v3, v26

    const v25, 0x21401c8c

    .line 1029
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x16

    aput-object v25, v3, v26

    const v25, 0x21401c8d

    .line 1030
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x17

    aput-object v25, v3, v26

    const v25, 0x21401c8e

    .line 1031
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x18

    aput-object v25, v3, v26

    const v25, 0x21402e16

    .line 1032
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x19

    aput-object v25, v3, v26

    const v25, 0x2140180b

    .line 1033
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1a

    aput-object v25, v3, v26

    const v25, 0x21401c8f

    .line 1034
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1b

    aput-object v25, v3, v26

    const v25, 0x21401c90

    .line 1035
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1c

    aput-object v25, v3, v26

    const v25, 0x21401c91

    .line 1036
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1d

    aput-object v25, v3, v26

    const v25, 0x21401c92

    .line 1037
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1e

    aput-object v25, v3, v26

    const v25, 0x21401c93

    .line 1038
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1f

    aput-object v25, v3, v26

    const v25, 0x2140320f

    .line 1039
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x20

    aput-object v25, v3, v26

    const v25, 0x21401e06

    .line 1040
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x21

    aput-object v25, v3, v26

    const v25, 0x21401e07

    .line 1041
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x22

    aput-object v25, v3, v26

    const v25, 0x21401c12

    .line 1042
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x23

    aput-object v25, v3, v26

    const v25, 0x2140180c

    .line 1043
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x24

    aput-object v25, v3, v26

    const v25, 0x21401c94

    .line 1044
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x25

    aput-object v25, v3, v26

    const v25, 0x21401231

    .line 1045
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x26

    aput-object v25, v3, v26

    const v25, 0x21401232

    .line 1046
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x27

    aput-object v25, v3, v26

    const v25, 0x21401233

    .line 1047
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x28

    aput-object v25, v3, v26

    const v25, 0x21401234

    .line 1048
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x29

    aput-object v25, v3, v26

    const v25, 0x21401235

    .line 1049
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2a

    aput-object v25, v3, v26

    const v25, 0x21401236

    .line 1050
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2b

    aput-object v25, v3, v26

    const v25, 0x21401237

    .line 1051
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2c

    aput-object v25, v3, v26

    const v25, 0x21401238

    .line 1052
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2d

    aput-object v25, v3, v26

    const v25, 0x21401239

    .line 1053
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2e

    aput-object v25, v3, v26

    const v25, 0x2140123a

    .line 1054
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2f

    aput-object v25, v3, v26

    const v25, 0x2140123b

    .line 1055
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x30

    aput-object v25, v3, v26

    const v25, 0x2140123f

    .line 1056
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x31

    aput-object v25, v3, v26

    const v25, 0x21401240

    .line 1057
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x32

    aput-object v25, v3, v26

    const v25, 0x21402409

    .line 1058
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x33

    aput-object v25, v3, v26

    const v25, 0x2140240e

    .line 1059
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x34

    aput-object v25, v3, v26

    const v25, 0x2140240f

    .line 1060
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x35

    aput-object v25, v3, v26

    const v25, 0x2140240b

    .line 1061
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x36

    aput-object v25, v3, v26

    const v25, 0x21402411

    .line 1062
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x37

    aput-object v25, v3, v26

    const v25, 0x2140240d

    .line 1063
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x38

    aput-object v25, v3, v26

    const v25, 0x21402678

    .line 1064
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x39

    aput-object v25, v3, v26

    const v25, 0x21402679

    .line 1065
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3a

    aput-object v25, v3, v26

    const v25, 0x21402603

    .line 1066
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3b

    aput-object v25, v3, v26

    const v25, 0x21402605

    .line 1067
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3c

    aput-object v25, v3, v26

    const v25, 0x21402608

    .line 1068
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3d

    aput-object v25, v3, v26

    const v25, 0x21402606

    .line 1069
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3e

    aput-object v25, v3, v26

    const v25, 0x21402607

    .line 1070
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x3f

    aput-object v25, v3, v26

    const v25, 0x21402674

    .line 1071
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x40

    aput-object v25, v3, v26

    const v25, 0x21402675

    .line 1072
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x41

    aput-object v25, v3, v26

    const v25, 0x21402676

    .line 1073
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x42

    aput-object v25, v3, v26

    const v25, 0x21402677

    .line 1074
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x43

    aput-object v25, v3, v26

    const v25, 0x21402627

    .line 1075
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x44

    aput-object v25, v3, v26

    const v25, 0x2140260d

    .line 1076
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x45

    aput-object v25, v3, v26

    const v25, 0x21402672

    .line 1077
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x46

    aput-object v25, v3, v26

    const v25, 0x21402673

    .line 1078
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x47

    aput-object v25, v3, v26

    const v25, 0x2140123e

    .line 1079
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x48

    aput-object v25, v3, v26

    const v25, 0x2140240c

    .line 1080
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x49

    aput-object v25, v3, v26

    const v25, 0x2140240a

    .line 1081
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4a

    aput-object v25, v3, v26

    const v25, 0x21411e0e

    .line 1082
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4b

    aput-object v25, v3, v26

    const v25, 0x21411e10

    .line 1083
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4c

    aput-object v25, v3, v26

    const v25, 0x21401241

    .line 1084
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4d

    aput-object v25, v3, v26

    const v25, 0x21401242

    .line 1085
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4e

    aput-object v25, v3, v26

    const v25, 0x21401243

    .line 1086
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x4f

    aput-object v25, v3, v26

    const v25, 0x21401245

    .line 1087
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x50

    aput-object v25, v3, v26

    const v25, 0x21401246

    .line 1088
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x51

    aput-object v25, v3, v26

    const v25, 0x21401247

    .line 1089
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x52

    aput-object v25, v3, v26

    const v25, 0x21401248

    .line 1090
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x53

    aput-object v25, v3, v26

    const v25, 0x21401249

    .line 1091
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x54

    aput-object v25, v3, v26

    const v25, 0x2141124a

    .line 1092
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x55

    aput-object v25, v3, v26

    const v25, 0x21411c96

    .line 1093
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x56

    aput-object v25, v3, v26

    const v25, 0x21402818

    .line 1094
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x57

    aput-object v25, v3, v26

    const v25, 0x21402803

    .line 1095
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x58

    aput-object v25, v3, v26

    const v25, 0x21402602

    .line 1096
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x59

    aput-object v25, v3, v26

    const v25, 0x21402601

    .line 1097
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5a

    aput-object v25, v3, v26

    const v25, 0x2140262a

    .line 1098
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5b

    aput-object v25, v3, v26

    const v25, 0x21401a2e

    .line 1099
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5c

    aput-object v25, v3, v26

    const v25, 0x21411a2f

    .line 1100
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5d

    aput-object v25, v3, v26

    const v25, 0x2141124b

    .line 1101
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5e

    aput-object v25, v3, v26

    const v25, 0x2140a807

    .line 1102
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x5f

    aput-object v25, v3, v26

    .line 1006
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mDiagPropertyIds:Landroid/util/ArraySet;

    .line 1105
    new-instance v2, Landroid/util/ArraySet;

    const/16 v3, 0x38

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v4, v3, v1

    aput-object v21, v3, v5

    aput-object v23, v3, v6

    const v25, 0x21401c89

    .line 1109
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v7

    const v25, 0x21401c8a

    .line 1110
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v8

    const v25, 0x21401c8b

    .line 1111
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v9

    const v25, 0x21401c8c

    .line 1112
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v10

    const v25, 0x21401c8d

    .line 1113
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v11

    const v25, 0x21401c8e

    .line 1114
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v12

    const v25, 0x21402e16

    .line 1115
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v13

    const v25, 0x2140180b

    .line 1116
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v14

    const v25, 0x21401c8f

    .line 1117
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v15

    const v25, 0x21401c90

    .line 1118
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v16

    const v25, 0x21401c91

    .line 1119
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v17

    const v25, 0x21401c92

    .line 1120
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v18

    const v25, 0x21401c93

    .line 1121
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v19

    const v25, 0x2140320f

    .line 1122
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v20

    const v25, 0x21401e06

    .line 1123
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v22

    const v25, 0x21401e07

    .line 1124
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v24

    const v25, 0x21401c12

    .line 1125
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x13

    aput-object v25, v3, v26

    const v25, 0x2140180c

    .line 1126
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x14

    aput-object v25, v3, v26

    const v25, 0x21401c94

    .line 1127
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x15

    aput-object v25, v3, v26

    const v25, 0x21401231

    .line 1128
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x16

    aput-object v25, v3, v26

    const v25, 0x21401232

    .line 1129
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x17

    aput-object v25, v3, v26

    const v25, 0x21401233

    .line 1130
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x18

    aput-object v25, v3, v26

    const v25, 0x21401234

    .line 1131
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x19

    aput-object v25, v3, v26

    const v25, 0x21401235

    .line 1132
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1a

    aput-object v25, v3, v26

    const v25, 0x21401236

    .line 1133
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1b

    aput-object v25, v3, v26

    const v25, 0x21401237

    .line 1134
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1c

    aput-object v25, v3, v26

    const v25, 0x21401238

    .line 1135
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1d

    aput-object v25, v3, v26

    const v25, 0x21401239

    .line 1136
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1e

    aput-object v25, v3, v26

    const v25, 0x2140123a

    .line 1137
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x1f

    aput-object v25, v3, v26

    const v25, 0x2140123b

    .line 1138
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x20

    aput-object v25, v3, v26

    const v25, 0x2140123f

    .line 1139
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x21

    aput-object v25, v3, v26

    const v25, 0x21401240

    .line 1140
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x22

    aput-object v25, v3, v26

    const v25, 0x21402409

    .line 1141
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x23

    aput-object v25, v3, v26

    const v25, 0x2140240e

    .line 1142
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x24

    aput-object v25, v3, v26

    const v25, 0x2140240f

    .line 1143
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x25

    aput-object v25, v3, v26

    const v25, 0x2140240b

    .line 1144
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x26

    aput-object v25, v3, v26

    const v25, 0x21402411

    .line 1145
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x27

    aput-object v25, v3, v26

    const v25, 0x2140240d

    .line 1146
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x28

    aput-object v25, v3, v26

    const v25, 0x21402678

    .line 1147
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x29

    aput-object v25, v3, v26

    const v25, 0x21402679

    .line 1148
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2a

    aput-object v25, v3, v26

    const v25, 0x21402603

    .line 1149
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2b

    aput-object v25, v3, v26

    const v25, 0x21402605

    .line 1150
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2c

    aput-object v25, v3, v26

    const v25, 0x21402608

    .line 1151
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2d

    aput-object v25, v3, v26

    const v25, 0x21402606

    .line 1152
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2e

    aput-object v25, v3, v26

    const v25, 0x21402607

    .line 1153
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2f

    aput-object v25, v3, v26

    const v25, 0x21402674

    .line 1154
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x30

    aput-object v25, v3, v26

    const v25, 0x21402675

    .line 1155
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x31

    aput-object v25, v3, v26

    const v25, 0x21402676

    .line 1156
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x32

    aput-object v25, v3, v26

    const v25, 0x21402677

    .line 1157
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x33

    aput-object v25, v3, v26

    const v25, 0x21402627

    .line 1158
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x34

    aput-object v25, v3, v26

    const v25, 0x2140260d

    .line 1159
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x35

    aput-object v25, v3, v26

    const v25, 0x21402672

    .line 1160
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x36

    aput-object v25, v3, v26

    const v25, 0x21402673

    .line 1161
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x37

    aput-object v25, v3, v26

    .line 1105
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mE28CheckedEcusFailureStateIds:Landroid/util/ArraySet;

    .line 1164
    new-instance v2, Landroid/util/ArraySet;

    const/16 v3, 0x23

    new-array v3, v3, [Ljava/lang/Integer;

    const v25, 0x2140240c

    .line 1165
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v1

    const v25, 0x2140240f

    .line 1166
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v3, v5

    const v5, 0x2140240a

    .line 1167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const v5, 0x21401e06

    .line 1168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x21401e07

    .line 1169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x21411e0e

    .line 1170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    const v5, 0x21411e10

    .line 1171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x21401241

    .line 1172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    const v5, 0x21401242

    .line 1173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v12

    const v5, 0x21401243

    .line 1174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v13

    const v5, 0x21401233

    .line 1175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v14

    const v5, 0x21401245

    .line 1176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v15

    const v5, 0x21401246

    .line 1177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v16

    const v5, 0x2140123f

    .line 1178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v17

    const v5, 0x21401247

    .line 1179
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v18

    const v5, 0x21401232

    .line 1180
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v19

    const v5, 0x21401248

    .line 1181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v20

    const v5, 0x21401249

    .line 1182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v22

    const v5, 0x2141124a

    .line 1183
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v24

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const/16 v4, 0x14

    aput-object v21, v3, v4

    const/16 v4, 0x15

    aput-object v23, v3, v4

    const v4, 0x21401c89

    .line 1187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const v4, 0x21401c8e

    .line 1188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x17

    aput-object v4, v3, v5

    const v4, 0x21411c96

    .line 1189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x18

    aput-object v4, v3, v5

    const v4, 0x21402818

    .line 1190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x19

    aput-object v4, v3, v5

    const v4, 0x21402803

    .line 1191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1a

    aput-object v4, v3, v5

    const v4, 0x2140260d

    .line 1192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1b

    aput-object v4, v3, v5

    const v4, 0x21402602

    .line 1193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1c

    aput-object v4, v3, v5

    const v4, 0x21402601

    .line 1194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    const v4, 0x21402605

    .line 1195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1e

    aput-object v4, v3, v5

    const v4, 0x2140262a

    .line 1196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1f

    aput-object v4, v3, v5

    const v4, 0x21401a2e

    .line 1197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x20

    aput-object v4, v3, v5

    const v4, 0x21411a2f

    .line 1198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x21

    aput-object v4, v3, v5

    const v4, 0x2141124b

    .line 1199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x22

    aput-object v4, v3, v5

    .line 1164
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mD21CheckedEcusFailureStateIds:Landroid/util/ArraySet;

    .line 1247
    invoke-static/range {p3 .. p3}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    .line 1248
    new-instance v2, Landroid/car/diagnostic/XpDiagnosticManager$1;

    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Landroid/car/diagnostic/XpDiagnosticManager$1;-><init>(Landroid/car/diagnostic/XpDiagnosticManager;Landroid/os/Looper;I)V

    iput-object v2, v0, Landroid/car/diagnostic/XpDiagnosticManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/diagnostic/XpDiagnosticManager;Ljava/util/List;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/car/diagnostic/XpDiagnosticManager;->handleEvent(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/util/SparseArray;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_diagnostic"

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 1444
    invoke-direct {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->initSupportedPropConfigs()V

    .line 1445
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_0
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1447
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 1449
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 1299
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mHandler:Lcom/android/car/internal/SingleMessageHandler;

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

    .line 1432
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mSupportedPropConfigs:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1434
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mSupportedPropConfigs:Ljava/util/Map;

    .line 1435
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getPropertyIds()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    .line 1436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 1437
    iget-object v3, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1440
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isE28()Z
    .locals 2

    :try_start_0
    const-string v0, "E28"

    .line 1228
    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z
    .locals 2

    .line 1313
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getAccess()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyConfig;->getChangeMode()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAbnormalTirePressureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTpmsAbnormalPrWarn()I

    move-result v0

    return v0
.end method

.method public getAbsFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2324
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspAbsFault()I

    move-result v0

    return v0
.end method

.method public getAebState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAebState()I

    move-result v0

    return v0
.end method

.method public getAgsFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2895
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAgsFailureState()I

    move-result v0

    return v0
.end method

.method public getAirbagFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAirbagFaultSt()I

    move-result v0

    return v0
.end method

.method public getAlcCtrlRemindInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2638
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuAlcCtrlRemind()I

    move-result v0

    return v0
.end method

.method public getAllCheckedEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3110
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;

    move-result-object v0

    return-object v0
.end method

.method public getAllMsmModulesFailureStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2944
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllMsmModulesFailureStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTirePerssureSensorsFailureStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2765
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllTirePerssureSensorsFailureStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2744
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllTireTemperatureWarnings()[I

    move-result-object v0

    return-object v0
.end method

.method public getAlsFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAlsErrorSt()I

    move-result v0

    return v0
.end method

.method public getAndLastDiagCmd()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAndLastDiagCmd()[B

    move-result-object v0

    return-object v0
.end method

.method public getApaFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2655
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIcmApaErrTips()I

    move-result v0

    return v0
.end method

.method public getApbFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2308
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspApbErrSt()I

    move-result v0

    return v0
.end method

.method public getAtlsFailureSate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAtlsErrSt()I

    move-result v0

    return v0
.end method

.method public getAvasFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAvasFault()I

    move-result v0

    return v0
.end method

.method public getAvhFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2340
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspAvhFault()I

    move-result v0

    return v0
.end method

.method public getBCruiseFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2197
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuBCruiseErr()I

    move-result v0

    return v0
.end method

.method public getBatteryDeadState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2276
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuDeadBatteryFlag()I

    move-result v0

    return v0
.end method

.method public getBatteryOverheatingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2781
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryOverheatingState()I

    move-result v0

    return v0
.end method

.method public getBatteryPtcFailureStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3088
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryPtcFailureStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltageLowState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2831
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryVoltageLowState()I

    move-result v0

    return v0
.end method

.method public getBcmSystemFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSysErrorWarn()I

    move-result v0

    return v0
.end method

.method public getBsdState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2443
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuBsdSw()I

    move-result v0

    return v0
.end method

.method public getCcsWorkState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2799
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCcsWorkState()I

    move-result v0

    return v0
.end method

.method public getCdcFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2388
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCdcDataUploadSt()I

    move-result v0

    return v0
.end method

.method public getChargePortHotState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuChgPortHotDsp()I

    move-result v0

    return v0
.end method

.method public getCheckedEcusFailureStatesPropertyIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1460
    invoke-static {}, Landroid/car/diagnostic/XpDiagnosticManager;->isE28()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mE28CheckedEcusFailureStateIds:Landroid/util/ArraySet;

    return-object v0

    .line 1463
    :cond_0
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mD21CheckedEcusFailureStateIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCiuSdcardFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2976
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCiuSdcardFailureState()I

    move-result v0

    return v0
.end method

.method public getDcdcFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2815
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDcdcFailureState()I

    move-result v0

    return v0
.end method

.method public getDhcFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDhcErr()I

    move-result v0

    return v0
.end method

.method public getDowState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2460
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuDowSw()I

    move-result v0

    return v0
.end method

.method public getDriverMsmFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1911
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdEcuErr()I

    move-result v0

    return v0
.end method

.method public getDriverMsmHeatSysFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdHeatSysErr()I

    move-result v0

    return v0
.end method

.method public getDriverMsmVentilationMotorFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdVentilationMotorErr()I

    move-result v0

    return v0
.end method

.method public getDvrFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2960
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDvrFailureState()I

    move-result v0

    return v0
.end method

.method public getEbsFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEbsErrDsp()I

    move-result v0

    return v0
.end method

.method public getElectricMotorSystemHotState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2847
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getElectricMotorSystemHotState()I

    move-result v0

    return v0
.end method

.method public getElectricVacuumPumpFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2863
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getElectricVacuumPumpFailureState()I

    move-result v0

    return v0
.end method

.method public getEpbSysFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2707
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEpbSysFailureState()I

    move-result v0

    return v0
.end method

.method public getEpsFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2372
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEpsWarnLamp()I

    move-result v0

    return v0
.end method

.method public getEspFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2292
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspEspFault()I

    move-result v0

    return v0
.end method

.method public getEvSysDetailedErrorMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEvErrorMessage()I

    move-result v0

    return v0
.end method

.method public getEvSysFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEvErrLampDsp()I

    move-result v0

    return v0
.end method

.method public getFlSrrFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2512
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrFlFailState()I

    move-result v0

    return v0
.end method

.method public getFrSrrFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2530
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrFrFailState()I

    move-result v0

    return v0
.end method

.method public getFrontIpuFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2673
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getFrontIpuFailureState()I

    move-result v0

    return v0
.end method

.method public getGearWarningInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2133
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuGearWarning()I

    move-result v0

    return v0
.end method

.method public getHdcFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2723
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHdcFailureState()I

    move-result v0

    return v0
.end method

.method public getHighBeamFailState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1719
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHighBeamFailState()I

    move-result v0

    return v0
.end method

.method public getHighBeamFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1735
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHighBeamFailState()I

    move-result v0

    return v0
.end method

.method public getHighVoltageRelayAdhesionState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2879
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHighVoltageRelayAdhesionState()I

    move-result v0

    return v0
.end method

.method public getHvacCompressorFailureStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3070
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHvacCompressorFailureStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getHvacPtcFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3052
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHvacPtcFailureState()I

    move-result v0

    return v0
.end method

.method public getIbtFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2356
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getIbtFailureLamp()I

    move-result v0

    return v0
.end method

.method public getIhbState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2424
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIhbSw()I

    move-result v0

    return v0
.end method

.method public getIslcState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2613
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIslcSw()I

    move-result v0

    return v0
.end method

.method public getLdwState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2997
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLdwState()I

    move-result v0

    return v0
.end method

.method public getLeftDaytimeRunningLightFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1831
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLDtrOutputFailState()I

    move-result v0

    return v0
.end method

.method public getLeftTurnLampFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1767
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLTurnLampFailState()I

    move-result v0

    return v0
.end method

.method public getLiquidHighTempState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2165
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuLiquidHighTempErr()I

    move-result v0

    return v0
.end method

.method public getLluFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1879
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLluErrSt()I

    move-result v0

    return v0
.end method

.method public getLowBeamFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLowBeamFailState()I

    move-result v0

    return v0
.end method

.method public getMaterSlaveSettings()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMaterSlaveSettings()[B

    move-result-object v0

    return-object v0
.end method

.method public getMcuLastDiagCmd()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMcuLastDiagCmd()[B

    move-result-object v0

    return-object v0
.end method

.method public getObcMsgLostState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2261
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuObcMsgLost()I

    move-result v0

    return v0
.end method

.method public getParkingLampFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getParkingLampFailState()I

    move-result v0

    return v0
.end method

.method public getPassengerMsmFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1959
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmpEcuErr()I

    move-result v0

    return v0
.end method

.method public getPassengerMsmHeatSysFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmpHeatSysErr()I

    move-result v0

    return v0
.end method

.method public getPowerLimitationState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2229
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuPowerLimitationDsp()I

    move-result v0

    return v0
.end method

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

    .line 1456
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mDiagPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRctaState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2477
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuRctaSw()I

    move-result v0

    return v0
.end method

.method public getRcwState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuRcwSw()I

    move-result v0

    return v0
.end method

.method public getRearFogLampFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1799
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRearFogFailState()I

    move-result v0

    return v0
.end method

.method public getRearIpuFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2691
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRearIpuFailureState()I

    move-result v0

    return v0
.end method

.method public getRightDaytimeRunningLightFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRDtrOutputFailState()I

    move-result v0

    return v0
.end method

.method public getRightTurnLampFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1783
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRTurnLampFailState()I

    move-result v0

    return v0
.end method

.method public getRlSrrFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2548
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrRlFailState()I

    move-result v0

    return v0
.end method

.method public getRrSrrFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2566
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrRrFailState()I

    move-result v0

    return v0
.end method

.method public getScuLongCtrlRemindInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2590
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuLongCtrlRemind()I

    move-result v0

    return v0
.end method

.method public getSideReversingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3035
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSideReversingState()I

    move-result v0

    return v0
.end method

.method public getSystemDiagContent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSystemDiagContent()I

    move-result v0

    return v0
.end method

.method public getTcmMotorFailureStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2915
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTcmMotorFailureStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getThermalRunawayState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2213
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuThermoRunawaySt()I

    move-result v0

    return v0
.end method

.method public getTpmsSysFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTpmsSysFaultWarn()I

    move-result v0

    return v0
.end method

.method public getWaterSensorFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2181
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuWaterSensorErr()I

    move-result v0

    return v0
.end method

.method public getXpuFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2404
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getXpuXpuFailState()I

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 2

    .line 1279
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onConnected()V

    .line 1281
    :try_start_0
    invoke-virtual {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_diagnostic"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1283
    invoke-virtual {p0, v0}, Landroid/car/diagnostic/XpDiagnosticManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

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

    .line 1309
    :try_start_0
    invoke-direct {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/diagnostic/XpDiagnosticManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
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

    .line 1346
    :try_start_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XpDiagnosticManager"

    .line 1347
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

    .line 1350
    :cond_0
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1351
    new-instance v0, Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

    invoke-direct {v0, p0, p0}, Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;-><init>(Landroid/car/diagnostic/XpDiagnosticManager;Landroid/car/diagnostic/XpDiagnosticManager;)V

    iput-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

    .line 1353
    :cond_1
    invoke-direct {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->initSupportedPropConfigs()V

    .line 1354
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

    .line 1355
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "XpDiagnosticManager"

    .line 1356
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

    .line 1358
    :cond_3
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mSupportedPropConfigs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    if-eqz v1, :cond_2

    .line 1359
    invoke-direct {p0, v1}, Landroid/car/diagnostic/XpDiagnosticManager;->isPropertyAllowRegister(Landroid/car/hardware/CarPropertyConfig;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1362
    :cond_4
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 1365
    new-instance v1, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;-><init>(Landroid/car/diagnostic/XpDiagnosticManager;Landroid/car/diagnostic/XpDiagnosticManager$1;)V

    .line 1366
    iget-object v2, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 1370
    :cond_5
    invoke-virtual {v1, p2}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->contains(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1371
    invoke-virtual {v1, p2}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->add(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v2, :cond_2

    .line 1376
    :try_start_1
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

    invoke-interface {v1, v0, v2, v3}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1380
    :try_start_2
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 1378
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1384
    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    const-string p1, "XpDiagnosticManager"

    const-string p2, "callback is null"

    .line 1342
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "XpDiagnosticManager"

    const-string p2, "ids is null"

    .line 1337
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
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

.method public sendAndDiagCmd([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendAndDiagCmd([B)V

    return-void
.end method

.method public sendCableDiagToMcu([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendCableDiagToMcu([B)V

    return-void
.end method

.method public sendInsufficientSQI([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendInsufficientSQI([B)V

    return-void
.end method

.method public sendIpErr([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendIpErr([B)V

    return-void
.end method

.method public sendLinkStatus([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendLinkStatus([B)V

    return-void
.end method

.method public sendMaterSlaveMode([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMaterSlaveMode([B)V

    return-void
.end method

.method public sendMaterSlaveSettingsResponse([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1701
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMaterSlaveSettingsResponse([B)V

    return-void
.end method

.method public sendMcuDiagCmdAck([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1487
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMcuDiagCmdAck([B)V

    return-void
.end method

.method public sendReceivedPak([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendReceivedPak([B)V

    return-void
.end method

.method public sendResetPhyToMcu([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1536
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendResetPhyToMcu([B)V

    return-void
.end method

.method public sendSQI1000Base([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1668
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQI1000Base([B)V

    return-void
.end method

.method public sendSQI100Base([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQI100Base([B)V

    return-void
.end method

.method public sendSQIMax([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1646
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQIMax([B)V

    return-void
.end method

.method public sendSQIValue([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1580
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQIValue([B)V

    return-void
.end method

.method public sendTestModeToMcu([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1547
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendTestModeToMcu([B)V

    return-void
.end method

.method public sendTransmittedPak([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendTransmittedPak([B)V

    return-void
.end method

.method public sendUnexpectedLnkLoss([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendUnexpectedLnkLoss([B)V

    return-void
.end method

.method public setCarServiceDebugEnabled(Z)V
    .locals 1

    .line 1522
    :try_start_0
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->setCarServiceDebugEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "XpDiagnosticManager"

    const-string/jumbo v0, "setCarServiceDebugEnabled failed."

    .line 1524
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDiagnSOAConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3097
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->setDiagnSoaConfig(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 1326
    :try_start_0
    invoke-direct {p0}, Landroid/car/diagnostic/XpDiagnosticManager;->getSupportedPropIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/car/diagnostic/XpDiagnosticManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    monitor-exit p0

    return-void

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

    .line 1392
    :try_start_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XpDiagnosticManager"

    .line 1393
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

    .line 1406
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

    .line 1407
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "XpDiagnosticManager"

    .line 1408
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

    .line 1410
    :cond_2
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;

    if-nez v1, :cond_3

    goto :goto_0

    .line 1414
    :cond_3
    invoke-virtual {v1, p2}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->remove(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1415
    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    :try_start_1
    iget-object v1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mService:Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;

    invoke-interface {v1, v0, v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1422
    :try_start_2
    new-instance p2, Landroid/car/CarNotConnectedException;

    invoke-direct {p2, p1}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception v0

    .line 1420
    invoke-static {v0}, Landroid/car/CarApiUtil;->checkCarNotConnectedExceptionFromCarService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 1426
    :cond_4
    iget-object p1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mIdToCallbacksMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1427
    iput-object p1, p0, Landroid/car/diagnostic/XpDiagnosticManager;->mListenerToBase:Landroid/car/diagnostic/XpDiagnosticManager$CarPropertyEventListenerToService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1429
    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    const-string p1, "XpDiagnosticManager"

    const-string p2, "callback is null"

    .line 1402
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, "XpDiagnosticManager"

    const-string p2, "ids is null"

    .line 1397
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
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
