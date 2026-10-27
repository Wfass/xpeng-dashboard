.class public Landroid/car/diagnostic/EcusFailureStates;
.super Ljava/lang/Object;
.source "EcusFailureStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
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

.field public static final ALC_CTRL_REMIND_ALC_FRONT_CAM_BLOCKED:I = 0x11

.field public static final ALC_CTRL_REMIND_ALC_FRONT_CAM_FAILURE:I = 0x13

.field public static final ALC_CTRL_REMIND_ALC_REAR_CAM_BLOCKED:I = 0x12

.field public static final ALC_CTRL_REMIND_ALC_REAR_CAM_FAILURE:I = 0x14

.field public static final ALC_CTRL_REMIND_ALC_WAIT_DIR_LEFT:I = 0x3

.field public static final ALC_CTRL_REMIND_ALC_WAIT_DIR_RIGHT:I = 0x4

.field public static final ALC_CTRL_REMIND_ALC_WAIT_TIMEOUT_DIR_LEFT:I = 0x8

.field public static final ALC_CTRL_REMIND_ALC_WAIT_TIMEOUT_DIR_RIGHT:I = 0x9

.field public static final ALC_CTRL_REMIND_INACTIVE_FOR_SRR_R_BLINDNESS:I = 0xb

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

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/diagnostic/EcusFailureStates;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOW_STATE_FAIL:I = 0x2

.field public static final DOW_STATE_OFF:I = 0x0

.field public static final DOW_STATE_ON:I = 0x1

.field public static final ECU_FAILURE:I = 0x1

.field public static final ECU_NORMAL:I = 0x0

.field public static final ELECTRIC_MOTOR_SYSTEM_HOT:I = 0x1

.field public static final ELECTRIC_MOTOR_SYSTEM_NORMAL:I = 0x0

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

.field public static final IHB_STATE_ACTIVE:I = 0x3

.field public static final IHB_STATE_OFF:I = 0x0

.field public static final IHB_STATE_PASSIVE:I = 0x1

.field public static final IHB_STATE_PERMANENT_FAILURE:I = 0x5

.field public static final IHB_STATE_STANDBY:I = 0x2

.field public static final IHB_STATE_TEMPORARY_FAILURE:I = 0x4

.field public static final INTEGER_VECTOR_DEFAULT_STATE:[Ljava/lang/Integer; = null

.field public static final INT_DEFAULT_STATE:I = -0x1

.field public static final INT_VECTOR_DEFAULT_STATE:[I = null

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
.field private abnormalTirePressureState:I

.field private absFailureState:I

.field private aebState:I

.field private agsFailureState:I

.field private airbagFailureState:I

.field private alcCtrlRemindInfo:I

.field private allMsmModulesFailureStates:[I

.field private allTirePerssureSensorsFailureStates:[I

.field private allTireTemperatureWarnings:[I

.field private alsFailureState:I

.field private apaFailureState:I

.field private apbFailureState:I

.field private atlsFailureSate:I

.field private avasFailureState:I

.field private avhFailureState:I

.field private bCruiseFailureState:I

.field private batteryDeadState:I

.field private batteryOverheatingState:I

.field private batteryPtcFailureStates:[I

.field private batteryVoltageLowState:I

.field private bcmSystemFailureState:I

.field private bsdState:I

.field private ccsWorkState:I

.field private cdcFailureState:I

.field private chargePortHotState:I

.field private ciuSdcardFailureState:I

.field private dcdcFailureState:I

.field private dhcFailureState:I

.field private dowState:I

.field private driverMsmFailureState:I

.field private driverMsmHeatSysFailureState:I

.field private driverMsmVentilationMotorFailureState:I

.field private dvrFailureState:I

.field private ebsFailureState:I

.field private electricMotorSystemHotState:I

.field private electricVacuumPumpFailureState:I

.field private epbSysFailureState:I

.field private epsFailureState:I

.field private espFailureState:I

.field private evSysFailureState:I

.field private flSrrFailureState:I

.field private frSrrFailureState:I

.field private frontIpuFailureState:I

.field private gearWarningInfo:I

.field private hdcFailureState:I

.field private highBeamFailureState:I

.field private highVoltageRelayAdhesionState:I

.field private hvacCompressorFailureStates:[I

.field private hvacPtcFailureState:I

.field private ibtFailureState:I

.field private ihbState:I

.field private islcState:I

.field private ldwState:I

.field private leftDaytimeRunningLightFailureState:I

.field private leftTurnLampFailureState:I

.field private liquidHighTempState:I

.field private lluFailureState:I

.field private lowBeamFailureState:I

.field private obcMsgLostState:I

.field private parkingLampFailureState:I

.field private passengerMsmFailureState:I

.field private passengerMsmHeatSysFailureState:I

.field private powerLimitationState:I

.field private rctaState:I

.field private rcwState:I

.field private rearFogLampFailureState:I

.field private rearIpuFailureState:I

.field private rightDaytimeRunningLightFailureState:I

.field private rightTurnLampFailureState:I

.field private rlSrrFailureState:I

.field private rrSrrFailureState:I

.field private scuLongCtrlRemindInfo:I

.field private sideReversingState:I

.field private tcmMotorFailureStates:[I

.field private thermalRunawayState:I

.field private tpmsSysFailureState:I

.field private waterSensorFailureState:I

.field private xpuFailureState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 257
    new-instance v0, Landroid/car/diagnostic/EcusFailureStates$1;

    invoke-direct {v0}, Landroid/car/diagnostic/EcusFailureStates$1;-><init>()V

    sput-object v0, Landroid/car/diagnostic/EcusFailureStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    .line 275
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    .line 279
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    .line 283
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    .line 287
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    .line 291
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    .line 295
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    .line 299
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    .line 303
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    .line 307
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    .line 311
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    .line 315
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    .line 319
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    .line 323
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    .line 327
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    .line 331
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    .line 335
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    .line 339
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    .line 343
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    .line 347
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    .line 351
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    .line 355
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    .line 359
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    .line 363
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    .line 367
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    .line 371
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    .line 375
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    .line 379
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    .line 383
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    .line 387
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    .line 391
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    .line 395
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    .line 399
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    .line 403
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    .line 407
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    .line 411
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    .line 415
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    .line 419
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    .line 423
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    .line 427
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    .line 431
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    .line 435
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    .line 439
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    .line 443
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    .line 447
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    .line 451
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    .line 455
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    .line 459
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    .line 463
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    .line 467
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    .line 471
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    .line 475
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    .line 479
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    .line 483
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    .line 487
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    .line 491
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    .line 495
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    .line 499
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    .line 503
    sget-object v1, Landroid/car/diagnostic/EcusFailureStates;->INT_VECTOR_DEFAULT_STATE:[I

    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    .line 507
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    .line 511
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    .line 515
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    .line 519
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    .line 523
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    .line 527
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    .line 531
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    .line 535
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    .line 539
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    .line 543
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    .line 547
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    .line 551
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    .line 555
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    .line 559
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    .line 563
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    .line 567
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    .line 571
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    .line 575
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    .line 579
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    .line 275
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    .line 279
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    .line 283
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    .line 287
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    .line 291
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    .line 295
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    .line 299
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    .line 303
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    .line 307
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    .line 311
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    .line 315
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    .line 319
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    .line 323
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    .line 327
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    .line 331
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    .line 335
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    .line 339
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    .line 343
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    .line 347
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    .line 351
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    .line 355
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    .line 359
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    .line 363
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    .line 367
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    .line 371
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    .line 375
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    .line 379
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    .line 383
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    .line 387
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    .line 391
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    .line 395
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    .line 399
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    .line 403
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    .line 407
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    .line 411
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    .line 415
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    .line 419
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    .line 423
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    .line 427
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    .line 431
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    .line 435
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    .line 439
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    .line 443
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    .line 447
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    .line 451
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    .line 455
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    .line 459
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    .line 463
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    .line 467
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    .line 471
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    .line 475
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    .line 479
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    .line 483
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    .line 487
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    .line 491
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    .line 495
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    .line 499
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    .line 503
    sget-object v1, Landroid/car/diagnostic/EcusFailureStates;->INT_VECTOR_DEFAULT_STATE:[I

    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    .line 507
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    .line 511
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    .line 515
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    .line 519
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    .line 523
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    .line 527
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    .line 531
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    .line 535
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    .line 539
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    .line 543
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    .line 547
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    .line 551
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    .line 555
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    .line 559
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    .line 563
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    .line 567
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    .line 571
    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    .line 575
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    .line 579
    iput-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    return-void
.end method

.method private getIntValueOrThrow(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    return p1

    .line 2005
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method

.method private getIntVectorValueOrThrow([I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2012
    sget-object v0, Landroid/car/diagnostic/EcusFailureStates;->INT_VECTOR_DEFAULT_STATE:[I

    if-eq v0, p1, :cond_0

    return-object p1

    .line 2013
    :cond_0
    new-instance p1, Landroid/car/ValueUnavailableException;

    invoke-direct {p1}, Landroid/car/ValueUnavailableException;-><init>()V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalTirePressureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1435
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1699
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAebState()I
    .locals 1

    .line 1049
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAgsFailureState()I
    .locals 1

    .line 929
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1450
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1996
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getAllMsmModulesFailureStates()[I
    .locals 1

    .line 980
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTirePerssureSensorsFailureStates()[I
    .locals 1

    .line 811
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 1

    .line 791
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

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

    .line 1468
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getApaFailureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2028
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1684
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1315
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1405
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1714
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1579
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1654
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getBatteryOverheatingState()I
    .locals 1

    .line 826
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getBatteryPtcFailureStates()[I
    .locals 1

    .line 1116
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltageLowState()I
    .locals 1

    .line 873
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1285
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1810
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getCcsWorkState()I
    .locals 1

    .line 843
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1759
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1624
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getCiuSdcardFailureState()I
    .locals 1

    .line 1010
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getDcdcFailureState()I
    .locals 1

    .line 858
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1483
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1826
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1330
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1360
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1345
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getDvrFailureState()I
    .locals 1

    .line 995
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1534
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getElectricMotorSystemHotState()I
    .locals 1

    .line 888
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getElectricVacuumPumpFailureState()I
    .locals 1

    .line 903
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getEpbSysFailureState()I
    .locals 1

    .line 757
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1744
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1669
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1498
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1875
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1892
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1150
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1519
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHdcFailureState()I
    .locals 1

    .line 771
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1165
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHighVoltageRelayAdhesionState()I
    .locals 1

    .line 918
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getHvacCompressorFailureStates()[I
    .locals 1

    .line 1099
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getHvacPtcFailureState()I
    .locals 1

    .line 1082
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1729
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1793
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1971
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getLdwState()I
    .locals 1

    .line 1030
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1255
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1195
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1549
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1300
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1180
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getObcMsgLostState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1639
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1270
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1375
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1390
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1609
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getRctaState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1842
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1858
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1225
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1133
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1240
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1210
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1909
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1926
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1949
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getSideReversingState()I
    .locals 1

    .line 1066
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public getTcmMotorFailureStates()[I
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntVectorValueOrThrow([I)[I

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

    .line 1594
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1420
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1564
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

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

    .line 1774
    iget v0, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    invoke-direct {p0, v0}, Landroid/car/diagnostic/EcusFailureStates;->getIntValueOrThrow(I)I

    move-result v0

    return v0
.end method

.method public setAbnormalTirePressureState(I)V
    .locals 0

    .line 1439
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    return-void
.end method

.method public setAbsFailureState(I)V
    .locals 0

    .line 1703
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    return-void
.end method

.method public setAebState(I)V
    .locals 0

    .line 1053
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    return-void
.end method

.method public setAgsFailureState(I)V
    .locals 0

    .line 937
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    return-void
.end method

.method public setAirbagFailureState(I)V
    .locals 0

    .line 1454
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    return-void
.end method

.method public setAlcCtrlRemindInfo(I)V
    .locals 0

    .line 2000
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    return-void
.end method

.method public setAllMsmModulesFailureStates([I)V
    .locals 0

    .line 984
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    return-void
.end method

.method public setAllTirePerssureSensorsFailureStates([I)V
    .locals 0

    .line 815
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    return-void
.end method

.method public setAllTireTemperatureWarnings([I)V
    .locals 0

    .line 795
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    return-void
.end method

.method public setAlsFailureState(I)V
    .locals 0

    .line 1472
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    return-void
.end method

.method public setApaFailureState(I)V
    .locals 0

    .line 2032
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    return-void
.end method

.method public setApbFailureState(I)V
    .locals 0

    .line 1688
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    return-void
.end method

.method public setAtlsFailureSate(I)V
    .locals 0

    .line 1319
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    return-void
.end method

.method public setAvasFailureState(I)V
    .locals 0

    .line 1409
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    return-void
.end method

.method public setAvhFailureState(I)V
    .locals 0

    .line 1718
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    return-void
.end method

.method public setBCruiseFailureState(I)V
    .locals 0

    .line 1583
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    return-void
.end method

.method public setBatteryDeadState(I)V
    .locals 0

    .line 1658
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    return-void
.end method

.method public setBatteryOverheatingState(I)V
    .locals 0

    .line 830
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    return-void
.end method

.method public setBatteryPtcFailureStates([I)V
    .locals 0

    .line 1120
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    return-void
.end method

.method public setBatteryVoltageLowState(I)V
    .locals 0

    .line 877
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    return-void
.end method

.method public setBcmSystemFailureState(I)V
    .locals 0

    .line 1289
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    return-void
.end method

.method public setBsdState(I)V
    .locals 0

    .line 1814
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    return-void
.end method

.method public setCcsWorkState(I)V
    .locals 0

    .line 847
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    return-void
.end method

.method public setCdcFailureState(I)V
    .locals 0

    .line 1763
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    return-void
.end method

.method public setChargePortHotState(I)V
    .locals 0

    .line 1628
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    return-void
.end method

.method public setCiuSdcardFailureState(I)V
    .locals 0

    .line 1014
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    return-void
.end method

.method public setDcdcFailureState(I)V
    .locals 0

    .line 862
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    return-void
.end method

.method public setDhcFailureState(I)V
    .locals 0

    .line 1487
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    return-void
.end method

.method public setDowState(I)V
    .locals 0

    .line 1830
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    return-void
.end method

.method public setDriverMsmFailureState(I)V
    .locals 0

    .line 1334
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    return-void
.end method

.method public setDriverMsmHeatSysFailureState(I)V
    .locals 0

    .line 1364
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    return-void
.end method

.method public setDriverMsmVentilationMotorFailureState(I)V
    .locals 0

    .line 1349
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    return-void
.end method

.method public setDvrFailureState(I)V
    .locals 0

    .line 999
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    return-void
.end method

.method public setEbsFailureState(I)V
    .locals 0

    .line 1538
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    return-void
.end method

.method public setElectricMotorSystemHotState(I)V
    .locals 0

    .line 892
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    return-void
.end method

.method public setElectricVacuumPumpFailureState(I)V
    .locals 0

    .line 907
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    return-void
.end method

.method public setEpbSysFailureState(I)V
    .locals 0

    .line 761
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    return-void
.end method

.method public setEpsFailureState(I)V
    .locals 0

    .line 1748
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    return-void
.end method

.method public setEspFailureState(I)V
    .locals 0

    .line 1673
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    return-void
.end method

.method public setEvSysFailureState(I)V
    .locals 0

    .line 1502
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    return-void
.end method

.method public setFlSrrFailureState(I)V
    .locals 0

    .line 1879
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    return-void
.end method

.method public setFrSrrFailureState(I)V
    .locals 0

    .line 1896
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    return-void
.end method

.method public setFrontIpuFailureState(I)V
    .locals 0

    .line 1154
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    return-void
.end method

.method public setGearWarningInfo(I)V
    .locals 0

    .line 1523
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    return-void
.end method

.method public setHdcFailureState(I)V
    .locals 0

    .line 775
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    return-void
.end method

.method public setHighBeamFailureState(I)V
    .locals 0

    .line 1169
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    return-void
.end method

.method public setHighVoltageRelayAdhesionState(I)V
    .locals 0

    .line 933
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    return-void
.end method

.method public setHvacCompressorFailureStates([I)V
    .locals 0

    .line 1103
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    return-void
.end method

.method public setHvacPtcFailureState(I)V
    .locals 0

    .line 1086
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    return-void
.end method

.method public setIbtFailureState(I)V
    .locals 0

    .line 1733
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    return-void
.end method

.method public setIhbState(I)V
    .locals 0

    .line 1797
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    return-void
.end method

.method public setIslcState(I)V
    .locals 0

    .line 1975
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    return-void
.end method

.method public setLdwState(I)V
    .locals 0

    .line 1034
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    return-void
.end method

.method public setLeftDaytimeRunningLightFailureState(I)V
    .locals 0

    .line 1259
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    return-void
.end method

.method public setLeftTurnLampFailureState(I)V
    .locals 0

    .line 1199
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    return-void
.end method

.method public setLiquidHighTempState(I)V
    .locals 0

    .line 1553
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    return-void
.end method

.method public setLluFailureState(I)V
    .locals 0

    .line 1304
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    return-void
.end method

.method public setLowBeamFailureState(I)V
    .locals 0

    .line 1184
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    return-void
.end method

.method public setObcMsgLostState(I)V
    .locals 0

    .line 1643
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    return-void
.end method

.method public setParkingLampFailureState(I)V
    .locals 0

    .line 1274
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    return-void
.end method

.method public setPassengerMsmFailureState(I)V
    .locals 0

    .line 1379
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    return-void
.end method

.method public setPassengerMsmHeatSysFailureState(I)V
    .locals 0

    .line 1394
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    return-void
.end method

.method public setPowerLimitationState(I)V
    .locals 0

    .line 1613
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    return-void
.end method

.method public setRctaState(I)V
    .locals 0

    .line 1846
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    return-void
.end method

.method public setRcwState(I)V
    .locals 0

    .line 1862
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    return-void
.end method

.method public setRearFogLampFailureState(I)V
    .locals 0

    .line 1229
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    return-void
.end method

.method public setRearIpuFailureState(I)V
    .locals 0

    .line 1137
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    return-void
.end method

.method public setRightDaytimeRunningLightFailureState(I)V
    .locals 0

    .line 1244
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    return-void
.end method

.method public setRightTurnLampFailureState(I)V
    .locals 0

    .line 1214
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    return-void
.end method

.method public setRlSrrFailureState(I)V
    .locals 0

    .line 1913
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    return-void
.end method

.method public setRrSrrFailureState(I)V
    .locals 0

    .line 1930
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    return-void
.end method

.method public setScuLongCtrlRemindInfo(I)V
    .locals 0

    .line 1953
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    return-void
.end method

.method public setSideReversingState(I)V
    .locals 0

    .line 1070
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    return-void
.end method

.method public setTcmMotorFailureStates([I)V
    .locals 0

    .line 956
    iput-object p1, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    return-void
.end method

.method public setThermalRunawayState(I)V
    .locals 0

    .line 1598
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    return-void
.end method

.method public setTpmsSysFailureState(I)V
    .locals 0

    .line 1424
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    return-void
.end method

.method public setWaterSensorFailureState(I)V
    .locals 0

    .line 1568
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    return-void
.end method

.method public setXpuFailureState(I)V
    .locals 0

    .line 1778
    iput p1, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcusFailureStates{highBeamFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowBeamFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftTurnLampFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightTurnLampFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rearFogLampFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightDaytimeRunningLightFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftDaytimeRunningLightFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parkingLampFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bcmSystemFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lluFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", atlsFailureSate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverMsmFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverMsmVentilationMotorFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverMsmHeatSysFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passengerMsmFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passengerMsmHeatSysFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avasFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tpmsSysFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", abnormalTirePressureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airbagFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alsFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dhcFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evSysFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gearWarningInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ebsFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", liquidHighTempState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waterSensorFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bCruiseFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thermalRunawayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerLimitationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chargePortHotState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obcMsgLostState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryDeadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rearIpuFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frontIpuFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", espFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apbFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", absFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avhFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ibtFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", epsFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cdcFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xpuFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ihbState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bsdState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dowState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rctaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rcwState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flSrrFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frSrrFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rlSrrFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rrSrrFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scuLongCtrlRemindInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", islcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alcCtrlRemindInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apaFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", epbSysFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdcFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allTireTemperatureWarnings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    .line 726
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allTirePerssureSensorsFailureStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    .line 727
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryOverheatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ccsWorkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dcdcFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryVoltageLowState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", electricMotorSystemHotState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", electricVacuumPumpFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highVoltageRelayAdhesionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agsFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcmMotorFailureStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    .line 736
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allMsmModulesFailureStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    .line 737
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dvrFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ciuSdcardFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ldwState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aebState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sideReversingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hvacPtcFailureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hvacCompressorFailureStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    .line 744
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batteryPtcFailureStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    .line 745
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2042
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->highBeamFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->lowBeamFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->leftTurnLampFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rightTurnLampFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rearFogLampFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rightDaytimeRunningLightFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->leftDaytimeRunningLightFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->parkingLampFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->bcmSystemFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2051
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->lluFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->atlsFailureSate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmVentilationMotorFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->driverMsmHeatSysFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->passengerMsmHeatSysFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->avasFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->tpmsSysFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->abnormalTirePressureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->airbagFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->alsFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->dhcFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2064
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->evSysFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->gearWarningInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2066
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ebsFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->liquidHighTempState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2068
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->waterSensorFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->bCruiseFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->thermalRunawayState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->powerLimitationState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2072
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->chargePortHotState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->obcMsgLostState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryDeadState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rearIpuFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->frontIpuFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->espFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->apbFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2079
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->absFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->avhFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ibtFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->epsFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->cdcFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2084
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->xpuFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2085
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ihbState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->bsdState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2087
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->dowState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2088
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rctaState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2089
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rcwState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->flSrrFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->frSrrFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rlSrrFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->rrSrrFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->scuLongCtrlRemindInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->islcState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2096
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->alcCtrlRemindInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2097
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->apaFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->epbSysFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->hdcFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->allTireTemperatureWarnings:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2101
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->allTirePerssureSensorsFailureStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2102
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryOverheatingState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ccsWorkState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->dcdcFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryVoltageLowState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->electricMotorSystemHotState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->electricVacuumPumpFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->highVoltageRelayAdhesionState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->agsFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->tcmMotorFailureStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2111
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->allMsmModulesFailureStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2112
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->dvrFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ciuSdcardFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2114
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->ldwState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->aebState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2116
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->sideReversingState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2117
    iget p2, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacPtcFailureState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->hvacCompressorFailureStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2119
    iget-object p2, p0, Landroid/car/diagnostic/EcusFailureStates;->batteryPtcFailureStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
