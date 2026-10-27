.class public final Landroid/car/hardware/bcm/CarBcmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarBcmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;,
        Landroid/car/hardware/bcm/CarBcmManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AGS_VEHICLE_MODE_FULL_CLOSE_REQ:I = 0x1

.field public static final AGS_VEHICLE_MODE_FULL_OPEN_REQ:I = 0x2

.field public static final AGS_VEHICLE_MODE_NO_REQ:I = 0x0

.field public static final ALL_HANDLE_STATUS_BUSY:I = 0x2

.field public static final ALL_HANDLE_STATUS_EXTRACTED:I = 0x1

.field public static final ALL_HANDLE_STATUS_FAIL:I = 0x3

.field public static final ALL_HANDLE_STATUS_RETRACTED:I = 0x0

.field public static final ALL_HANDLE_SW_EXTRACTED:I = 0x2

.field public static final ALL_HANDLE_SW_RETRACTED:I = 0x1

.field public static final ALL_POS_SET_MEMORY_TYPE_NO_REQ:I = 0x0

.field public static final ALL_POS_SET_MEMORY_TYPE_RECALL_POSITION:I = 0x2

.field public static final ALL_POS_SET_MEMORY_TYPE_SAVE_POSITION:I = 0x1

.field public static final ALS_FAILURE_STATE_ACCELERATION_SENSOR_ERROR:I = 0x2

.field public static final ALS_FAILURE_STATE_COMMUNICATION_ERROR:I = 0x1

.field public static final ALS_FAILURE_STATE_INITIAL_DATA_ERROR:I = 0x4

.field public static final ALS_FAILURE_STATE_NOT_INITIALIZED:I = 0x3

.field public static final ALS_FAILURE_STATE_NO_ERROR:I = 0x0

.field public static final ALS_FAILURE_STATE_ROAD_ANGLE_ERROR:I = 0x5

.field public static final ALS_STUDY_INITIALIZATION_FAILED:I = 0x1

.field public static final ALS_STUDY_INITIALIZATION_NOT_FINISHED:I = 0x0

.field public static final ALS_STUDY_INITIALIZATION_SUCCESS:I = 0x2

.field public static final ARS_AUTO:I = 0x1

.field public static final ARS_FAULT:I = 0x1

.field public static final ARS_FOLD:I = 0x1

.field public static final ARS_FOLDING:I = 0x1

.field public static final ARS_FOLD_0_TO_10PER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_100_PER:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_10_TO_20PER:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_20_TO_30PER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_30_TO_40PER:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_40_TO_50PER:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_50_TO_60PER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_60_TO_70PER:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_70_TO_80PER:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_80_TO_90PER:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_90_TO_100PER:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_FOLD_DURG:I = 0x2

.field public static final ARS_INITED:I = 0x1

.field public static final ARS_INITING:I = 0x6

.field public static final ARS_INIT_ING:I = 0x2

.field public static final ARS_INIT_INVALID:I = 0x3

.field public static final ARS_INIT_LEARN:I = 0x1

.field public static final ARS_MANUAL:I = 0x2

.field public static final ARS_NOT_INITED:I = 0x0

.field public static final ARS_NO_COMMAND:I = 0x0

.field public static final ARS_NO_FAULT:I = 0x0

.field public static final ARS_STOP:I = 0x0

.field public static final ARS_UNFOLD:I = 0x2

.field public static final ARS_UNFOLDING:I = 0x3

.field public static final ARS_UNFOLD_100_PER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_UNFOLD_DURG:I = 0x4

.field public static final ARS_UNKNOW_POS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ARS_ZERO_POS_LRN:I = 0x5

.field public static final AS_AUTOLEVEL_RESULT_DEFAULT:I = 0x0

.field public static final AS_AUTOLEVEL_RESULT_FAIL:I = 0x1

.field public static final AS_AUTOLEVEL_RESULT_OVERTIME:I = 0x3

.field public static final AS_AUTOLEVEL_RESULT_PASS:I = 0x2

.field public static final AS_AUTO_LEVELING_RESULT_AUTOMATIC_LEVELED:I = 0x1

.field public static final AS_AUTO_LEVELING_RESULT_FAULT:I = 0x3

.field public static final AS_AUTO_LEVELING_RESULT_INVALID_VALUE:I = 0x2

.field public static final AS_AUTO_LEVELING_RESULT_NO_AUTOMATIC_TARGET:I = 0x0

.field public static final AS_DRIVING_MODE_STATUS_ADAPTIVE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AS_DRIVING_MODE_STATUS_BOOST:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AS_DRIVING_MODE_STATUS_COMFORT:I = 0x1

.field public static final AS_DRIVING_MODE_STATUS_CUSTOMER:I = 0x6

.field public static final AS_DRIVING_MODE_STATUS_ECO:I = 0x2

.field public static final AS_DRIVING_MODE_STATUS_NORMAL:I = 0x4

.field public static final AS_DRIVING_MODE_STATUS_NO_COMMAND:I = 0x0

.field public static final AS_DRIVING_MODE_STATUS_OFFROAD:I = 0x5

.field public static final AS_DRIVING_MODE_STATUS_SPORT:I = 0x3

.field public static final AS_FUNC_LIMIT_FAULT:I = 0x5

.field public static final AS_H_ABNORMAL_FAULT:I = 0x4

.field public static final AS_H_LIMIT1_FAULT:I = 0x2

.field public static final AS_H_LIMIT2_FAULT:I = 0x3

.field public static final AS_LVL_CHG_ST_GOING_DOWN:I = 0x1

.field public static final AS_LVL_CHG_ST_GOING_UP:I = 0x2

.field public static final AS_LVL_CHG_ST_NO_CHANGE:I = 0x0

.field public static final AS_MODALLWD_CAMPING_ALLOWED:I = 0x1

.field public static final AS_MODALLWD_CAMPING_NOT_ALLOWED:I = 0x0

.field public static final AS_NO_FAULT:I = 0x0

.field public static final AS_SPECIAL_DRIVING_MODE_STATUS_MUD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AS_SPECIAL_DRIVING_MODE_STATUS_NO_COMMAND:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AS_SPECIAL_DRIVING_MODE_STATUS_XPOWER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AS_S_LIMIT_FAULT:I = 0x1

.field public static final AS_TAR_LVL_HL1:I = 0x1

.field public static final AS_TAR_LVL_HL2:I = 0x0

.field public static final AS_TAR_LVL_LL1:I = 0x3

.field public static final AS_TAR_LVL_LL2:I = 0x4

.field public static final AS_TAR_LVL_LL3:I = 0x5

.field public static final AS_TAR_LVL_NL:I = 0x2

.field public static final AS_TAR_LVL_NOT_VALID:I = 0x6

.field public static final AS_VEHICLE_MODE_EXHIBITION:I = 0x3

.field public static final AS_VEHICLE_MODE_FACTORY:I = 0x5

.field public static final AS_VEHICLE_MODE_INVALID:I = 0x0

.field public static final AS_VEHICLE_MODE_MAINTENANCE:I = 0x2

.field public static final AS_VEHICLE_MODE_NORMAL:I = 0x1

.field public static final AS_VEHICLE_MODE_PRODUCTION:I = 0x6

.field public static final AS_VEHICLE_MODE_TRAIL_DRIVE:I = 0x7

.field public static final AS_VEHICLE_MODE_TRANSPORTATION:I = 0x4

.field public static final AS_WELCOME_SW_NO_COMMAND:I = 0x2

.field public static final AS_WELCOME_SW_OFF:I = 0x0

.field public static final AS_WELCOME_SW_ON:I = 0x1

.field public static final AS_YELLOW_WARNING_AS:I = 0x1

.field public static final AS_YELLOW_WARNING_AS_CDC:I = 0x3

.field public static final AS_YELLOW_WARNING_CDC:I = 0x2

.field public static final ATWS_STATUS_ALARM:I = 0x4

.field public static final ATWS_STATUS_DEFENCE:I = 0x0

.field public static final ATWS_STATUS_PRE_DEFENCE:I = 0x1

.field public static final ATWS_STATUS_REMIND:I = 0x3

.field public static final ATWS_STATUS_UNDEFENCE:I = 0x2

.field public static final AUTOWINDOWCMD_AUTODOWN:I = 0x2

.field public static final AUTOWINDOWCMD_AUTOUP:I = 0x1

.field public static final AUTOWINDOWCMD_STOP:I = 0x3

.field public static final BCM_BONNECT_CLOSED:I = 0x0

.field public static final BCM_BONNECT_COLLIDE:I = 0x2

.field public static final BCM_BONNECT_OPENED:I = 0x1

.field public static final BCM_BONNECT_OPEN_CIRCUIT:I = 0x3

.field public static final BCM_BONNET_CLOSED:I = 0x0

.field public static final BCM_BONNET_LOCK1_OPEN:I = 0x2

.field public static final BCM_BONNET_LOCK2_OPEN:I = 0x3

.field public static final BCM_BONNET_OPENED:I = 0x1

.field public static final BCM_CAMPING_MODE_STATUS:I = 0x6

.field public static final BCM_CDU_DOOR_LOCK:I = 0x1

.field public static final BCM_CDU_DOOR_UNLOCK:I = 0x2

.field public static final BCM_CDU_HIGH_BEAM_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_CDU_HIGH_BEAM_ON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_CDU_TURN_LAMP_ACTIVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_CDU_TURN_LAMP_INACTIVE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_CDU_TURN_LAMP_NOTACTIVE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_CHARGE_GUN_LOCKED:I = 0x1

.field public static final BCM_CHARGE_GUN_UNLOCKED:I = 0x0

.field public static final BCM_CHARGE_PORT_CLOSED:I = 0x2

.field public static final BCM_CHARGE_PORT_DEFAULT:I = 0x0

.field public static final BCM_CHARGE_PORT_FAULT:I = 0x3

.field public static final BCM_CHARGE_PORT_LEFT:I = 0x1

.field public static final BCM_CHARGE_PORT_LOCK:I = 0x0

.field public static final BCM_CHARGE_PORT_MIDDLE:I = 0x1

.field public static final BCM_CHARGE_PORT_OPEN:I = 0x0

.field public static final BCM_CHARGE_PORT_RIGHT:I = 0x2

.field public static final BCM_CHARGE_PORT_UNLOCK:I = 0x1

.field public static final BCM_COLUMN_CONTROL_PENDING:I = 0x2

.field public static final BCM_COLUMN_CONTROL_START:I = 0x1

.field public static final BCM_COLUMN_CONTROL_STOP:I = 0x3

.field public static final BCM_COLUMN_MOVE_DOWNWARD:I = 0x2

.field public static final BCM_COLUMN_MOVE_INSIDE:I = 0x2

.field public static final BCM_COLUMN_MOVE_OUTSIDE:I = 0x1

.field public static final BCM_COLUMN_MOVE_UPWARD:I = 0x1

.field public static final BCM_COMMAND_NO_REQUEST:I = 0x0

.field public static final BCM_COMMAND_REQUEST:I = 0x1

.field public static final BCM_COMMON_ACTIVE:I = 0x1

.field public static final BCM_COMMON_ERROR:I = 0x1

.field public static final BCM_COMMON_INACTIVE:I = 0x0

.field public static final BCM_COMMON_INVALID:I = 0x2

.field public static final BCM_COMMON_NO_ERROR:I = 0x0

.field public static final BCM_CWC_CHARGEDONE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_CWC_CHARGE_DONE:I = 0x2

.field public static final BCM_CWC_CHARGE_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_CWC_CHARGING:I = 0x1

.field public static final BCM_CWC_ERROR_FOD:I = 0x3

.field public static final BCM_CWC_ERROR_LOWVOL_PROTECT:I = 0x2

.field public static final BCM_CWC_ERROR_NOCOMMAND:I = 0x0

.field public static final BCM_CWC_ERROR_OVERVOL_PROTECT:I = 0x1

.field public static final BCM_CWC_ERROR_PEPS_INTERRUPT:I = 0x4

.field public static final BCM_CWC_ERROR_RX_ERROR:I = 0x5

.field public static final BCM_CWC_ERROR_TEMP_HIGH:I = 0x6

.field public static final BCM_CWC_NO_COMMAND:I = 0x0

.field public static final BCM_DAY_LIGHT_OFF:I = 0x0

.field public static final BCM_DAY_LIGHT_ON:I = 0x1

.field public static final BCM_DAY_LIHGT_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_DAY_LIHGT_ON:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_1:I = 0x1

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_2:I = 0x2

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_3:I = 0x3

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_4:I = 0x4

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_5:I = 0x5

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_6:I = 0x6

.field public static final BCM_DOMELIGHT_BRIGHT_OFF:I = 0x0

.field public static final BCM_DOMELIGHT_MODE_DOME:I = 0x2

.field public static final BCM_DOMELIGHT_MODE_OFF:I = 0x0

.field public static final BCM_DOMELIGHT_MODE_ON:I = 0x1

.field public static final BCM_DOMELIGHT_SW_FADING:I = 0x2

.field public static final BCM_DOMELIGHT_SW_OFF:I = 0x0

.field public static final BCM_DOMELIGHT_SW_ON:I = 0x1

.field public static final BCM_DOOR_CLOSE:I = 0x0

.field public static final BCM_DOOR_LOCK_EVENT_LOCK:I = 0x1

.field public static final BCM_DOOR_LOCK_EVENT_UNLOCK:I = 0x2

.field public static final BCM_DOOR_LOCK_PRESS_ONCE:I = 0x0

.field public static final BCM_DOOR_LOCK_PRESS_TWICE:I = 0x1

.field public static final BCM_DOOR_OPEN:I = 0x1

.field public static final BCM_DRIVER_BELT_BUCKLED:I = 0x0

.field public static final BCM_DRIVER_BELT_UNBUCKLED_WARNING:I = 0x1

.field public static final BCM_ENGINEERING_MODE_STATUS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_HAZARD_LIGHT_OFF:I = 0x0

.field public static final BCM_HAZARD_LIGHT_ON:I = 0x1

.field public static final BCM_HEAD_LAMP_LEVEL_0:I = 0x0

.field public static final BCM_HEAD_LAMP_LEVEL_1:I = 0x1

.field public static final BCM_HEAD_LAMP_LEVEL_2:I = 0x2

.field public static final BCM_HEAD_LAMP_LEVEL_3:I = 0x3

.field public static final BCM_HEAD_LAMP_LEVEL_4:I = 0x4

.field public static final BCM_HEAD_LAMP_LEVEL_AUTO:I = 0x5

.field public static final BCM_HEAD_LAMP_LEVEL_MANUAL:I = 0x6

.field public static final BCM_LAMP_LOCATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_LAMP_STATE_AUTO:I = 0x3

.field public static final BCM_LAMP_STATE_AUTO_AND_LOCATION:I = 0x4

.field public static final BCM_LAMP_STATE_CLOSE:I = 0x0

.field public static final BCM_LAMP_STATE_LOCATION:I = 0x1

.field public static final BCM_LAMP_STATE_NEAR:I = 0x2

.field public static final BCM_LIGHT_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_LIGHT_ME_HOME_INACTIVE:I = 0x1

.field public static final BCM_LIGHT_ME_HOME_LOW_BEAM:I = 0x2

.field public static final BCM_LIGHT_ME_HOME_LOW_BEAM_AND_PARKING_LAMP:I = 0x3

.field public static final BCM_LIGHT_ME_HOME_LOW_BEAM_PARKING:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_LIGHT_ME_HOME_NOT_ACTIVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_LIGHT_OUTSIDE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_LOW_BEAM_OFF_DIAG_ACTIVE:I = 0x1

.field public static final BCM_LOW_BEAM_OFF_DIAG_NO:I = 0x2

.field public static final BCM_LOW_BEAM_OFF_DIAG_NOT_ACTIVE:I = 0x0

.field public static final BCM_LOW_BEAM_OFF_DIAG_YES:I = 0x1

.field public static final BCM_MAINTENANCE_MODE_STATUS:I = 0x1

.field public static final BCM_NFC_CARD_AUTH_STATUS_CWC_PASS:I = 0x3

.field public static final BCM_NFC_CARD_AUTH_STATUS_FAIL:I = 0x1

.field public static final BCM_NFC_CARD_AUTH_STATUS_NFC_PASS:I = 0x2

.field public static final BCM_NFC_CARD_AUTH_STATUS_NO_COMMAND:I = 0x0

.field public static final BCM_NO_REQUEST_MODE_STATUS:I = 0x0

.field public static final BCM_PEKEY_LOCK_VALUE_BOTH:I = 0x4

.field public static final BCM_PEKEY_LOCK_VALUE_INVALID:I = 0x1

.field public static final BCM_PEKEY_LOCK_VALUE_LEFT:I = 0x2

.field public static final BCM_PEKEY_LOCK_VALUE_RIGHT:I = 0x3

.field public static final BCM_PEKEY_LOCK_VALUE_UNKNOWN:I = 0x0

.field public static final BCM_POWERMODE_CRANK:I = 0x2

.field public static final BCM_POWERMODE_OFF:I = 0x0

.field public static final BCM_POWERMODE_ON:I = 0x1

.field public static final BCM_POWERMODE_REMOTE_ON:I = 0x2

.field public static final BCM_POWEROFF_SOURCE_AUTO:I = 0x5

.field public static final BCM_POWEROFF_SOURCE_DOOR_LOCK:I = 0x1

.field public static final BCM_POWEROFF_SOURCE_FORCE:I = 0x2

.field public static final BCM_POWEROFF_SOURCE_INVALID:I = 0x0

.field public static final BCM_POWEROFF_SOURCE_OTA_OR_REMOTE_DIAG:I = 0x3

.field public static final BCM_POWEROFF_SOURCE_XPU_REQ:I = 0x4

.field public static final BCM_REAR_MIRROR_FOLDING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_MIRROR_POS_FOLDDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_MIRROR_POS_MIDDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_MIRROR_POS_UNFOLDDED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_MIRROR_STOPPED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_MIRROR_UNFOLDING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BCM_REAR_TRUNK_CLOSE:I = 0x3

.field public static final BCM_REAR_TRUNK_DEFAULT_POSISITION:I = 0x6

.field public static final BCM_REAR_TRUNK_OPEN:I = 0x1

.field public static final BCM_REAR_TRUNK_PREUNLOCK:I = 0x4

.field public static final BCM_REAR_TRUNK_STOP:I = 0x2

.field public static final BCM_REAR_TRUNK_SWS_OPEN:I = 0x5

.field public static final BCM_REAR_VIEW_MIRROR_TYPE_CLOSE:I = 0x0

.field public static final BCM_REAR_VIEW_MIRROR_TYPE_OPEN:I = 0x1

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_DRIVER:I = 0x1

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_FRONT:I = 0x2

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_NOT_ACTIVE:I = 0x0

.field public static final BCM_SEAT_BLOW_LEVEL_1:I = 0x1

.field public static final BCM_SEAT_BLOW_LEVEL_2:I = 0x2

.field public static final BCM_SEAT_BLOW_LEVEL_3:I = 0x3

.field public static final BCM_SEAT_BLOW_LEVEL_AUTO:I = 0x4

.field public static final BCM_SEAT_BLOW_LEVEL_OFF:I = 0x0

.field public static final BCM_SEAT_ERROR_GAIN:I = 0x1

.field public static final BCM_SEAT_ERROR_NONE:I = 0x0

.field public static final BCM_SEAT_HEAT_LEVEL_1:I = 0x1

.field public static final BCM_SEAT_HEAT_LEVEL_2:I = 0x2

.field public static final BCM_SEAT_HEAT_LEVEL_3:I = 0x3

.field public static final BCM_SEAT_HEAT_LEVEL_AUTO:I = 0x4

.field public static final BCM_SEAT_HEAT_LEVEL_OFF:I = 0x0

.field public static final BCM_SEAT_MOVE_DIRECTION_BACKWARD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SEAT_MOVE_DIRECTION_FORWARD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SEAT_MOVE_DIRECTION_NOT_MOVE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SEAT_TYPE_ANGLE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SEAT_TYPE_HEIGHT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SEAT_TYPE_LEVEL_LOCATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_SHC_DOWN:I = 0x2

.field public static final BCM_SHC_UP:I = 0x1

.field public static final BCM_SIGNAL_INVALID:I = 0x0

.field public static final BCM_SIGNAL_VALID:I = 0x1

.field public static final BCM_STATUS_NO_COMMAND:I = 0x2

.field public static final BCM_STATUS_OFF:I = 0x0

.field public static final BCM_STATUS_ON:I = 0x1

.field public static final BCM_SWS_HEAT_STATUS_LEVEL_1:I = 0x1

.field public static final BCM_SWS_HEAT_STATUS_LEVEL_2:I = 0x2

.field public static final BCM_SWS_HEAT_STATUS_LEVEL_3:I = 0x3

.field public static final BCM_SWS_HEAT_STATUS_OFF:I = 0x0

.field public static final BCM_TRAILER_MODE_STATUS:I = 0x3

.field public static final BCM_TRANSPORT_MODE_STATUS:I = 0x2

.field public static final BCM_TRUNK_OPENNER_FULL_CLOSED_STATUS:I = 0x1

.field public static final BCM_TRUNK_OPENNER_FULL_OPENED_STATUS:I = 0x5

.field public static final BCM_TRUNK_OPENNER_HALF_CLOSED_STATUS:I = 0x9

.field public static final BCM_TRUNK_OPENNER_MOVE_DOWN_BRKG_STATUS:I = 0x7

.field public static final BCM_TRUNK_OPENNER_MOVE_DOWN_STATUS:I = 0x6

.field public static final BCM_TRUNK_OPENNER_MOVE_UP_BRKG_STATUS:I = 0x3

.field public static final BCM_TRUNK_OPENNER_MOVE_UP_STATUS:I = 0x2

.field public static final BCM_TRUNK_OPENNER_STOP_DURG_CLOSE_STATUS:I = 0x8

.field public static final BCM_TRUNK_OPENNER_STOP_DURG_OPEN_STATUS:I = 0x4

.field public static final BCM_TRUNK_OPENNER_STOP_MIN_PNT_FOR_CLOSE_STATUS:I = 0xa

.field public static final BCM_TRUNK_OPENNER_UNKOWN_STATUS:I = 0x0

.field public static final BCM_TRUNK_POS_11_20_PERCENT_TOP:I = 0x3

.field public static final BCM_TRUNK_POS_1_10_PERCENT_TOP:I = 0x2

.field public static final BCM_TRUNK_POS_21_30_PERCENT_TOP:I = 0x4

.field public static final BCM_TRUNK_POS_31_40_PERCENT_TOP:I = 0x5

.field public static final BCM_TRUNK_POS_41_50_PERCENT_TOP:I = 0x6

.field public static final BCM_TRUNK_POS_51_60_PERCENT_TOP:I = 0x7

.field public static final BCM_TRUNK_POS_61_70_PERCENT_TOP:I = 0x8

.field public static final BCM_TRUNK_POS_71_80_PERCENT_TOP:I = 0x9

.field public static final BCM_TRUNK_POS_81_90_PERCENT_TOP:I = 0xa

.field public static final BCM_TRUNK_POS_91_100_PERCENT_TOP:I = 0xb

.field public static final BCM_TRUNK_POS_FULL_CLOSED:I = 0x1

.field public static final BCM_TRUNK_POS_UNKNOWN:I = 0x0

.field public static final BCM_TRUNK_SETPOS_DEFAULT_POS_REQ:I = 0xfd

.field public static final BCM_TRUNK_SETPOS_HEIGHT_40_50_PERCENT_TOP:I = 0x7

.field public static final BCM_TRUNK_SETPOS_HEIGHT_50_60_PERCENT_TOP:I = 0x2

.field public static final BCM_TRUNK_SETPOS_HEIGHT_51_70_PERCENT_TOP:I = 0x3

.field public static final BCM_TRUNK_SETPOS_HEIGHT_71_80_PERCENT_TOP:I = 0x4

.field public static final BCM_TRUNK_SETPOS_HEIGHT_81_90_PERCENT_TOP:I = 0x5

.field public static final BCM_TRUNK_SETPOS_HEIGHT_91_100_PERCENT_TOP:I = 0x6

.field public static final BCM_TRUNK_SETPOS_HEIGHT_FAIL:I = 0x1

.field public static final BCM_TRUNK_SETPOS_HEIGHT_UNKNOWN:I = 0x0

.field public static final BCM_TRUNK_SETPOS_SET_CURRENT_POS:I = 0xfe

.field public static final BCM_TTM_SW_CLOSE:I = 0x0

.field public static final BCM_TTM_SW_MIDDLE:I = 0x2

.field public static final BCM_TTM_SW_OPEN:I = 0x1

.field public static final BCM_TTM_SW_STOP:I = 0x3

.field public static final BCM_UNLOCK_LIGHT_AND_HORN:I = 0x0

.field public static final BCM_UNLOCK_RESPONSE_LIGHT:I = 0x1

.field public static final BCM_VBW_SYS_OP_ST_CRASH_PROTECT:I = 0x5

.field public static final BCM_VBW_SYS_OP_ST_ECU_ABNORMAL:I = 0x2

.field public static final BCM_VBW_SYS_OP_ST_ECU_INITIALIZING:I = 0x1

.field public static final BCM_VBW_SYS_OP_ST_ECU_NORMAL:I = 0x0

.field public static final BCM_VBW_SYS_OP_ST_PLAY_PROTECT:I = 0x3

.field public static final BCM_VBW_SYS_OP_ST_THEMO_PROTECT:I = 0x6

.field public static final BCM_VBW_SYS_OP_ST_THEMO_RUNNAWAY_PROTECT:I = 0x4

.field public static final BCM_WELCOME_MODE_BACK_STATUS_ACTIVE:I = 0x1

.field public static final BCM_WELCOME_MODE_BACK_STATUS_NOT_ACTIVE:I = 0x0

.field public static final BCM_WHEEL_DEFINED_BUTTON_HIGH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_WHEEL_DEFINED_BUTTON_LOW:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_WHEEL_DEFINED_BUTTON_MIDDLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BCM_WINDOW_TYPE_DOWN_AUTO:I = 0x4

.field public static final BCM_WINDOW_TYPE_DOWN_MANUALLY:I = 0x3

.field public static final BCM_WINDOW_TYPE_INVALID:I = 0x0

.field public static final BCM_WINDOW_TYPE_STOP_ACTION:I = 0x5

.field public static final BCM_WINDOW_TYPE_UP_AUTO:I = 0x2

.field public static final BCM_WINDOW_TYPE_UP_MANUALLY:I = 0x1

.field public static final BCM_WIN_ACTION_INVALID:I = 0x3

.field public static final BCM_WIN_ACTION_STOPPED:I = 0x0

.field public static final BCM_WIN_ACTION_WINDOW_CLOSING:I = 0x1

.field public static final BCM_WIN_ACTION_WINDOW_OPENNING:I = 0x2

.field public static final BCM_WIN_INI_LOST_NO_REQUEST:I = 0x0

.field public static final BCM_WIN_INI_LOST_REQUEST:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_1:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_2:I = 0x2

.field public static final BCM_WIPER_INTERNAL_GEAR_3:I = 0x3

.field public static final BCM_WIPER_INTERNAL_GEAR_4:I = 0x4

.field public static final BCM_WIPER_RAIN_DETECT_NO_COMMAND:I = 0x0

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_1:I = 0x1

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_2:I = 0x2

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_3:I = 0x3

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_4:I = 0x4

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_5:I = 0x5

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_6:I = 0x6

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_7:I = 0x7

.field public static final BCM_WIPER_WASH_OUTPUT_FRONT:I = 0x1

.field public static final BCM_WIPER_WASH_OUTPUT_REAR:I = 0x2

.field public static final BCM_WORK_MODE_ST_ANTI_PLAY_MODE:I = 0x2

.field public static final BCM_WORK_MODE_ST_MANUAL_MODE:I = 0x3

.field public static final BCM_WORK_MODE_ST_NORMAL:I = 0x0

.field public static final BCM_WORK_MODE_ST_OTA_PROBITY_MODE:I = 0x4

.field public static final BCM_WORK_MODE_ST_SYSTEM_ERROR:I = 0x1

.field public static final BCM_WORK_MODE_ST_VEHICLE_SPEED_PROBITY_MODE:I = 0x5

.field public static final BREAK_PEDAL_STATUS_NOT_PRESSED:I = 0x0

.field public static final BREAK_PEDAL_STATUS_PRESSED:I = 0x1

.field public static final CF_DOOR_CLOSE:I = 0x0

.field public static final CF_DOOR_OPEN:I = 0x1

.field public static final CF_ITEM_LEFT:I = 0x1

.field public static final CF_ITEM_LEFT_NONE:I = 0x0

.field public static final CF_MODE_COOL:I = 0x1

.field public static final CF_MODE_FREEZING:I = 0x4

.field public static final CF_MODE_HEART:I = 0x2

.field public static final CF_MODE_PRESERVATION:I = 0x3

.field public static final CHARGER_PORT_L:I = 0x1

.field public static final CHARGER_PORT_R:I = 0x2

.field public static final CHARGE_PORT_LOCKED:I = 0x1

.field public static final CHARGE_PORT_UNLOCKED:I = 0x0

.field public static final CHILDLOCK_ALL_LOCK:I = 0x6

.field public static final CHILDLOCK_ALL_UNLOCK:I = 0x1

.field public static final CHILDLOCK_L_LOCK:I = 0x4

.field public static final CHILDLOCK_L_UNLOCK:I = 0x2

.field public static final CHILDLOCK_RET_ALL_LOCK:I = 0x4

.field public static final CHILDLOCK_RET_ALL_UNLOCK:I = 0x1

.field public static final CHILDLOCK_RET_L_UNLOCK_R_LOCK:I = 0x2

.field public static final CHILDLOCK_RET_R_UNLOCK_L_LOCK:I = 0x3

.field public static final CHILDLOCK_R_LOCK:I = 0x5

.field public static final CHILDLOCK_R_UNLOCK:I = 0x3

.field public static final CHILDLUCK_ALL_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_ALL_UNLOCK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_L_LOCK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_L_UNLOCK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_RET_ALL_LOCK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_RET_ALL_UNLOCK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_RET_L_UNLOCK_R_LOCK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_RET_R_UNLOCK_L_LOCK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_R_LOCK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHILDLUCK_R_UNLOCK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CMS_ANGLE_NO_COMMAND:I = 0x0

.field public static final CMS_ANGLE_STANDARD:I = 0x1

.field public static final CMS_ANGLE_WIDE:I = 0x2

.field public static final CMS_BT_FROM_CDCU:I = 0x2

.field public static final CMS_BT_FROM_CMS:I = 0x1

.field public static final CMS_BT_FROM_NO:I = 0x0

.field public static final CMS_LOG_FINISH_REQ:I = 0x2

.field public static final CMS_LOG_RESP_NOK:I = 0x1

.field public static final CMS_LOG_RESP_OK:I = 0x0

.field public static final CMS_LOG_START_REQ:I = 0x1

.field public static final COLUMN_ADJ_TYPE_NO_REQ:I = 0x0

.field public static final COLUMN_ADJ_TYPE_REQ:I = 0x1

.field public static final COLUMN_ADJ_TYPE_STOP:I = 0x2

.field private static final DBG:Z = false

.field public static final DLP_WELCOME_VIDEO_CFG_TYPE_MODE1:I = 0x2

.field public static final DLP_WELCOME_VIDEO_CFG_TYPE_MODE2:I = 0x3

.field public static final DLP_WELCOME_VIDEO_CFG_TYPE_MODE3:I = 0x4

.field public static final DLP_WELCOME_VIDEO_CFG_TYPE_OFF:I = 0x1

.field public static final DOMELIGHT_DOME:I = 0x1

.field public static final DOMELIGHT_OFF:I = 0x3

.field public static final DOMELIGHT_ON:I = 0x2

.field public static final DOOR_LOCK:I = 0x1

.field public static final DOOR_LOCK_REQUEST_SOURCE_4G:I = 0x5

.field public static final DOOR_LOCK_REQUEST_SOURCE_4G_TMPY:I = 0xe

.field public static final DOOR_LOCK_REQUEST_SOURCE_BLE:I = 0x4

.field public static final DOOR_LOCK_REQUEST_SOURCE_BLE_POLLING:I = 0xb

.field public static final DOOR_LOCK_REQUEST_SOURCE_BLE_TMPY:I = 0xf

.field public static final DOOR_LOCK_REQUEST_SOURCE_BLE_WATCH:I = 0x13

.field public static final DOOR_LOCK_REQUEST_SOURCE_CDUSW:I = 0x7

.field public static final DOOR_LOCK_REQUEST_SOURCE_CENTERSW:I = 0x6

.field public static final DOOR_LOCK_REQUEST_SOURCE_NFC:I = 0x3

.field public static final DOOR_LOCK_REQUEST_SOURCE_OTA:I = 0xc

.field public static final DOOR_LOCK_REQUEST_SOURCE_PHYSICAL:I = 0x8

.field public static final DOOR_LOCK_REQUEST_SOURCE_POLLING:I = 0x2

.field public static final DOOR_LOCK_REQUEST_SOURCE_RKE:I = 0x1

.field public static final DOOR_LOCK_REQUEST_SOURCE_SECOND:I = 0x9

.field public static final DOOR_LOCK_REQUEST_SOURCE_SILENT:I = 0x10

.field public static final DOOR_LOCK_REQUEST_SOURCE_SOA:I = 0x14

.field public static final DOOR_LOCK_REQUEST_SOURCE_SPEED:I = 0xa

.field public static final DOOR_LOCK_REQUEST_SOURCE_UWB_PE:I = 0x11

.field public static final DOOR_LOCK_REQUEST_SOURCE_UWB_POLLING:I = 0x12

.field public static final DOOR_LOCK_REQUEST_SOURCE_XPU:I = 0xd

.field public static final DOOR_UNLOCK:I = 0x0

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_4G:I = 0x5

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_4G_READY:I = 0x17

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_ALM:I = 0xf

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_BLE:I = 0x4

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_BLE_ENABLE:I = 0x13

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_BLE_POLLING:I = 0xd

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_BLE_WATCH:I = 0x16

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_CDUSW:I = 0x7

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_CENTERSW:I = 0x6

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_CRASH:I = 0xa

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_DOOR_OPEN:I = 0x11

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_MECHANICAL_ANTI_MISLOCK:I = 0x10

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_NFC:I = 0x3

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_PARKING:I = 0x9

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_PHYSICAL:I = 0x8

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_POLLING:I = 0x2

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_RKE:I = 0x1

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_SILENT:I = 0x12

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_SOA:I = 0x18

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_THERMAL_RUNWAY:I = 0xe

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_UWB:I = 0x14

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_UWB_POLLING:I = 0x15

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_VCU:I = 0xc

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_XPU:I = 0xb

.field public static final DRIVER_NOT_ON_SEAT:I = 0x0

.field public static final DRIVER_ON_SEAT:I = 0x1

.field public static final ENVIRONMENT_MODE_DAY:I = 0x0

.field public static final ENVIRONMENT_MODE_NIGHT:I = 0x2

.field public static final ENVIRONMENT_MODE_TWILIGHT_DAWN:I = 0x1

.field public static final ESS_ACT_SOURCE_EXTRA_BY_AP:I = 0x9

.field public static final ESS_ACT_SOURCE_EXTRA_BY_SOA:I = 0x3

.field public static final ESS_ACT_SOURCE_EXTRA_WITH_DOOR_OPEN:I = 0x1

.field public static final ESS_ACT_SOURCE_EXTRA_WITH_UNLOCK:I = 0x2

.field public static final ESS_ACT_SOURCE_NO_INPUT:I = 0x0

.field public static final ESS_ACT_SOURCE_RETRAY_BY_AP:I = 0xa

.field public static final ESS_ACT_SOURCE_RETRAY_BY_SOA:I = 0x4

.field public static final ESS_ACT_SOURCE_RETRAY_BY_TIMEOUT:I = 0x7

.field public static final ESS_ACT_SOURCE_RETRAY_BY_VEH_SPEED:I = 0x8

.field public static final ESS_ACT_SOURCE_RETRAY_WITH_DOOR_CLOSE:I = 0x5

.field public static final ESS_ACT_SOURCE_RETRAY_WITH_LOCK:I = 0x6

.field public static final ESS_MOT_INITIALIZED:I = 0x2

.field public static final ESS_MOT_INITIALIZING:I = 0x1

.field public static final ESS_MOT_UNINITIALIZED:I = 0x0

.field public static final ESS_MOVE_CMD_AUTOMOVE:I = 0x3

.field public static final ESS_MOVE_CMD_EXTRACT:I = 0x2

.field public static final ESS_MOVE_CMD_NOCMD:I = 0x0

.field public static final ESS_MOVE_CMD_RETRACT:I = 0x1

.field public static final ESS_MOVE_ST_EXTRACTED:I = 0x4

.field public static final ESS_MOVE_ST_EXTRACTING:I = 0x3

.field public static final ESS_MOVE_ST_INVALID:I = 0x0

.field public static final ESS_MOVE_ST_MIDDLESTOP:I = 0x5

.field public static final ESS_MOVE_ST_RETRACTED:I = 0x2

.field public static final ESS_MOVE_ST_RETRACTING:I = 0x1

.field public static final ESS_WORKMODE_EXTRACT_WITH_DOOR:I = 0x2

.field public static final ESS_WORKMODE_EXTRACT_WITH_DOOR_AND_LOCK:I = 0x3

.field public static final ESS_WORKMODE_NOT_EXTRACT:I = 0x1

.field public static final ESS_WORKMODE_NO_REQ:I = 0x0

.field public static final ETC_ACTIVE:I = 0x1

.field public static final ETC_DISMANTLE_INVALID:I = 0x0

.field public static final ETC_DISMANTLE_LIMIT:I = 0x2

.field public static final ETC_DISMANTLE_VALID:I = 0x1

.field public static final ETC_INACTIVE:I = 0x0

.field public static final ETC_OFF:I = 0x0

.field public static final ETC_ON:I = 0x1

.field public static final ETC_SELFCHECK_DEFAULT:I = 0x0

.field public static final ETC_SELFCHECK_FAILED:I = 0x2

.field public static final ETC_SELFCHECK_SUCCESS:I = 0x1

.field public static final ETC_SELFCHECK_UNFINISHED:I = 0x3

.field public static final ETC_TOLLSTATION_IN:I = 0x1

.field public static final ETC_TOLLSTATION_INIT:I = 0x0

.field public static final ETC_TOLLSTATION_OUT:I = 0x2

.field public static final EXT_MIRROR_FUNC_KNOB_LMIRRADJ:I = 0x1

.field public static final EXT_MIRROR_FUNC_KNOB_MIRROR_FOLD:I = 0x3

.field public static final EXT_MIRROR_FUNC_KNOB_MIRROR_HEAT:I = 0x4

.field public static final EXT_MIRROR_FUNC_KNOB_NEUTRAL:I = 0x0

.field public static final EXT_MIRROR_FUNC_KNOB_RMIRRADJ:I = 0x2

.field public static final FOLLOWMEHOME_TIMECFG15:I = 0x1

.field public static final FOLLOWMEHOME_TIMECFG30:I = 0x2

.field public static final FOLLOWMEHOME_TIMECFG60:I = 0x3

.field public static final FOLLOW_ME_HOME_CONFIGURATION_15S:I = 0x1

.field public static final FOLLOW_ME_HOME_CONFIGURATION_30S:I = 0x2

.field public static final FOLLOW_ME_HOME_CONFIGURATION_60S:I = 0x3

.field public static final FOLLOW_ME_HOME_CONFIGURATION_OFF:I = 0x0

.field public static final FRONT_LEFT_PARKING_LAMP_INDEX:I = 0x0

.field public static final FRONT_LIGHT_ANGLE_MODE_MOVE:I = 0x1

.field public static final FRONT_LIGHT_ANGLE_MODE_STOP:I = 0x0

.field public static final FRONT_MIDDLE_PARKING_LAMP_INDEX:I = 0x1

.field public static final FRONT_RIGHT_PARKING_LAMP_INDEX:I = 0x2

.field public static final GLOVEBOX_THEMO_PROTECT_ST_ACTIVE:I = 0x1

.field public static final GLOVEBOX_THEMO_PROTECT_ST_NOT_ACTIVE:I = 0x0

.field public static final GLOVE_BOX_UNLOCK_EVENT:I = 0x1

.field public static final HEADLAMPS_STATUS_LAMP_AUTO:I = 0x3

.field public static final HEADLAMPS_STATUS_LAMP_FAR:I = 0x4

.field public static final HEADLAMPS_STATUS_LAMP_LOCATION:I = 0x1

.field public static final HEADLAMPS_STATUS_LAMP_NEAR:I = 0x2

.field public static final HEADLAMPS_STATUS_LAMP_OFF:I = 0x0

.field public static final HEATER_ERROR_STATE_HAS_ERROR:I = 0x1

.field public static final HEATER_ERROR_STATE_NO_ERROR:I = 0x0

.field public static final HEIGHT_LVL_CONFIG_0:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEIGHT_LVL_CONFIG_BOOT_LOWRING:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEIGHT_LVL_CONFIG_EASY_ENTRY:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEIGHT_LVL_CONFIG_HL1:I = 0x2

.field public static final HEIGHT_LVL_CONFIG_HL2:I = 0x1

.field public static final HEIGHT_LVL_CONFIG_LL1:I = 0x4

.field public static final HEIGHT_LVL_CONFIG_LL2:I = 0x5

.field public static final HEIGHT_LVL_CONFIG_LL3:I = 0x6

.field public static final HEIGHT_LVL_CONFIG_NL:I = 0x3

.field public static final HEIGHT_LVL_CONFIG_NOT_VALID:I = 0x7

.field public static final HEIGHT_LVL_CONFIG_NO_CMD:I = 0x0

.field public static final HEIGHT_LVL_CONFIG_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEIGHT_LVL_CONFIG_RES:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HIGH_SPEED_WINDOWS_AUTO_UP:I = 0x2

.field public static final ID_ALS_INIT_STUDY_AND_ERROR_ST:I = 0x2141180d

.field public static final ID_ALS_INIT_STUDY_ST:I = 0x21401899

.field public static final ID_ARS_ANTI_PINCH_ST:I = 0x21404408

.field public static final ID_ARS_AUTOFOLD:I = 0x21404407

.field public static final ID_ARS_CTRL:I = 0x21404405

.field public static final ID_ARS_FAULT_ST:I = 0x21404406

.field public static final ID_ARS_INIT_ST:I = 0x21404404

.field public static final ID_ARS_MODE:I = 0x21404401

.field public static final ID_ARS_POSITION:I = 0x21404403

.field public static final ID_ARS_STALL_ST:I = 0x21404409

.field public static final ID_ARS_STATE:I = 0x21404402

.field public static final ID_AS_FAULT_WARNING:I = 0x2140401c

.field public static final ID_BCM_AC_CHILD_LOCK:I = 0x21405421

.field public static final ID_BCM_ADAS_LIGHT_OUTPUT_ST:I = 0x21405402

.field public static final ID_BCM_AGS_VEHICLE_MODE_OPEN_REQ:I = 0x2140401f

.field public static final ID_BCM_ALL_HANDLE_POS:I = 0x21411dff

.field public static final ID_BCM_ALL_HANDLE_SWITCH:I = 0x21401dfe

.field public static final ID_BCM_ALL_MIRRORS_CTRL:I = 0x21701c7b

.field public static final ID_BCM_ALL_MIRRORS_CTRL_FLOAT:I = 0x21615407

.field public static final ID_BCM_AS_ACCEL_METER_ALL:I = 0x21614016

.field public static final ID_BCM_AS_ACTUAL_HEIGHT_LVL:I = 0x2140401b

.field public static final ID_BCM_AS_AUTOLEVEL_RESULT:I = 0x21404019

.field public static final ID_BCM_AS_AUTO_LEVELING_ST:I = 0x21404007

.field public static final ID_BCM_AS_CAMPING_MODE_SW:I = 0x21404003

.field public static final ID_BCM_AS_CUSTOMERMODE_SW:I = 0x21404002

.field public static final ID_BCM_AS_DRIVE_MODE:I = 0x21404009

.field public static final ID_BCM_AS_ESP_PATA_REQ:I = 0x2140400d

.field public static final ID_BCM_AS_HOIST_MODE:I = 0x21404004

.field public static final ID_BCM_AS_LEOPARD_MOD_SW:I = 0x21404017
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_AS_LOCK_MODE_ST:I = 0x21404008

.field public static final ID_BCM_AS_LVL_CHG:I = 0x21404012

.field public static final ID_BCM_AS_MODALLWD_CAMPING:I = 0x21404013

.field public static final ID_BCM_AS_RED_LAMP_REQ:I = 0x21404005

.field public static final ID_BCM_AS_SPEC_DRIVE_MODE:I = 0x2140400a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_AS_SYS_ST1:I = 0x21414014

.field public static final ID_BCM_AS_TARGET_HEIGHT_LVL:I = 0x2140401a

.field public static final ID_BCM_AS_TAR_LVL:I = 0x2140400e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_AS_TRAILER_MODE_SW:I = 0x2140400f

.field public static final ID_BCM_AS_VEHICLE_MODE:I = 0x21404018
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_AS_WELCOME_ST:I = 0x2140400b

.field public static final ID_BCM_AS_WELCOME_SW:I = 0x21401ce5

.field public static final ID_BCM_AS_WHEEL_POS_FILT_MM_ALL:I = 0x21414015

.field public static final ID_BCM_AS_YELLOW_LAMP_REQ:I = 0x21404006

.field public static final ID_BCM_ATWS:I = 0x21401c2f

.field public static final ID_BCM_AUTO_LIGHT:I = 0x21401c22

.field public static final ID_BCM_AUTO_POWER_OFF_DISABLE_REQ:I = 0x21401df3

.field public static final ID_BCM_BACK_MIRROR_HEAT:I = 0x21401c41

.field public static final ID_BCM_BLE_NFC_TCH_STATE:I = 0x21405420

.field public static final ID_BCM_BONNET:I = 0x21401c29

.field public static final ID_BCM_BRKPEDAL_ST:I = 0x21401cbb

.field public static final ID_BCM_CAMPING_MODE:I = 0x214054c6

.field public static final ID_BCM_CAP_ST:I = 0x21401d54

.field public static final ID_BCM_CARPETLIGHT_WELCOM:I = 0x21401d87

.field public static final ID_BCM_CDU_SEATBELT_REQ:I = 0x21401ca3

.field public static final ID_BCM_CHAIR_WELCOME_MODE_ON:I = 0x21401c01

.field public static final ID_BCM_CHARGE_LIGHT_OUTPUT_ST:I = 0x21405401

.field public static final ID_BCM_CHARG_GUNL_ST:I = 0x21401c4d

.field public static final ID_BCM_CHASSIS_GND_CLEARANCE:I = 0x214154ca

.field public static final ID_BCM_CHILDLOCK_SOA_CONNECTED:I = 0x214092fe

.field public static final ID_BCM_CHILDLOCK_SW:I = 0x21401c4b

.field public static final ID_BCM_COLUMN_HORIZONAL_CMD:I = 0x21411d2b

.field public static final ID_BCM_COLUMN_HORIZONAL_POS:I = 0x21401d2d

.field public static final ID_BCM_COLUMN_POS_CMD:I = 0x21411d30

.field public static final ID_BCM_COLUMN_POS_SAVE:I = 0x21411d47

.field public static final ID_BCM_COLUMN_TRAVEL_ADJ_ENABLE_ST:I = 0x21401df9

.field public static final ID_BCM_COLUMN_TRAVEL_ADJ_REQ:I = 0x21401df8

.field public static final ID_BCM_COLUMN_VERTICAL_CMD:I = 0x21411d2a

.field public static final ID_BCM_COLUMN_VERTICAL_POS:I = 0x21401d2c

.field public static final ID_BCM_COMFORTWND_CMD:I = 0x21401c38

.field public static final ID_BCM_CWCCHRG_ABNORMAL_WARNING:I = 0x21401c72

.field public static final ID_BCM_CWCCHRG_ST:I = 0x21401c71

.field public static final ID_BCM_CWC_SW:I = 0x21401cc5

.field public static final ID_BCM_DEMOLIGHT_SW:I = 0x21401c36

.field public static final ID_BCM_DLP_WELCOME_CFG:I = 0x214054b0

.field public static final ID_BCM_DOMELIGHT_BRIGHT:I = 0x21401d07

.field public static final ID_BCM_DOMELIGHT_MODE:I = 0x21401d06

.field public static final ID_BCM_DOORLOCK_SOA_CONNECTED:I = 0x2140927f

.field public static final ID_BCM_DOOR_CENTRAL_CDCU_SW_LOCK:I = 0x21401df6

.field public static final ID_BCM_DOOR_CENTRAL_CDCU_SW_UNLOCK:I = 0x21401df7

.field public static final ID_BCM_DOOR_CENTRAL_LOCK_MODE:I = 0x21401c09

.field public static final ID_BCM_DOOR_LOCK_EVENT:I = 0x21401de2

.field public static final ID_BCM_DOOR_LOCK_PRESS_TIME_CFG:I = 0x214054b7

.field public static final ID_BCM_DOOR_LOCK_REQRES:I = 0x21401dfd

.field public static final ID_BCM_DOOR_STATE:I = 0x21411c19

.field public static final ID_BCM_DOOR_UNLOCK_REQRES:I = 0x21401c9f

.field public static final ID_BCM_DRIVERSEAT_OCCUPIED:I = 0x21401c07

.field public static final ID_BCM_DRIVER_INNER_PULL_DOORNOBS_ST:I = 0x21401de7

.field public static final ID_BCM_DRIVER_OUTER_PULL_DOORNOBS_ST:I = 0x21401de3

.field public static final ID_BCM_DRIVER_SBLT_WARNING:I = 0x21401c30

.field public static final ID_BCM_DRIVE_AUTO_LOCK:I = 0x21401c1c

.field public static final ID_BCM_DRL_CFG:I = 0x21401c33

.field public static final ID_BCM_EASY_LOADING:I = 0x2140400c

.field public static final ID_BCM_ELECTRIC_SEAT_BELT:I = 0x21401c23

.field public static final ID_BCM_EMERGENCY_BRAKE_WARNING:I = 0x21401c1f

.field public static final ID_BCM_ENGINEERINGMODE:I = 0x21401d27

.field public static final ID_BCM_ENVR_MODE:I = 0x21401cc2

.field public static final ID_BCM_ESS_WORK_MODE:I = 0x2140545d

.field public static final ID_BCM_EXT_MIRROR_FUNC_KNOB_ST:I = 0x2140544b

.field public static final ID_BCM_EXT_VOICE_PELOCK_CMD:I = 0x214054b8

.field public static final ID_BCM_FKS_CFG:I = 0x21401d0d

.field public static final ID_BCM_FLDM_WIN_PST:I = 0x21601c67

.field public static final ID_BCM_FLDOMELIGHT_SW:I = 0x21401d08

.field public static final ID_BCM_FLR_PARKINGLIGHT1_ST:I = 0x21411ddb

.field public static final ID_BCM_FLR_PARKINGLIGHT2_ST:I = 0x21411ddc

.field public static final ID_BCM_FLSWST:I = 0x21401c47

.field public static final ID_BCM_FLWIN_SWST:I = 0x21401c14

.field public static final ID_BCM_FL_SEAT_CLIMATE_SOA_CONNECTED:I = 0x21409283

.field public static final ID_BCM_FOLLOW_ME_HOME_TIME:I = 0x21401c32

.field public static final ID_BCM_FOLLOW_ME_HOME_TIME_ST:I = 0x21401cc4

.field public static final ID_BCM_FORCE_POWEROFF_ENABLE_ST:I = 0x2140540c

.field public static final ID_BCM_FORCE_POWEROFF_REQ:I = 0x2140540b

.field public static final ID_BCM_FRDM_WIN_PST:I = 0x21601c68

.field public static final ID_BCM_FRDOMELIGHT_SW:I = 0x21401d09

.field public static final ID_BCM_FRONTLOGO_LIGHT_STATUS:I = 0x214054c5

.field public static final ID_BCM_FRONT_LIGHT_ANGLE:I = 0x21405419

.field public static final ID_BCM_FRONT_LIGHT_ANGLE_MODE:I = 0x2140541a

.field public static final ID_BCM_FRONT_LIGHT_ANGLE_RIGHT:I = 0x21405437

.field public static final ID_BCM_FRONT_LIGHT_GROUP_MODE:I = 0x21401c28

.field public static final ID_BCM_FRONT_MIRRORHEAT:I = 0x21401cf6

.field public static final ID_BCM_FRONT_SC_ANTI_PINCH_STATUS:I = 0x214054b3

.field public static final ID_BCM_FRONT_SC_COMFORT_CMD:I = 0x214054a6

.field public static final ID_BCM_FRONT_SC_INITIALIZED:I = 0x214054a9

.field public static final ID_BCM_FRONT_SC_MOTOR_STATUS:I = 0x214054a8

.field public static final ID_BCM_FRONT_SC_POS:I = 0x214054a7

.field public static final ID_BCM_FRONT_SC_THERMAL_PROTECT_ST:I = 0x214054b2

.field public static final ID_BCM_FRSWST:I = 0x21401c48

.field public static final ID_BCM_FRWIN_SWST:I = 0x21401c78

.field public static final ID_BCM_FR_CWCCHRG_ABNORMAL_WARNING:I = 0x21401d86

.field public static final ID_BCM_FR_CWCCHRG_ST:I = 0x21401d85

.field public static final ID_BCM_FR_CWC_SW:I = 0x21401d84

.field public static final ID_BCM_FR_SEAT_CLIMATE_SOA_CONNECTED:I = 0x21409284

.field public static final ID_BCM_FUEL_PORT_ST:I = 0x2140543d

.field public static final ID_BCM_FWIPER_ACTIVE_ST:I = 0x21401d73

.field public static final ID_BCM_FWIPER_AUTO_SW:I = 0x21405448

.field public static final ID_BCM_FWIPER_MOTOR_ERR:I = 0x21401d52

.field public static final ID_BCM_GLOVEBOX_THEMO_PROTECT_ST:I = 0x2140541b

.field public static final ID_BCM_GLOVEBOX_UNLOCK:I = 0x2140540d

.field public static final ID_BCM_GROUP_COLOR:I = 0x21411d56

.field public static final ID_BCM_GROUP_FADETIME:I = 0x21411d57

.field public static final ID_BCM_GROUP_LUX:I = 0x21411d59

.field public static final ID_BCM_GROUP_TEMP:I = 0x21411d58

.field public static final ID_BCM_GROUP_WIPERSPDSW_ST:I = 0x21411cce

.field public static final ID_BCM_HANDLE_AUTO:I = 0x21401ce6

.field public static final ID_BCM_HAZARD_LIGHT:I = 0x21401c35

.field public static final ID_BCM_HEAD_BEAM:I = 0x11400e01

.field public static final ID_BCM_HEAD_LAMP_LVL_MODE:I = 0x21401cfc

.field public static final ID_BCM_HEAD_LAMP_LVL_REQ:I = 0x21401cfb

.field public static final ID_BCM_HEAD_LAMP_LVL_ST:I = 0x21401d10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_HEIGHT_LVL:I = 0x21404010
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_HIGHBEAM_SW:I = 0x21401c06
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BCM_INTERNAL_LIGHT_ON:I = 0x21401c70

.field public static final ID_BCM_KEY_AUTH_ST:I = 0x21401038
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BCM_KEY_PELOCKVALUE:I = 0x214054b9

.field public static final ID_BCM_LCHILDLOCK:I = 0x21401d02

.field public static final ID_BCM_LED_GROUP_CTRL:I = 0x21411d55

.field public static final ID_BCM_LESS_ACT_SOURCE:I = 0x21405459

.field public static final ID_BCM_LESS_AP_ST:I = 0x2140545e

.field public static final ID_BCM_LESS_MOT_INIT_ST:I = 0x2140545b

.field public static final ID_BCM_LESS_MOVE_ST:I = 0x21405457

.field public static final ID_BCM_LIGHT_ME_HOME:I = 0x21401c1b

.field public static final ID_BCM_LIGHT_MODE_TYPE_CTRL:I = 0x21405429

.field public static final ID_BCM_LIGHT_SABER_REQ:I = 0x21401cdc

.field public static final ID_BCM_LMIRROR_CTRL:I = 0x21411c3a

.field public static final ID_BCM_LMIRROR_POS_STATUS:I = 0x21401dfb

.field public static final ID_BCM_LOCKWIN_CFG:I = 0x21401c73

.field public static final ID_BCM_LOCK_AVAS:I = 0x21401d14

.field public static final ID_BCM_LOCK_HAZARD_LIGHT:I = 0x21401d12

.field public static final ID_BCM_LOCK_HORN:I = 0x21401d13

.field public static final ID_BCM_LOCK_PREARMED:I = 0x21401de0

.field public static final ID_BCM_LOW_BEAM:I = 0x21401c21

.field public static final ID_BCM_LOW_BEAM_OFF_CONFIRM:I = 0x21401d83

.field public static final ID_BCM_LRMIRROR_OUTPUT_ST:I = 0x21411cff

.field public static final ID_BCM_LRTURNLAMP_ACTIVE_ST:I = 0x21411cc0

.field public static final ID_BCM_LRTURNLAMP_ST:I = 0x21411c9c

.field public static final ID_BCM_LR_DRL_OUTPUT_ST:I = 0x21411cc1

.field public static final ID_BCM_LSLIDEDOOR_CTRL:I = 0x21401d7c

.field public static final ID_BCM_LSLIDEDOOR_LOCK:I = 0x21401d7d

.field public static final ID_BCM_LSLIDEDOOR_MOODE:I = 0x21401d7b

.field public static final ID_BCM_LTURNLAMP_ST:I = 0x21401c17

.field public static final ID_BCM_LTURN_LAMP_SW_ST:I = 0x21401dee

.field public static final ID_BCM_L_CHARGER_PORT:I = 0x21401c2a

.field public static final ID_BCM_L_CHARGER_PORT_LOCK_ST:I = 0x21401c97

.field public static final ID_BCM_MAINTAINMODE:I = 0x21401cde

.field public static final ID_BCM_MIRRORHEAT_FB:I = 0x21411cf0

.field public static final ID_BCM_MIRROR_AUTOFOLD_SW:I = 0x21401d5c

.field public static final ID_BCM_NFC_CARD_AUTH_ST:I = 0x21401cbe

.field public static final ID_BCM_NFC_CARD_ID_INFO:I = 0x21701ca4

.field public static final ID_BCM_PACKING_LAMP_OUTPUT:I = 0x21411c9e

.field public static final ID_BCM_PARKING_AUTO_UNLOCK:I = 0x21401c1d

.field public static final ID_BCM_PARKING_LAMP:I = 0x21401c1a

.field public static final ID_BCM_PARKLIGHT_FMB_CFG:I = 0x21401c9d

.field public static final ID_BCM_POLLING_LOCK_CFG:I = 0x21401c74

.field public static final ID_BCM_POLLING_LOCK_DISABLE_REQ:I = 0x21401df4

.field public static final ID_BCM_POLLING_OPEN_CFG:I = 0x21401c2e

.field public static final ID_BCM_POLLING_UNLOCK_CFG:I = 0x21401c75

.field public static final ID_BCM_POLLING_UNLOCK_DISABLE_REQ:I = 0x21401df2

.field public static final ID_BCM_POLLING_WELCOME:I = 0x21401d88

.field public static final ID_BCM_POWERMODE:I = 0x21401c64

.field public static final ID_BCM_POWEROFF_SOURCE:I = 0x21401dc9

.field public static final ID_BCM_POWER_DOOR_ALL_MOVE:I = 0x21405464

.field public static final ID_BCM_POWER_DOOR_AUTO_CLOSE_CAUTION:I = 0x21405491

.field public static final ID_BCM_POWER_DOOR_AUTO_OPEN_CFG:I = 0x2140546b

.field public static final ID_BCM_POWER_DOOR_BRAKE_CLOSE_CFG:I = 0x2140546a

.field public static final ID_BCM_POWER_DOOR_FL_ANTIPLAY_STS:I = 0x2140546d

.field public static final ID_BCM_POWER_DOOR_FL_ANTI_COLLISION_STS:I = 0x21405475

.field public static final ID_BCM_POWER_DOOR_FL_ERROR_STS:I = 0x2140547d

.field public static final ID_BCM_POWER_DOOR_FL_HOVER_TIMEOUT_REMIND:I = 0x21405465

.field public static final ID_BCM_POWER_DOOR_FL_INIT_STS:I = 0x21405485

.field public static final ID_BCM_POWER_DOOR_FL_MOVE:I = 0x21405460

.field public static final ID_BCM_POWER_DOOR_FL_OBSTACLE_STS:I = 0x21405479

.field public static final ID_BCM_POWER_DOOR_FL_PINCH_STS:I = 0x21405471

.field public static final ID_BCM_POWER_DOOR_FL_RADAR_ERR:I = 0x2140548d

.field public static final ID_BCM_POWER_DOOR_FL_RAMP_STEEP:I = 0x21405481

.field public static final ID_BCM_POWER_DOOR_FL_RUNNING_STS:I = 0x21405489

.field public static final ID_BCM_POWER_DOOR_FR_ANTIPLAY_STS:I = 0x2140546f

.field public static final ID_BCM_POWER_DOOR_FR_ANTI_COLLISION_STS:I = 0x21405477

.field public static final ID_BCM_POWER_DOOR_FR_ERROR_STS:I = 0x2140547f

.field public static final ID_BCM_POWER_DOOR_FR_HOVER_TIMEOUT_REMIND:I = 0x21405467

.field public static final ID_BCM_POWER_DOOR_FR_INIT_STS:I = 0x21405487

.field public static final ID_BCM_POWER_DOOR_FR_MOVE:I = 0x21405462

.field public static final ID_BCM_POWER_DOOR_FR_OBSTACLE_STS:I = 0x2140547b

.field public static final ID_BCM_POWER_DOOR_FR_PINCH_STS:I = 0x21405473

.field public static final ID_BCM_POWER_DOOR_FR_RADAR_ERR:I = 0x2140548f

.field public static final ID_BCM_POWER_DOOR_FR_RAMP_STEEP:I = 0x21405483

.field public static final ID_BCM_POWER_DOOR_FR_RUNNING_STS:I = 0x2140548b

.field public static final ID_BCM_POWER_DOOR_KEY_OPEN_CFG:I = 0x2140546c

.field public static final ID_BCM_POWER_DOOR_OPEN_PERCENT_CFG:I = 0x21405469

.field public static final ID_BCM_POWER_DOOR_RL_ANTIPLAY_STS:I = 0x2140546e

.field public static final ID_BCM_POWER_DOOR_RL_ANTI_COLLISION_STS:I = 0x21405476

.field public static final ID_BCM_POWER_DOOR_RL_ERROR_STS:I = 0x2140547e

.field public static final ID_BCM_POWER_DOOR_RL_HOVER_TIMEOUT_REMIND:I = 0x21405466

.field public static final ID_BCM_POWER_DOOR_RL_INIT_STS:I = 0x21405486

.field public static final ID_BCM_POWER_DOOR_RL_MOVE:I = 0x21405461

.field public static final ID_BCM_POWER_DOOR_RL_OBSTACLE_STS:I = 0x2140547a

.field public static final ID_BCM_POWER_DOOR_RL_PINCH_STS:I = 0x21405472

.field public static final ID_BCM_POWER_DOOR_RL_RADAR_ERR:I = 0x2140548e

.field public static final ID_BCM_POWER_DOOR_RL_RAMP_STEEP:I = 0x21405482

.field public static final ID_BCM_POWER_DOOR_RL_RUNNING_STS:I = 0x2140548a

.field public static final ID_BCM_POWER_DOOR_RR_ANTIPLAY_STS:I = 0x21405470

.field public static final ID_BCM_POWER_DOOR_RR_ANTI_COLLISION_STS:I = 0x21405478

.field public static final ID_BCM_POWER_DOOR_RR_ERROR_STS:I = 0x21405480

.field public static final ID_BCM_POWER_DOOR_RR_HOVER_TIMEOUT_REMIND:I = 0x21405468

.field public static final ID_BCM_POWER_DOOR_RR_INIT_STS:I = 0x21405488

.field public static final ID_BCM_POWER_DOOR_RR_MOVE:I = 0x21405463

.field public static final ID_BCM_POWER_DOOR_RR_OBSTACLE_STS:I = 0x2140547c

.field public static final ID_BCM_POWER_DOOR_RR_PINCH_STS:I = 0x21405474

.field public static final ID_BCM_POWER_DOOR_RR_RADAR_ERR:I = 0x21405490

.field public static final ID_BCM_POWER_DOOR_RR_RAMP_STEEP:I = 0x21405484

.field public static final ID_BCM_POWER_DOOR_RR_RUNNING_STS:I = 0x2140548c

.field public static final ID_BCM_PSNG_INNER_PULL_DOORNOBS_ST:I = 0x21401de8

.field public static final ID_BCM_PSNG_OUTER_PULL_DOORNOBS_ST:I = 0x21401de4

.field public static final ID_BCM_PSNG_SBSBR_WARNING:I = 0x21411ca8

.field public static final ID_BCM_PSN_SEAT_HEAT_LEVEL:I = 0x21401c65

.field public static final ID_BCM_PSN_SEAT_VENT_LEVEL:I = 0x15400514

.field public static final ID_BCM_RAIN_DETEC_SENCFG:I = 0x21401c9a

.field public static final ID_BCM_RAIN_DETEC_SEN_DOWN:I = 0x21401d4b

.field public static final ID_BCM_RAIN_DETEC_SEN_UP:I = 0x21401d4a

.field public static final ID_BCM_RAIN_SEN_AND_INACTIVE:I = 0x21401dca

.field public static final ID_BCM_RAUTODOWN_CFG:I = 0x21401c4c

.field public static final ID_BCM_RCHILDLOCK:I = 0x21401d03

.field public static final ID_BCM_RDM_DOOR_HEIGHT:I = 0x21401cc3

.field public static final ID_BCM_READY_ENABLE:I = 0x21401cba

.field public static final ID_BCM_REARLOGOLIGHT_SW:I = 0x21401d81

.field public static final ID_BCM_REARLOG_LIGHT_ST:I = 0x21401de1

.field public static final ID_BCM_REAR_DEFROST_ON:I = 0x21401c25

.field public static final ID_BCM_REAR_FOG_LAMP_ON:I = 0x21401c02

.field public static final ID_BCM_REAR_MIRROR_EXPAND_TIMING:I = 0x214054c9

.field public static final ID_BCM_REAR_SEAT_BELT_WARNING_ON:I = 0x21401c24

.field public static final ID_BCM_REAR_VIEW_MIRROR:I = 0x21401c27

.field public static final ID_BCM_REAR_VIEW_MIRROW:I = 0x21401c27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_REFUEL_THE_VEHICLE_REQ:I = 0x2140541d

.field public static final ID_BCM_REFUEL_THE_VEHICLE_RMN:I = 0x2140541f

.field public static final ID_BCM_REFUEL_THE_VEHICLE_ST:I = 0x2140541e

.field public static final ID_BCM_REMOTECTRL_CFG:I = 0x21401c39

.field public static final ID_BCM_RESS_ACT_SOURCE:I = 0x2140545a

.field public static final ID_BCM_RESS_AP_ST:I = 0x2140545f

.field public static final ID_BCM_RESS_MOT_INIT_ST:I = 0x2140545c

.field public static final ID_BCM_RESS_MOVE_ST:I = 0x21405458

.field public static final ID_BCM_REVERSECAR_MIRROR_CFG:I = 0x21401c40

.field public static final ID_BCM_RLAERO_DOMELIGHT_BRIGHT:I = 0x214054bd

.field public static final ID_BCM_RLAERO_DOMELIGHT_COLOR:I = 0x214054bf

.field public static final ID_BCM_RLAERO_DOMELIGHT_SW:I = 0x214054bb

.field public static final ID_BCM_RLDM_WIN_PST:I = 0x21601c66

.field public static final ID_BCM_RLDOMELIGHT_SW:I = 0x21401d0a

.field public static final ID_BCM_RLSWST:I = 0x21401c49

.field public static final ID_BCM_RLS_BRIGHTNESS:I = 0x21405415

.field public static final ID_BCM_RLS_REQUEST_WIPER_SPD:I = 0x2140541c

.field public static final ID_BCM_RLWIN_SWST:I = 0x21401c15

.field public static final ID_BCM_RL_CWCCHRG_ABNORMAL_WARNING:I = 0x21401dc3

.field public static final ID_BCM_RL_CWCCHRG_ST:I = 0x21401dc2

.field public static final ID_BCM_RL_CWC_SW:I = 0x21401dc1

.field public static final ID_BCM_RL_INNER_PULL_DOORNOBS_ST:I = 0x21401de9

.field public static final ID_BCM_RL_OUTER_PULL_DOORNOBS_ST:I = 0x21401de5

.field public static final ID_BCM_RL_SEAT_HEAT:I = 0x21401caa

.field public static final ID_BCM_RL_SEAT_HEAT_ERR:I = 0x21401cab

.field public static final ID_BCM_RMAALL_POS_SAVE_FLOAT:I = 0x21615418

.field public static final ID_BCM_RMAALL_STATE:I = 0x21411cd1

.field public static final ID_BCM_RMALLR_LOCATION:I = 0x21401c3c

.field public static final ID_BCM_RMALLR_LOCATION_FLOAT:I = 0x21605403

.field public static final ID_BCM_RMALUD_LOCATION:I = 0x21401c3e

.field public static final ID_BCM_RMALUD_LOCATION_FLOAT:I = 0x21605405

.field public static final ID_BCM_RMARLR_LOCATION:I = 0x21401c3d

.field public static final ID_BCM_RMARLR_LOCATION_FLOAT:I = 0x21605404

.field public static final ID_BCM_RMARUD_LOCATION:I = 0x21401c3f

.field public static final ID_BCM_RMARUD_LOCATION_FLOAT:I = 0x21605406

.field public static final ID_BCM_RMIRROR_CTRL:I = 0x21411c3b

.field public static final ID_BCM_RMIRROR_POS_STATUS:I = 0x21401dfa

.field public static final ID_BCM_ROSE_WIN_CMD_MODE:I = 0x21411cbf

.field public static final ID_BCM_RRAERO_DOMELIGHT_BRIGHT:I = 0x214054be

.field public static final ID_BCM_RRAERO_DOMELIGHT_COLOR:I = 0x214054c0

.field public static final ID_BCM_RRAERO_DOMELIGHT_SW:I = 0x214054bc

.field public static final ID_BCM_RRDM_WIN_PST:I = 0x21601c69

.field public static final ID_BCM_RRDOMELIGHT_SW:I = 0x21401d05

.field public static final ID_BCM_RRSWST:I = 0x21401c4a

.field public static final ID_BCM_RRWIN_SWST:I = 0x21401c16

.field public static final ID_BCM_RR_CWCCHRG_ABNORMAL_WARNING:I = 0x21401dc6

.field public static final ID_BCM_RR_CWCCHRG_ST:I = 0x21401dc5

.field public static final ID_BCM_RR_CWC_SW:I = 0x21401dc4

.field public static final ID_BCM_RR_INNER_PULL_DOORNOBS_ST:I = 0x21401dea

.field public static final ID_BCM_RR_OUTER_PULL_DOORNOBS_ST:I = 0x21401de6

.field public static final ID_BCM_RR_SEAT_HEAT:I = 0x21401ca9

.field public static final ID_BCM_RR_SEAT_HEAT_ERR:I = 0x21401cac

.field public static final ID_BCM_RSLIDEDOOR_CTRL:I = 0x21401d7f

.field public static final ID_BCM_RSLIDEDOOR_LOCK:I = 0x21401d80

.field public static final ID_BCM_RSLIDEDOOR_MOODE:I = 0x21401d7e

.field public static final ID_BCM_RTAILGATE_SOA_CONNECTED:I = 0x21409285

.field public static final ID_BCM_RTURNLAMP_ST:I = 0x21401c18

.field public static final ID_BCM_RTURN_LAMP_SW_ST:I = 0x21401def

.field public static final ID_BCM_RWIPERSERVICE_SW:I = 0x21401d04

.field public static final ID_BCM_R_CHARGER_PORT:I = 0x21401c2b

.field public static final ID_BCM_R_CHARGER_PORT_LOCK_ST:I = 0x21401c98

.field public static final ID_BCM_SCISSORS_GATE_DRIVER_BTN_ST:I = 0x21401deb

.field public static final ID_BCM_SCISSORS_GATE_DRIVER_INNER_PULL_ST:I = 0x21401dec

.field public static final ID_BCM_SC_ANTI_PINCH_STATUS:I = 0x21401ce2

.field public static final ID_BCM_SC_COMFORT_CMD:I = 0x21401ccb

.field public static final ID_BCM_SC_ECU_STATUS:I = 0x21401ce0

.field public static final ID_BCM_SC_ICE_BREAKMODE:I = 0x21401ce3

.field public static final ID_BCM_SC_INITIALIZED:I = 0x21401ccd

.field public static final ID_BCM_SC_LIN_STATUS:I = 0x21401ce4

.field public static final ID_BCM_SC_MOTOR_STATUS:I = 0x21401cd7

.field public static final ID_BCM_SC_POS:I = 0x21401ccc

.field public static final ID_BCM_SC_SWITCH_STATUS:I = 0x21401cdf

.field public static final ID_BCM_SC_THERMAL_PROTECT_ST:I = 0x21401ce1

.field public static final ID_BCM_SDCL_DENORMALIZE_ST:I = 0x21401cb4

.field public static final ID_BCM_SDCL_DETECTION_RESULT:I = 0x21405411

.field public static final ID_BCM_SDCL_DOORPOS:I = 0x21401cbc

.field public static final ID_BCM_SDCL_HAZZARD_REQ:I = 0x21401cb0

.field public static final ID_BCM_SDCL_MOVECMD:I = 0x21401cc6

.field public static final ID_BCM_SDCL_OBSTACLE_ST:I = 0x2140540f

.field public static final ID_BCM_SDCL_PLAY_MODE_ST:I = 0x214054a4

.field public static final ID_BCM_SDCL_PSDMOTO_ST:I = 0x21401ca0

.field public static final ID_BCM_SDCL_RADAR_ST:I = 0x21405413

.field public static final ID_BCM_SDCL_SW_CONTROL:I = 0x21405416

.field public static final ID_BCM_SDCL_SYSTEM_ERROR:I = 0x21401cb2

.field public static final ID_BCM_SDCL_SYS_RUNING_ST:I = 0x21401ccf

.field public static final ID_BCM_SDCR_DENORMALIZE_ST:I = 0x21401cb5

.field public static final ID_BCM_SDCR_DETECTION_RESULT:I = 0x21405412

.field public static final ID_BCM_SDCR_DOORPOS:I = 0x21401cbd

.field public static final ID_BCM_SDCR_HAZZARD_REQ:I = 0x21401cb1

.field public static final ID_BCM_SDCR_MOVECMD:I = 0x21401cc7

.field public static final ID_BCM_SDCR_OBSTACLE_ST:I = 0x21405410

.field public static final ID_BCM_SDCR_PLAY_MODE_ST:I = 0x214054a5

.field public static final ID_BCM_SDCR_PSDMOTO_ST:I = 0x21401ca1

.field public static final ID_BCM_SDCR_RADAR_ST:I = 0x21405414

.field public static final ID_BCM_SDCR_SW_CONTROL:I = 0x21405417

.field public static final ID_BCM_SDCR_SYSTEM_ERROR:I = 0x21401cb3

.field public static final ID_BCM_SDCR_SYS_RUNING_ST:I = 0x21401cd0

.field public static final ID_BCM_SDC_BRAKE_CLOSE_DOOR:I = 0x21401d53

.field public static final ID_BCM_SDC_KEY_CLOSE_MODE_CTRL:I = 0x21401cae

.field public static final ID_BCM_SDC_KEY_OPEN_MODE_CTRL:I = 0x21401cad

.field public static final ID_BCM_SDC_OPEN_HALL_CFG:I = 0x21401caf

.field public static final ID_BCM_SDC_WINS_AUTODOWN:I = 0x2140540e

.field public static final ID_BCM_SDC_WINS_AUTODOWN_L:I = 0x21401cb8

.field public static final ID_BCM_SDC_WINS_AUTODOWN_R:I = 0x21401cb9

.field public static final ID_BCM_SEAT_ERR:I = 0x21411c4e

.field public static final ID_BCM_SEAT_HEAT_ERR:I = 0x21401ca6

.field public static final ID_BCM_SEAT_HEAT_LEVEL:I = 0x21401c26

.field public static final ID_BCM_SEAT_VENT_LEVEL:I = 0x15400513

.field public static final ID_BCM_SEAT_WELCOME_RECOVER_ACTIVE:I = 0x21401ded

.field public static final ID_BCM_SECROW_LTSEAT_VENT_LEVEL:I = 0x21401da7

.field public static final ID_BCM_SECROW_RTSEAT_VENT_LEVEL:I = 0x21401da8

.field public static final ID_BCM_SHC_REQ:I = 0x21401c42

.field public static final ID_BCM_SMART_LIGHT_ACC:I = 0x2140aa11

.field public static final ID_BCM_SMART_LIGHT_AUTO_PARK:I = 0x2140aa12

.field public static final ID_BCM_SMART_LIGHT_BREAK_WARNING:I = 0x2140aa0d

.field public static final ID_BCM_SMART_LIGHT_BRIGHTNESS:I = 0x2140aa0f

.field public static final ID_BCM_SMART_LIGHT_CHARGING:I = 0x2140aa0c

.field public static final ID_BCM_SMART_LIGHT_DISPLAY_SWITCH:I = 0x2140aa01

.field public static final ID_BCM_SMART_LIGHT_ENGINE_OFF:I = 0x2140aa07

.field public static final ID_BCM_SMART_LIGHT_ENGINE_ON:I = 0x2140aa05

.field public static final ID_BCM_SMART_LIGHT_EXTREME_COOLING:I = 0x2140aa14

.field public static final ID_BCM_SMART_LIGHT_EXTREME_HEATING:I = 0x2140aa13

.field public static final ID_BCM_SMART_LIGHT_GEAR_WARNING:I = 0x2140aa06

.field public static final ID_BCM_SMART_LIGHT_HAND_DETECTION:I = 0x2140aa10

.field public static final ID_BCM_SMART_LIGHT_INCOMMING_CALL:I = 0x2140aa0b

.field public static final ID_BCM_SMART_LIGHT_LANE_CHANGE:I = 0x2140aa09

.field public static final ID_BCM_SMART_LIGHT_NAVIGATION_TURN:I = 0x2140aa08

.field public static final ID_BCM_SMART_LIGHT_OVER_SPEED:I = 0x2140aa15

.field public static final ID_BCM_SMART_LIGHT_PARKING:I = 0x2140aa17

.field public static final ID_BCM_SMART_LIGHT_SAFE_LOCK:I = 0x2140aa03

.field public static final ID_BCM_SMART_LIGHT_STANDBY:I = 0x2140aa04

.field public static final ID_BCM_SMART_LIGHT_TRAVEL_ASSIST:I = 0x2140aa16

.field public static final ID_BCM_SMART_LIGHT_TURTLE_MOD:I = 0x2140aa0e

.field public static final ID_BCM_SMART_LIGHT_UNLOCK:I = 0x2140aa02

.field public static final ID_BCM_SMART_LIGHT_VOICE_ASSISTANT:I = 0x2140aa0a

.field public static final ID_BCM_SOFT_LVL:I = 0x21404011

.field public static final ID_BCM_STEALTH_GET_MODE:I = 0x21401c77
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BCM_STEALTH_MODE:I = 0x21401c76
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BCM_STOPNFCCAR_SW:I = 0x21401c37

.field public static final ID_BCM_SUNROOF_ANTI_PINCH_STATUS:I = 0x21405447

.field public static final ID_BCM_SUNROOF_COMFORT_CMD:I = 0x21405442

.field public static final ID_BCM_SUNROOF_INITIALIZED:I = 0x21405444

.field public static final ID_BCM_SUNROOF_MOTOR_STATUS:I = 0x21405445

.field public static final ID_BCM_SUNROOF_POS:I = 0x21405443

.field public static final ID_BCM_SUNROOF_THERMAL_PROTECT_ST:I = 0x21405446

.field public static final ID_BCM_SWS_CTRL_SCENE_ST:I = 0x21402231

.field public static final ID_BCM_SWS_HEAT:I = 0x21401cfe

.field public static final ID_BCM_SWS_LOGO_LIGHT_BRIGHTNESS:I = 0x2140542e

.field public static final ID_BCM_SWS_LOGO_LIGHT_CARTOON_SW:I = 0x2140542d

.field public static final ID_BCM_SWS_LOGO_LIGHT_SW:I = 0x2140542c

.field public static final ID_BCM_SYNC_CHARGE_PORT_STATUS:I = 0x21105428

.field public static final ID_BCM_TEMPORARY_LOCK_ST:I = 0x21401d21

.field public static final ID_BCM_TLDOMELIGHT_SW:I = 0x21401dc7

.field public static final ID_BCM_TRAILER_MODE_ST:I = 0x21401d4d

.field public static final ID_BCM_TRAILER_MODE_SW:I = 0x21401d4d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_TRANSPORT_MODE_SW:I = 0x21401d29

.field public static final ID_BCM_TRDL_SEAT_HEAT:I = 0x21405425

.field public static final ID_BCM_TRDM_SEAT_HEAT:I = 0x21405426

.field public static final ID_BCM_TRDOMELIGHT_SW:I = 0x21401dc8

.field public static final ID_BCM_TRDR_SEAT_HEAT:I = 0x21405427

.field public static final ID_BCM_TRUNK:I = 0x21401c0a

.field public static final ID_BCM_TRUNKPOS_OPEN_REQ:I = 0x21401d0e

.field public static final ID_BCM_TRUNK_OPENNER_ST:I = 0x21401d2f

.field public static final ID_BCM_TRUNK_POS_FEEDBACK:I = 0x21401d5a

.field public static final ID_BCM_TRUNK_SETPOS_REQ:I = 0x21401d0f

.field public static final ID_BCM_TTM_DENORMALIZE_ST:I = 0x21403e02

.field public static final ID_BCM_TTM_SW:I = 0x21403e01

.field public static final ID_BCM_TTM_SYS_ERR:I = 0x21403e03

.field public static final ID_BCM_UNLOCK_HAZARD_LIGHT:I = 0x21401dd8

.field public static final ID_BCM_UNLOCK_HORN:I = 0x21401dd9

.field public static final ID_BCM_UNLOCK_RESPONSE:I = 0x21401c1e

.field public static final ID_BCM_VBSUNROOF_BRIGHTNESS:I = 0x21405422

.field public static final ID_BCM_VBSUNROOF_ECU_ST:I = 0x21405424

.field public static final ID_BCM_VBSUNROOF_THERMAL_PROTECTED_ST:I = 0x21405423

.field public static final ID_BCM_VBW_ALL_BRIGHTNESS:I = 0x21415499

.field public static final ID_BCM_VBW_AUTO_CFG:I = 0x21405492

.field public static final ID_BCM_VBW_LEFT_BRIGHTNESS:I = 0x21415497

.field public static final ID_BCM_VBW_ML_BRIGHTNESS:I = 0x21405493

.field public static final ID_BCM_VBW_ML_SOLSW_STATUS:I = 0x2140549e

.field public static final ID_BCM_VBW_ML_SYNCSW_STATUS:I = 0x214054a2

.field public static final ID_BCM_VBW_ML_WORKING_STATUS:I = 0x2140549a

.field public static final ID_BCM_VBW_MR_BRIGHTNESS:I = 0x21405494

.field public static final ID_BCM_VBW_MR_SOLSW_STATUS:I = 0x2140549f

.field public static final ID_BCM_VBW_MR_SYNCSW_STATUS:I = 0x214054a3

.field public static final ID_BCM_VBW_MR_WORKING_STATUS:I = 0x2140549b

.field public static final ID_BCM_VBW_RIGHT_BRIGHTNESS:I = 0x21415498

.field public static final ID_BCM_VBW_RL_BRIGHTNESS:I = 0x21405495

.field public static final ID_BCM_VBW_RL_SOLSW_STATUS:I = 0x214054a0

.field public static final ID_BCM_VBW_RL_WORKING_STATUS:I = 0x2140549c

.field public static final ID_BCM_VBW_RR_BRIGHTNESS:I = 0x21405496

.field public static final ID_BCM_VBW_RR_SOLSW_STATUS:I = 0x214054a1

.field public static final ID_BCM_VBW_RR_WORKING_STATUS:I = 0x2140549d

.field public static final ID_BCM_VBW_SYS_OP_STATUS:I = 0x214054b6

.field public static final ID_BCM_VEH_PITCH_ANGLE:I = 0x216154cb

.field public static final ID_BCM_WASH_CAR_MODE:I = 0x21401cfd

.field public static final ID_BCM_WASH_FLUID_WARN:I = 0x21401ca5

.field public static final ID_BCM_WEATHER_LIGHT_CTRL_SW:I = 0x2140542a

.field public static final ID_BCM_WEATHER_LIGHT_OUTPUT_ST:I = 0x2140542b

.field public static final ID_BCM_WELCOME_ST:I = 0x21401c2c

.field public static final ID_BCM_WINDOW_ALLPOS:I = 0x21611c62

.field public static final ID_BCM_WINDOW_ALLSW:I = 0x21701c63

.field public static final ID_BCM_WINDOW_LOW_ENABLE:I = 0x2140543e

.field public static final ID_BCM_WINDOW_MANUAL_AUTO_MODE:I = 0x21701c63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_WINDOW_POSITION:I = 0x21611c20

.field public static final ID_BCM_WINDOW_SOA_CONNECTED:I = 0x21409286

.field public static final ID_BCM_WIN_ACTION_FB_ALL:I = 0x21411d74

.field public static final ID_BCM_WIN_CMD:I = 0x21401c2d

.field public static final ID_BCM_WIN_INI_LOST_ST:I = 0x21411d2e

.field public static final ID_BCM_WIN_LOCK_ST:I = 0x2140189b

.field public static final ID_BCM_WIPERSERVICE_SW:I = 0x21401c0b

.field public static final ID_BCM_WIPERSPDSW_ST:I = 0x21401ca2

.field public static final ID_BCM_WIPER_BLOCK_ST:I = 0x21405436

.field public static final ID_BCM_WIPER_FLUID_WARNING:I = 0x214054ba

.field public static final ID_BCM_WIPER_INTERVAL:I = 0x21401c31

.field public static final ID_BCM_WIPER_INT_SENCFG:I = 0x214054c1

.field public static final ID_BCM_WIPER_INT_SENMODE:I = 0x214054c2

.field public static final ID_BCM_WIPER_LIN_ERR_ST:I = 0x21405438

.field public static final ID_BCM_WIPER_MOTOR_ST:I = 0x21401d39

.field public static final ID_BCM_WIPER_OVERLOAD_PROTECT_ST:I = 0x2140543a

.field public static final ID_BCM_WIPER_THERM_PROTECT_ST:I = 0x21405439

.field public static final ID_BCM_WIPER_WASH_OUTPUT_ST:I = 0x2140543b

.field public static final ID_BCM_WIPER_WASH_VOICE_REQ_CMD:I = 0x2140543c

.field public static final ID_BCM_WORK_MODE_ST:I = 0x21401d82

.field public static final ID_BCM_X5_DCINEMA_MODE_ST:I = 0x21401d65

.field public static final ID_BCM_XMEDITATION_MODE_ST:I = 0x21401d66

.field public static final ID_BCM_XMOVIE_MODE_ST:I = 0x21401d5f

.field public static final ID_BCM_XSLEEP_MODE_ST:I = 0x21401d5e

.field public static final ID_CF_CHILD_LOCK:I = 0x21404607

.field public static final ID_CF_DOOR_CTRL:I = 0x21404602

.field public static final ID_CF_KEEPTEMP_APPOINT:I = 0x21404609

.field public static final ID_CF_KEEPTEMP_MEMORY_REQ:I = 0x2140460b

.field public static final ID_CF_KEEPTEMP_REMAIN_TIME:I = 0x2140460a

.field public static final ID_CF_KEEPTEMP_REQ:I = 0x21404608

.field public static final ID_CF_KEEPTEMP_WORK_ST:I = 0x2140460c

.field public static final ID_CF_LEFT_REM_ST:I = 0x2140460e

.field public static final ID_CF_POWER_ON:I = 0x21404601

.field public static final ID_CF_STER_MODE_SW:I = 0x2140460d

.field public static final ID_CF_TEMPERATURE_SET:I = 0x21404605

.field public static final ID_CF_TEMP_DOWN:I = 0x21404604

.field public static final ID_CF_TEMP_UP:I = 0x21404603

.field public static final ID_CF_TOP_DOOR_ST:I = 0x2140460f

.field public static final ID_CF_WORK_MODE:I = 0x21404606

.field public static final ID_CMS_AUTO_BRIGHT_SW:I = 0x21404201

.field public static final ID_CMS_BRIGHT_SET:I = 0x21404202
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_CMS_BRIGHT_SET_WITH_FLAG:I = 0x21414213

.field public static final ID_CMS_HIGHSPEED_ZOOM_SW:I = 0x21404205

.field public static final ID_CMS_LOWSPEED_ZOOM_SW:I = 0x21404206

.field public static final ID_CMS_OBJECT_RECOGNIZE_SW:I = 0x21404207

.field public static final ID_CMS_REVERSE_ASSIST_SW:I = 0x21404203

.field public static final ID_CMS_STORE_BRIGHT_SOURCE:I = 0x21404212
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_CMS_TURN_EXTN_SW:I = 0x21404204

.field public static final ID_CMS_VIEW_RECOVERY:I = 0x21404208

.field public static final ID_CMS_VISION_ANGLE_CTRL:I = 0x21404211

.field public static final ID_CMS_VISION_POINT_CTRL:I = 0x2141420f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_CMS_VISION_POINT_CTRL_FLOAT:I = 0x21614210

.field public static final ID_CPD_ALARM_HAZARD_LIGHT:I = 0x21401df5

.field public static final ID_CPD_ALARM_HAZARD_LIGHT_REQ:I = 0x21401df0

.field public static final ID_CPD_ALARM_HORN_REQ:I = 0x21401df1

.field public static final ID_ETC_ACTIVE_ST:I = 0x21404a02

.field public static final ID_ETC_BLE_REQ:I = 0x21404a06

.field public static final ID_ETC_DISMANTLE_ST:I = 0x21404a03

.field public static final ID_ETC_SELFCHECK_ST:I = 0x21404a04

.field public static final ID_ETC_SW:I = 0x21404a01

.field public static final ID_ETC_TOLL_STATION_ST:I = 0x21404a05

.field public static final ID_IMM_ACTION_SCRIPT_ID:I = 0x2140520e

.field public static final ID_IMM_COORDINATE:I = 0x2161520f

.field public static final ID_IMM_COORDINATE_Y:I = 0x21605204

.field public static final ID_IMM_COORDINATE_Z:I = 0x21605205

.field public static final ID_IMM_DEFAULT_POS_CMD:I = 0x21405209

.field public static final ID_IMM_EMER_STOP:I = 0x2140520d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_IMM_ERROR_RESET:I = 0x2140520b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_IMM_MACH_ZERO_RESET:I = 0x2140520c

.field public static final ID_IMM_MAIN_STATE:I = 0x21405201

.field public static final ID_IMM_MOVING_SPEED:I = 0x21405208

.field public static final ID_IMM_MOVING_STATE:I = 0x21405203

.field public static final ID_IMM_POWER_OFF:I = 0x2140520a

.field public static final ID_IMM_SPECIAL_MODE:I = 0x21405210

.field public static final ID_IMM_SUB_STATE:I = 0x21405202

.field public static final ID_IMM_TOUCH_MODE:I = 0x21405207

.field public static final ID_IMM_TOUCH_VIB:I = 0x21405206

.field public static final ID_IMS_AUTO_MODE_REQ:I = 0x21404808

.field public static final ID_IMS_AUTO_VISION_SW:I = 0x21404802

.field public static final ID_IMS_BRIGHT_LEVEL:I = 0x21404803

.field public static final ID_IMS_HIGHSPEED_AUTO_VISION:I = 0x21404809

.field public static final ID_IMS_MODE:I = 0x21404801

.field public static final ID_IMS_RESET_REQ:I = 0x2140480a

.field public static final ID_IMS_SYSTEM_ST:I = 0x21404807

.field public static final ID_IMS_VISION_ANGLE_LEVEL:I = 0x21404806

.field public static final ID_IMS_VISION_CTRL:I = 0x21414804

.field public static final ID_IMS_VISION_VERTICAL_LEVEL:I = 0x21404805

.field public static final ID_LCMS_LOG_CTRL:I = 0x2140420d

.field public static final ID_PSDL_MOTOR_THERMAL_PROTECT:I = 0x21401dd6

.field public static final ID_PSDL_SYSTEM_FAULT:I = 0x21401dd4

.field public static final ID_PSDR_MOTOR_THERMAL_PROTECT:I = 0x21401dd7

.field public static final ID_PSDR_SYSTEM_FAULT:I = 0x21401dd5

.field public static final ID_PSD_LEFT_POSITION:I = 0x21404c01

.field public static final ID_PSD_RIGHT_POSITION:I = 0x21404c02

.field public static final ID_RCMS_LOG_CTRL:I = 0x2140420e

.field public static final ID_SDCL_SW:I = 0x21401c82
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_SDCL_SW_AUTO_AND_MANUAL:I = 0x21411cb6

.field public static final ID_SDCR_SW:I = 0x21401c85
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_SDCR_SW_AUTO_AND_MANUAL:I = 0x21411cb7

.field public static final ID_SDC_MODE_SW:I = 0x21401c83
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_SECROW_EASY_ENTRY_RIGHT_SW:I = 0x21401dfc

.field public static final ID_SECROW_EASY_ENTRY_SW:I = 0x21401d5b

.field public static final ID_SFM_ANGLE_POS:I = 0x21401d8a

.field public static final ID_SFM_CTRL:I = 0x21401d89

.field public static final ID_SMART_LIGHT_SDSSWST:I = 0x2140aa19

.field public static final ID_SMART_LIGHT_TELE_INCOMMING:I = 0x2140aa18

.field public static final ID_SMART_LIGHT_WELLNESS_SWST:I = 0x2140aa1a

.field public static final ID_SWS_LTOUCH_PAD_BUTTON:I = 0x21402238

.field public static final ID_SWS_RTOUCH_PAD_BUTTON:I = 0x21402239

.field public static final ID_TTM_HOOK_MOTOR_ST:I = 0x21403e06

.field public static final ID_TTM_LAMP_CONNECT_ST:I = 0x21403e04

.field public static final ID_TTM_LAMP_FAULT_ST:I = 0x21403e05

.field public static final ID_TTM_PROHIBIT_ST:I = 0x21403e07

.field public static final ID_TWC_MODE_SW:I = 0x21401c84
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TWC_UPDOWN_SW:I = 0x21401c81
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final IMM_DEFAULT_POS_REQ:I = 0x1

.field public static final IMM_EMER_STOP_REQ:I = 0x1

.field public static final IMM_ERROR_RESET_REQ:I = 0x1

.field public static final IMM_FAREWELL_MODE:I = 0x1

.field public static final IMM_MACH_ZERO_REQ:I = 0x1

.field public static final IMM_MAIN_ST_ERROR:I = 0x4

.field public static final IMM_MAIN_ST_INIT:I = 0x0

.field public static final IMM_MAIN_ST_MOTION:I = 0x2

.field public static final IMM_MAIN_ST_PROTECT:I = 0x4

.field public static final IMM_MAIN_ST_READY:I = 0x1

.field public static final IMM_MAIN_ST_UNLOCK:I = 0x3

.field public static final IMM_NO_REQ:I = 0x0

.field public static final IMM_POWER_OFF_REQ:I = 0x1

.field public static final IMM_RUN_ST_MOVING:I = 0x1

.field public static final IMM_RUN_ST_STOP:I = 0x0

.field public static final IMM_TOUCH_MODE_DISABLE:I = 0x0

.field public static final IMM_TOUCH_MODE_MIDDLE:I = 0x2

.field public static final IMM_TOUCH_MODE_SMALL:I = 0x1

.field public static final IMM_TOUCH_MODE_STRONG:I = 0x3

.field public static final IMS_ANGLE_NARROW:I = 0x1

.field public static final IMS_ANGLE_NORMAL:I = 0x0

.field public static final IMS_ANGLE_WIDEN:I = 0x2

.field public static final IMS_AUTO_VISION_OFF:I = 0x0

.field public static final IMS_AUTO_VISION_ON:I = 0x1

.field public static final IMS_LEVEL1:I = 0x1

.field public static final IMS_LEVEL2:I = 0x2

.field public static final IMS_LEVEL3:I = 0x3

.field public static final IMS_LEVEL4:I = 0x4

.field public static final IMS_LEVEL5:I = 0x5

.field public static final IMS_LEVEL6:I = 0x6

.field public static final IMS_LEVEL7:I = 0x7

.field public static final IMS_MODE_CAMERA:I = 0x1

.field public static final IMS_MODE_MIRROR:I = 0x0

.field public static final IMS_MOVE_DOWN:I = 0x2

.field public static final IMS_MOVE_NARROW:I = 0x4

.field public static final IMS_MOVE_UP:I = 0x1

.field public static final IMS_MOVE_WIDE:I = 0x3

.field public static final IMS_SYSTEM_FAILURE:I = 0x2

.field public static final IMS_SYSTEM_NORMAL:I = 0x1

.field public static final IMS_SYSTEM_OFF:I = 0x0

.field public static final KEY_AUTH_STATE_FAIL:I = 0x3

.field public static final KEY_AUTH_STATE_INACTIVE:I = 0x0

.field public static final KEY_AUTH_STATE_START_IDENTIFICATION:I = 0x1

.field public static final KEY_AUTH_STATE_SUCCESS:I = 0x2

.field public static final LIGHT_MODE_TYPE_1:I = 0x1

.field public static final LIGHT_MODE_TYPE_2:I = 0x2

.field public static final LIGHT_MODE_TYPE_3:I = 0x3

.field public static final LIGHT_MODE_TYPE_INIT:I = 0x0

.field public static final MIRROR_CONTROL_PENDING:I = 0x2

.field public static final MIRROR_CONTROL_START:I = 0x1

.field public static final MIRROR_CONTROL_STOP:I = 0x3

.field public static final MIRROR_MOVE_DOWN:I = 0x2

.field public static final MIRROR_MOVE_LEFT:I = 0x3

.field public static final MIRROR_MOVE_RIGHT:I = 0x4

.field public static final MIRROR_MOVE_UP:I = 0x1

.field public static final MIRROR_REVERSE_BOTHSIDE:I = 0x3

.field public static final MIRROR_REVERSE_LEFTSIDE:I = 0x1

.field public static final MIRROR_REVERSE_OFF:I = 0x0

.field public static final MIRROR_REVERSE_RIGHTSIDE:I = 0x2

.field public static final MOVE_DOWN:I = 0x1

.field public static final MOVE_UP:I = 0x0

.field public static final NFC_CARD_STATUS_NONE:I = 0x0

.field public static final NFC_CARD_STATUS_TOUCH:I = 0x1

.field public static final OLED_STATUS_LIGHT_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OLED_STATUS_LIGHT_OUTSIDE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARK_LIGHT_RELATED_FM_B_LIGHT_CONFIG_ACTIVE:I = 0x1

.field public static final PARK_LIGHT_RELATED_FM_B_LIGHT_CONFIG_INACTIVE:I = 0x0

.field public static final PARK_LIGHT_RELATED_FM_B_LIGHT_CONFIG_STOP:I = 0x2

.field public static final PHONE_CONNECT_WINDOWS_AUTO_UP:I = 0x1

.field public static final POWER_DOOR_BRAKE_CLOSE:I = 0x1

.field public static final POWER_DOOR_BRAKE_CLOSE_FL:I = 0x1

.field public static final POWER_DOOR_BRAKE_CLOSE_FL_FR:I = 0x2

.field public static final POWER_DOOR_INITIALED:I = 0x2

.field public static final POWER_DOOR_INITIALING:I = 0x1

.field public static final POWER_DOOR_MOVE_CLOSE:I = 0x2

.field public static final POWER_DOOR_MOVE_OPEN:I = 0x1

.field public static final POWER_DOOR_MOVE_STOP:I = 0x3

.field public static final POWER_DOOR_NOT_INIT:I = 0x0

.field public static final POWER_DOOR_NO_P_GEAR_CLOSE:I = 0x3

.field public static final POWER_DOOR_OVER_SPEED_CLOSE:I = 0x2

.field public static final POWER_DOOR_PAUSE_TIMEOUT_CLOSE:I = 0x5

.field public static final POWER_DOOR_RAMP_STEEP_CLOSE:I = 0x4

.field public static final POWER_DOOR_RUNNING_STS_CLOSED:I = 0x1

.field public static final POWER_DOOR_RUNNING_STS_CLOSING:I = 0x3

.field public static final POWER_DOOR_RUNNING_STS_INIT:I = 0x0

.field public static final POWER_DOOR_RUNNING_STS_OPENED:I = 0x5

.field public static final POWER_DOOR_RUNNING_STS_OPENING:I = 0x2

.field public static final POWER_DOOR_RUNNING_STS_PAUSE:I = 0x4

.field public static final PREARMEDCFG_LIGHT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREARMEDCFG_LIGHT_SOUND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final READY_ENABLE_STATE_ACTIVE:I = 0x1

.field public static final READY_ENABLE_STATE_INACTIVE:I = 0x0

.field public static final REARVIEW_AUTODOWN_CFG_CLOSE:I = 0x1

.field public static final REARVIEW_AUTODOWN_CFG_OPEN:I = 0x2

.field public static final REAR_TRUNK_STATUS_CLOSED:I = 0x0

.field public static final REAR_TRUNK_STATUS_CLOSING:I = 0x3

.field public static final REAR_TRUNK_STATUS_OPENED:I = 0x2

.field public static final REAR_TRUNK_STATUS_OPENING:I = 0x1

.field public static final REFUEL_THE_VEHICLE_RMN_INIT:I = 0x0

.field public static final REFUEL_THE_VEHICLE_RMN_SW_P_GEAR:I = 0x1

.field public static final REFUEL_THE_VEHICLE_RMN_UNLOCK_FAILED:I = 0x2

.field public static final RLS_REQUEST_WIPER_SPD_0:I = 0x0

.field public static final RLS_REQUEST_WIPER_SPD_40:I = 0x1

.field public static final RLS_REQUEST_WIPER_SPD_42:I = 0x2

.field public static final RLS_REQUEST_WIPER_SPD_44:I = 0x3

.field public static final RLS_REQUEST_WIPER_SPD_46:I = 0x4

.field public static final RLS_REQUEST_WIPER_SPD_48:I = 0x5

.field public static final RLS_REQUEST_WIPER_SPD_50:I = 0x6

.field public static final RLS_REQUEST_WIPER_SPD_52:I = 0x7

.field public static final RLS_REQUEST_WIPER_SPD_54:I = 0x8

.field public static final RLS_REQUEST_WIPER_SPD_56:I = 0x9

.field public static final RLS_REQUEST_WIPER_SPD_58:I = 0xa

.field public static final RLS_REQUEST_WIPER_SPD_60:I = 0xb

.field public static final RMA_ADJUST_STATE_LEFT_OR_UP_MOVE:I = 0x1

.field public static final RMA_ADJUST_STATE_NULL:I = 0x0

.field public static final RMA_ADJUST_STATE_RIGHT_OR_DOWN_MOVE:I = 0x2

.field public static final SC_LIN_STATUS_CLOSING:I = 0x0

.field public static final SC_LIN_STATUS_OPENING:I = 0x1

.field public static final SC_STATUS_FAIL:I = 0x1

.field public static final SC_STATUS_INVALID:I = 0xff

.field public static final SC_STATUS_NORMAL:I = 0x0

.field public static final SC_STATUS_NOTOPEN:I = 0x2

.field public static final SDC_AUTO_MODE_ONE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_AUTO_MODE_TWO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_BOTH_POS:I = 0x2

.field public static final SDC_DENORMALIZE_STATE_INITIALIZED:I = 0x1

.field public static final SDC_DENORMALIZE_STATE_NOT_INITIALIZED:I = 0x0

.field public static final SDC_HAZZARD_REQUEST_1:I = 0x1

.field public static final SDC_HAZZARD_REQUEST_2:I = 0x2

.field public static final SDC_HAZZARD_REQUEST_3:I = 0x3

.field public static final SDC_KEY_CTRL_CFG_DRIVER_DOOR:I = 0x0

.field public static final SDC_KEY_CTRL_CFG_FRONT_DOOR:I = 0x1

.field public static final SDC_LEFT_POS:I = 0x0

.field private static final SDC_MANUAL_CONTROL_INVALID:I = 0x0

.field public static final SDC_MANUAL_CONTROL_PENDING:I = 0x2

.field public static final SDC_MANUAL_CONTROL_START:I = 0x1

.field public static final SDC_MANUAL_CONTROL_STOP:I = 0x3

.field public static final SDC_MANUAL_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_MOVE_COMMAND_AUTO_CLOSE:I = 0x1

.field public static final SDC_MOVE_COMMAND_AUTO_OPEN:I = 0x2

.field public static final SDC_MOVE_COMMAND_STEP_CLOSE:I = 0x4

.field public static final SDC_MOVE_COMMAND_STEP_OPEN:I = 0x5

.field public static final SDC_MOVE_COMMAND_STOP:I = 0x3

.field public static final SDC_OBSTACLE_DANGER:I = 0x1

.field public static final SDC_OBSTACLE_SAFE:I = 0x2

.field public static final SDC_OBSTACLE_UNKNOWN:I = 0x3

.field public static final SDC_PSD_MOTOR_STATE_CLOSING:I = 0x2

.field public static final SDC_PSD_MOTOR_STATE_NOT_MOVE:I = 0x0

.field public static final SDC_PSD_MOTOR_STATE_OPENING:I = 0x1

.field public static final SDC_PSD_MOTOR_STATE_PAUSE:I = 0x3

.field public static final SDC_RIGHT_POS:I = 0x1

.field private static final SDC_SW_AUTO_CLOSE:I = 0x1

.field private static final SDC_SW_AUTO_OPEN:I = 0x2

.field public static final SDC_SW_CLOSE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final SDC_SW_MANUAL_CLOSE:I = 0x4

.field private static final SDC_SW_MANUAL_OPEN:I = 0x5

.field public static final SDC_SW_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_SW_ON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_SW_OPEN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_SW_STOP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SDC_SYSTEM_ERROR_STATE_HAS_ERROR:I = 0x1

.field public static final SDC_SYSTEM_ERROR_STATE_NO_ERROR:I = 0x0

.field public static final SDC_SYSTEM_RUNNING_STATUS_CLOSED:I = 0x1

.field public static final SDC_SYSTEM_RUNNING_STATUS_CLOSING:I = 0x3

.field public static final SDC_SYSTEM_RUNNING_STATUS_INITIAL:I = 0x0

.field public static final SDC_SYSTEM_RUNNING_STATUS_LOCK_STATUS_ERROR:I = 0x7

.field public static final SDC_SYSTEM_RUNNING_STATUS_OPENING:I = 0x2

.field public static final SDC_SYSTEM_RUNNING_STATUS_OPEN_FINISHED:I = 0x5

.field public static final SDC_SYSTEM_RUNNING_STATUS_PAUSE:I = 0x4

.field public static final SDC_SYSTEM_RUNNING_STATUS_PREVENT_PLAYING_MODE:I = 0x6

.field public static final SDC_WINDOW_AUTO_DOWN_SWITCH_STATUS_OFF:I = 0x1

.field public static final SDC_WINDOW_AUTO_DOWN_SWITCH_STATUS_ON:I = 0x2

.field public static final SEAT_BELT_NO_REQUEST:I = 0x0

.field public static final SEAT_BELT_REQUEST1:I = 0x1

.field public static final SEAT_BELT_REQUEST2:I = 0x2

.field public static final SEAT_HEAT_LEVEL_1:I = 0x1

.field public static final SEAT_HEAT_LEVEL_2:I = 0x2

.field public static final SEAT_HEAT_LEVEL_3:I = 0x3

.field public static final SEAT_HEAT_OFF:I = 0x0

.field public static final SFM_CLOSE:I = 0x2

.field public static final SFM_CLOSED_STATUS:I = 0x0

.field public static final SFM_CLOSING_STATUS:I = 0x2

.field public static final SFM_OPEN:I = 0x1

.field public static final SFM_OPENED_STATUS:I = 0x1

.field public static final SFM_OPENING_STATUS:I = 0x3

.field public static final SFM_STOP:I = 0x3

.field public static final SFM_STOP_STATUS:I = 0x4

.field public static final SHADE_CONTROLLER_AUTO_CLOSE_COMMAND:I = 0x1

.field public static final SHADE_CONTROLLER_AUTO_OPEN_COMMAND:I = 0x2

.field public static final SHADE_CONTROLLER_INITIALIZED:I = 0x1

.field public static final SHADE_CONTROLLER_INITIALIZING:I = 0x2

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_BACKWARD:I = 0x2

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_FORWARD:I = 0x1

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_INITIALIZING:I = 0x6

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_STALLED:I = 0x4

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_STOP:I = 0x0

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_ZEROPOSLEARNING:I = 0x5

.field public static final SHADE_CONTROLLER_NOT_INITIALIZED:I = 0x0

.field public static final SHADE_CONTROLLER_STOP_COMMAND:I = 0x3

.field public static final SLIDE_DOOR_BRAKEMODE:I = 0x7

.field public static final SLIDE_DOOR_CLOSE:I = 0x2

.field public static final SLIDE_DOOR_CLOSED:I = 0x2

.field public static final SLIDE_DOOR_CLOSEING:I = 0x4

.field public static final SLIDE_DOOR_DOORFREE:I = 0x6

.field public static final SLIDE_DOOR_FAULT:I = 0x1

.field public static final SLIDE_DOOR_FULLOPEN:I = 0x1

.field public static final SLIDE_DOOR_LOCK:I = 0x1

.field public static final SLIDE_DOOR_MANUL_MODE:I = 0x1

.field public static final SLIDE_DOOR_NORMAL:I = 0x0

.field public static final SLIDE_DOOR_NOTPROTECT:I = 0x0

.field public static final SLIDE_DOOR_OPEN:I = 0x1

.field public static final SLIDE_DOOR_OPENING:I = 0x3

.field public static final SLIDE_DOOR_POWER_MODE:I = 0x0

.field public static final SLIDE_DOOR_PROTECTED:I = 0x1

.field public static final SLIDE_DOOR_STOP:I = 0x3

.field public static final SLIDE_DOOR_STOPED:I = 0x5

.field public static final SLIDE_DOOR_UNKNOWN:I = 0x0

.field public static final SLIDE_DOOR_UNLOCK:I = 0x0

.field public static final SMART_LIGHT_ACC_DRIVE_CONTROL:I = 0x3

.field public static final SMART_LIGHT_ACC_OFF:I = 0x1

.field public static final SMART_LIGHT_ACC_ON:I = 0x2

.field public static final SMART_LIGHT_ACTIVE:I = 0x1

.field public static final SMART_LIGHT_IPA_STATIC_LEFT:I = 0x5

.field public static final SMART_LIGHT_IPA_STATIC_RIGHT:I = 0x6

.field public static final SMART_LIGHT_IPA_WIPING_LEFT:I = 0x3

.field public static final SMART_LIGHT_IPA_WIPING_RIGHT:I = 0x4

.field public static final SMART_LIGHT_LEFT_ACTIVE:I = 0x1

.field public static final SMART_LIGHT_NO_ACTIVE:I = 0x0

.field public static final SMART_LIGHT_RIGHT_ACTIVE:I = 0x2

.field public static final SMART_LIGHT_TRAVEL_ASSIST_OFF:I = 0x2

.field public static final SMART_LIGHT_TRAVEL_ASSIST_ON:I = 0x1

.field public static final SMART_LIGHT_TURTLE_RED_ACTIVE:I = 0x2

.field public static final SMART_LIGHT_TURTLE_YELLOW_ACTIVE:I = 0x1

.field public static final SMART_LIGHT_URGENT_ACTIVE:I = 0x2

.field public static final SOA_CONNECT_STATUS_CONNECTED:I = 0x1

.field public static final SOA_CONNECT_STATUS_DISCONNECTED:I = 0x0

.field public static final SOFT_LVL_CONFIG_COMFORT_PLUS:I = 0x5

.field public static final SOFT_LVL_CONFIG_ECO:I = 0x6

.field public static final SOFT_LVL_CONFIG_FAULT:I = 0x0

.field public static final SOFT_LVL_CONFIG_HARD:I = 0x3

.field public static final SOFT_LVL_CONFIG_MEDIUM:I = 0x2

.field public static final SOFT_LVL_CONFIG_RACING:I = 0x4

.field public static final SOFT_LVL_CONFIG_SOFT:I = 0x1

.field public static final SUN_ROOF_VENT_COMMAND:I = 0x4

.field public static final SWS_CTRL_SCENE_ST_ACC_CONTROL:I = 0x3

.field public static final SWS_CTRL_SCENE_ST_CC_CONTROL:I = 0x2

.field public static final SWS_CTRL_SCENE_ST_COLUMN_CONTROL:I = 0x4

.field public static final SWS_CTRL_SCENE_ST_HUD_CONTROL:I = 0x5

.field public static final SWS_CTRL_SCENE_ST_IVI_CONTROL:I = 0x0

.field public static final SWS_CTRL_SCENE_ST_MIRROR_CONTROL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarBcmManager"

.field public static final TERMAL_PROTECTED_ACTIVE:I = 0x1

.field public static final TERMAL_PROTECTED_NO_ACTIVE:I = 0x0

.field public static final TOUCHPAD_PRESS_STATUS_DOUBLE_CLICK:I = 0x3

.field public static final TOUCHPAD_PRESS_STATUS_LONG_PRESS:I = 0x2

.field public static final TOUCHPAD_PRESS_STATUS_NOT_PRESS:I = 0x0

.field public static final TOUCHPAD_PRESS_STATUS_SINGLE_CLICK:I = 0x1

.field public static final TTM_CONNECT:I = 0x1

.field public static final TTM_DENORMALIZE_STATUS_INITIALIZED:I = 0x1

.field public static final TTM_DENORMALIZE_STATUS_NOT_INITIALIZED:I = 0x0

.field public static final TTM_FAULT:I = 0x1

.field public static final TTM_HOOK_MOTOR_STATUS_CLOSING:I = 0x2

.field public static final TTM_HOOK_MOTOR_STATUS_NOT_MOVE:I = 0x0

.field public static final TTM_HOOK_MOTOR_STATUS_OPENING:I = 0x1

.field public static final TTM_NO_CONNECT:I = 0x0

.field public static final TTM_NO_FAULT:I = 0x0

.field public static final TTM_SYS_ERROR_STATUS_ERROR:I = 0x1

.field public static final TTM_SYS_ERROR_STATUS_NO_ERROR:I = 0x0

.field public static final TURN_LAMP_ACTIVE:I = 0x1

.field public static final TURN_LAMP_INACTIVE:I = 0x0

.field public static final TWC_AUTO_MODE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TWC_MANUAL_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TWC_UPDOWN_SW_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TWC_UPDOWN_SW_ON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UNLOCK_STATUS_LIGHT:I = 0x1

.field public static final UNLOCK_STATUS_LIGHT_AND_HORN:I = 0x0

.field public static final VBSUNROOF_ECU_FAULT:I = 0x2

.field public static final VBSUNROOF_ECU_MAINTENANCE:I = 0x3

.field public static final VBSUNROOF_ECU_OFF:I = 0x0

.field public static final VBSUNROOF_ECU_ON:I = 0x1

.field public static final VBW_NRC_COMMON:I = 0x0

.field public static final VBW_NRC_PLAY_PROTECT:I = 0xc1

.field public static final VBW_NRC_THEMO_PROTECT:I = 0xc0

.field public static final VBW_WORKING_STATUS_DONE:I = 0x2

.field public static final VBW_WORKING_STATUS_FAILED:I = 0x3

.field public static final VBW_WORKING_STATUS_NO_COMMAND:I = 0x0

.field public static final VBW_WORKING_STATUS_WORKING:I = 0x1

.field public static final VEHICLE_BCM_SEAT_ACTION_ADD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VEHICLE_BCM_SEAT_ACTION_STOP:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VEHICLE_BCM_SEAT_ACTION_SUB:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ALL:I = 0x4

.field public static final WINDOW_BACK_LEFT:I = 0x2

.field public static final WINDOW_BACK_RIGHT:I = 0x3

.field public static final WINDOW_FRONT_LEFT:I = 0x0

.field public static final WINDOW_FRONT_RIGHT:I = 0x1

.field public static final WINDOW_LOCK_ACTIVE:I = 0x1

.field public static final WINDOW_LOCK_INACTIVE:I = 0x0

.field public static final WINDOW_LOW_DEFAULT:I = 0x0

.field public static final WINDOW_LOW_DISABLE:I = 0x1

.field public static final WINDOW_REMOTECTRL_AUTO:I = 0x1

.field public static final WINDOW_REMOTECTRL_MANUAL:I = 0x2

.field public static final WINDOW_REMOTECTRL_OFF:I = 0x3

.field public static final WIPER_FLUID_NO_WARNING:I = 0x0

.field public static final WIPER_FLUID_WARNING:I = 0x1

.field public static final WIPER_HIGH_SPEED_SWITCH:I = 0x1

.field public static final WIPER_INTERMITTENT_SPEED_SWITCH:I = 0x2

.field public static final WIPER_LOW_SPEED_SWITCH:I = 0x0

.field public static final WIPER_SPEED_SW_STATE_AUTO:I = 0x4

.field public static final WIPER_SPEED_SW_STATE_HIGH:I = 0x2

.field public static final WIPER_SPEED_SW_STATE_INT1:I = 0x4

.field public static final WIPER_SPEED_SW_STATE_INT2:I = 0x5

.field public static final WIPER_SPEED_SW_STATE_INTERMITTENT:I = 0x3

.field public static final WIPER_SPEED_SW_STATE_INT_AUTO:I = 0x3

.field public static final WIPER_SPEED_SW_STATE_LOW:I = 0x1

.field public static final WIPER_SPEED_SW_STATE_OFF:I


# instance fields
.field private final mBcmPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarBcmManager"

    .line 11674
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 11082
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x23c

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21401c02

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x11400e01

    .line 11083
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21401c27

    .line 11084
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21401c70

    .line 11085
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21401c1f

    .line 11086
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21611c20

    .line 11087
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21401c1b

    .line 11088
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21401c1c

    .line 11089
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21401c1d

    .line 11090
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21401c35

    .line 11091
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21401c09

    .line 11092
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21401c0a

    .line 11093
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21401c31

    .line 11094
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21401c01

    .line 11095
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21401c23

    .line 11096
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21401c24

    .line 11097
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21401c1e

    .line 11098
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21401c2f

    .line 11099
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21401c41

    .line 11100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21401c26

    .line 11101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x15400513

    .line 11102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21601c67

    .line 11103
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21601c68

    .line 11104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21601c66

    .line 11105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21601c69

    .line 11106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21411c19

    .line 11107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21401c21

    .line 11108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21401c1a

    .line 11109
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21401c25

    .line 11110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21401c2a

    .line 11111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21401c2b

    .line 11112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x21411c4e

    .line 11113
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x21401c2d

    .line 11114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x21401c2c

    .line 11115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x21401c28

    .line 11116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x21401c29    # 6.50894E-19f

    .line 11117
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21401c32

    .line 11118
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x21401c33

    .line 11119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x21401c36

    .line 11120
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x21401c37

    .line 11121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21401c38

    .line 11122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x21401c39

    .line 11123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x21401c4b

    .line 11124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x21411c3a

    .line 11125
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x21411c3b

    .line 11126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x21401c3c

    .line 11127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x21401c3d

    .line 11128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x21401c3e

    .line 11129
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x21401c3f

    .line 11130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x21605403

    .line 11131
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21605404

    .line 11132
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x21605405

    .line 11133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x21605406

    .line 11134
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x21401c40

    .line 11135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21401c42

    .line 11136
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21401c47

    .line 11137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21401c48

    .line 11138
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x21401c49

    .line 11139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x21401c4a

    .line 11140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21401c14

    .line 11141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x21401c78

    .line 11142
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x21401c15

    .line 11143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x21401c16

    .line 11144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x21401c0b

    .line 11145
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x21401c07

    .line 11146
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x21401c06

    .line 11147
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x21401c17

    .line 11148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21401c18

    .line 11149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x21411c9c

    .line 11150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21401c64

    .line 11151
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x21401de2

    .line 11152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x21401c65

    .line 11153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x21401c2e

    .line 11154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x21401c30

    .line 11155
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x21401c4c

    .line 11156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x21401c4d

    .line 11157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x21401c71

    .line 11158
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x21401c72

    .line 11159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x21401c73

    .line 11160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    const p3, 0x21401c74

    .line 11161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4f

    aput-object p3, p2, p4

    const p3, 0x21401c75

    .line 11162
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x50

    aput-object p3, p2, p4

    const p3, 0x21401c76

    .line 11163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x51

    aput-object p3, p2, p4

    const p3, 0x21401c77

    .line 11164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x52

    aput-object p3, p2, p4

    const p3, 0x21701c7b

    .line 11165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    aput-object p3, p2, p4

    const p3, 0x21615407

    .line 11166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x54

    aput-object p3, p2, p4

    const p3, 0x21615418

    .line 11167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x55

    aput-object p3, p2, p4

    const p3, 0x21401c97

    .line 11168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x56

    aput-object p3, p2, p4

    const p3, 0x21401c98

    .line 11169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x57

    aput-object p3, p2, p4

    const p3, 0x21401899

    .line 11170
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x58

    aput-object p3, p2, p4

    const p3, 0x2141180d

    .line 11171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x59

    aput-object p3, p2, p4

    const p3, 0x21401c9a

    .line 11172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5a

    aput-object p3, p2, p4

    const p3, 0x2140189b

    .line 11173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5b

    aput-object p3, p2, p4

    const p3, 0x21401c9d    # 6.509E-19f

    .line 11174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5c

    aput-object p3, p2, p4

    const p3, 0x21411c9e

    .line 11175
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5d

    aput-object p3, p2, p4

    const p3, 0x21401c9f

    .line 11176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5e

    aput-object p3, p2, p4

    const p3, 0x21401dfd

    .line 11177
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f

    aput-object p3, p2, p4

    const p3, 0x21401ca0

    .line 11178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x60

    aput-object p3, p2, p4

    const p3, 0x21401ca1

    .line 11179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x61

    aput-object p3, p2, p4

    const p3, 0x21401038

    .line 11180
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x62

    aput-object p3, p2, p4

    const p3, 0x21401ca2

    .line 11181
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x63

    aput-object p3, p2, p4

    const p3, 0x21401ca3

    .line 11182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    aput-object p3, p2, p4

    const p3, 0x21701ca4

    .line 11183
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x65

    aput-object p3, p2, p4

    const p3, 0x21401c22

    .line 11184
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x66

    aput-object p3, p2, p4

    const p3, 0x21401ca5

    .line 11185
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x67

    aput-object p3, p2, p4

    const p3, 0x21401ca6

    .line 11186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x68

    aput-object p3, p2, p4

    const p3, 0x21411ca8

    .line 11187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x69

    aput-object p3, p2, p4

    const p3, 0x21401ca9

    .line 11188
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6a

    aput-object p3, p2, p4

    const p3, 0x21401caa

    .line 11189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6b

    aput-object p3, p2, p4

    const p3, 0x21401cab

    .line 11190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6c

    aput-object p3, p2, p4

    const p3, 0x21401cac

    .line 11191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6d

    aput-object p3, p2, p4

    const p3, 0x21401cad

    .line 11192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6e

    aput-object p3, p2, p4

    const p3, 0x21401cae

    .line 11193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6f

    aput-object p3, p2, p4

    const p3, 0x21401caf

    .line 11194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x70

    aput-object p3, p2, p4

    const p3, 0x21401cb0

    .line 11195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x71

    aput-object p3, p2, p4

    const p3, 0x21401cb1

    .line 11196
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x72

    aput-object p3, p2, p4

    const p3, 0x21401cb2

    .line 11197
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x73

    aput-object p3, p2, p4

    const p3, 0x21401cb3

    .line 11198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x74

    aput-object p3, p2, p4

    const p3, 0x21401cb4

    .line 11199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x75

    aput-object p3, p2, p4

    const p3, 0x21401cb5

    .line 11200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x76

    aput-object p3, p2, p4

    const p3, 0x21411cb6

    .line 11201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x77

    aput-object p3, p2, p4

    const p3, 0x21411cb7

    .line 11202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x78

    aput-object p3, p2, p4

    const p3, 0x21405417

    .line 11203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x79

    aput-object p3, p2, p4

    const p3, 0x21405416

    .line 11204
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7a

    aput-object p3, p2, p4

    const p3, 0x21401cb8

    .line 11205
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7b

    aput-object p3, p2, p4

    const p3, 0x21401cb9

    .line 11206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7c

    aput-object p3, p2, p4

    const p3, 0x21401cba

    .line 11207
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7d

    aput-object p3, p2, p4

    const p3, 0x21401cbb

    .line 11208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7e

    aput-object p3, p2, p4

    const p3, 0x21401cbc

    .line 11209
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7f

    aput-object p3, p2, p4

    const p3, 0x21401cbd

    .line 11210
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x80

    aput-object p3, p2, p4

    const p3, 0x21401cbe

    .line 11211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x81

    aput-object p3, p2, p4

    const p3, 0x21405420

    .line 11212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x82

    aput-object p3, p2, p4

    const p3, 0x21411cc0

    .line 11213
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x83

    aput-object p3, p2, p4

    const p3, 0x21411cbf

    .line 11214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x84

    aput-object p3, p2, p4

    const p3, 0x21411cc1    # 6.5429E-19f

    .line 11215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x85

    aput-object p3, p2, p4

    const p3, 0x21401cc2

    .line 11216
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x86

    aput-object p3, p2, p4

    const p3, 0x21401cc3

    .line 11217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x87

    aput-object p3, p2, p4

    const p3, 0x21401cc4

    .line 11218
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x88

    aput-object p3, p2, p4

    const p3, 0x21401cc5

    .line 11219
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x89

    aput-object p3, p2, p4

    const p3, 0x21401cc6

    .line 11220
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8a

    aput-object p3, p2, p4

    const p3, 0x21401cc7

    .line 11221
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8b

    aput-object p3, p2, p4

    const p3, 0x21401ccb

    .line 11222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8c

    aput-object p3, p2, p4

    const p3, 0x21401ccc

    .line 11223
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8d

    aput-object p3, p2, p4

    const p3, 0x21401ccd

    .line 11224
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8e

    aput-object p3, p2, p4

    const p3, 0x21411cce

    .line 11225
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8f

    aput-object p3, p2, p4

    const p3, 0x21401ccf

    .line 11226
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x90

    aput-object p3, p2, p4

    const p3, 0x21401cd0

    .line 11227
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x91

    aput-object p3, p2, p4

    const p3, 0x214054a5

    .line 11228
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x92

    aput-object p3, p2, p4

    const p3, 0x214054a4

    .line 11229
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x93

    aput-object p3, p2, p4

    const p3, 0x21411cd1

    .line 11230
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x94

    aput-object p3, p2, p4

    const p3, 0x21401cd7

    .line 11231
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x95

    aput-object p3, p2, p4

    const p3, 0x21401cdc

    .line 11232
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x96

    aput-object p3, p2, p4

    const p3, 0x21401cde

    .line 11233
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x97

    aput-object p3, p2, p4

    const p3, 0x21401cdf

    .line 11234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x98

    aput-object p3, p2, p4

    const p3, 0x21401ce0

    .line 11235
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x99

    aput-object p3, p2, p4

    const p3, 0x21401ce1

    .line 11236
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9a

    aput-object p3, p2, p4

    const p3, 0x21401ce2

    .line 11237
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9b

    aput-object p3, p2, p4

    const p3, 0x21401ce3

    .line 11238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9c

    aput-object p3, p2, p4

    const p3, 0x21401ce4

    .line 11239
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9d

    aput-object p3, p2, p4

    const p3, 0x21404011

    .line 11240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9e

    aput-object p3, p2, p4

    const p3, 0x21401ce6

    .line 11241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9f

    aput-object p3, p2, p4

    const p3, 0x2140400c

    .line 11242
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa0

    aput-object p3, p2, p4

    const p3, 0x21401ce5

    .line 11243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa1

    aput-object p3, p2, p4

    const p3, 0x21411cf0

    .line 11244
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa2

    aput-object p3, p2, p4

    const p3, 0x21401cf6

    .line 11245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa3

    aput-object p3, p2, p4

    const p3, 0x21401d04

    .line 11246
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa4

    aput-object p3, p2, p4

    const p3, 0x21401d02

    .line 11247
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa5

    aput-object p3, p2, p4

    const p3, 0x21401d03

    .line 11248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa6

    aput-object p3, p2, p4

    const p3, 0x21401d12

    .line 11249
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa7

    aput-object p3, p2, p4

    const p3, 0x21401d13

    .line 11250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa8

    aput-object p3, p2, p4

    const p3, 0x21401d14

    .line 11251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa9

    aput-object p3, p2, p4

    const p3, 0x21401d06

    .line 11252
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaa

    aput-object p3, p2, p4

    const p3, 0x21401d07

    .line 11253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xab

    aput-object p3, p2, p4

    const p3, 0x21401d08

    .line 11254
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xac

    aput-object p3, p2, p4

    const p3, 0x21401d09

    .line 11255
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xad

    aput-object p3, p2, p4

    const p3, 0x21401d0a

    .line 11256
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xae

    aput-object p3, p2, p4

    const p3, 0x21401d05

    .line 11257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaf

    aput-object p3, p2, p4

    const p3, 0x21401d0d

    .line 11258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb0

    aput-object p3, p2, p4

    const p3, 0x21403e01

    .line 11259
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb1

    aput-object p3, p2, p4

    const p3, 0x21401cfd

    .line 11260
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb2

    aput-object p3, p2, p4

    const p3, 0x21401cfc

    .line 11261
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb3

    aput-object p3, p2, p4

    const p3, 0x21401cfb

    .line 11262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb4

    aput-object p3, p2, p4

    const p3, 0x21401d10

    .line 11263
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb5

    aput-object p3, p2, p4

    const p3, 0x21401d0e

    .line 11264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb6

    aput-object p3, p2, p4

    const p3, 0x21401d0f

    .line 11265
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb7

    aput-object p3, p2, p4

    const p3, 0x21401d21

    .line 11266
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb8

    aput-object p3, p2, p4

    const p3, 0x21411cff

    .line 11267
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb9

    aput-object p3, p2, p4

    const p3, 0x15400514

    .line 11268
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xba

    aput-object p3, p2, p4

    const p3, 0x21401d27

    .line 11269
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbb

    aput-object p3, p2, p4

    const p3, 0x21401d29

    .line 11270
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbc

    aput-object p3, p2, p4

    const p3, 0x2140400f

    .line 11271
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbd

    aput-object p3, p2, p4

    const p3, 0x21411d2a

    .line 11272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbe

    aput-object p3, p2, p4

    const p3, 0x21411d2b

    .line 11273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbf

    aput-object p3, p2, p4

    const p3, 0x21401d2c

    .line 11274
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc0

    aput-object p3, p2, p4

    const p3, 0x21401d2d

    .line 11275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc1

    aput-object p3, p2, p4

    const p3, 0x21411d2e

    .line 11276
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc2

    aput-object p3, p2, p4

    const p3, 0x21401cfe

    .line 11277
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc3

    aput-object p3, p2, p4

    const p3, 0x21401d2f

    .line 11278
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc4

    aput-object p3, p2, p4

    const p3, 0x21411d30

    .line 11279
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc5

    aput-object p3, p2, p4

    const p3, 0x21402231

    .line 11280
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc6

    aput-object p3, p2, p4

    const p3, 0x21401d39

    .line 11281
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc7

    aput-object p3, p2, p4

    const p3, 0x21404002

    .line 11282
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc8

    aput-object p3, p2, p4

    const p3, 0x21401d4a

    .line 11283
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc9

    aput-object p3, p2, p4

    const p3, 0x21401d4b

    .line 11284
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xca

    aput-object p3, p2, p4

    const p3, 0x21404007

    .line 11285
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcb

    aput-object p3, p2, p4

    const p3, 0x21403e02

    .line 11286
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcc

    aput-object p3, p2, p4

    const p3, 0x21403e03

    .line 11287
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcd

    aput-object p3, p2, p4

    const p3, 0x21404003

    .line 11288
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xce

    aput-object p3, p2, p4

    const p3, 0x21404004

    .line 11289
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcf

    aput-object p3, p2, p4

    const p3, 0x21404005

    .line 11290
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd0

    aput-object p3, p2, p4

    const p3, 0x21404006

    .line 11291
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd1

    aput-object p3, p2, p4

    const p3, 0x21411d47

    .line 11292
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd2

    aput-object p3, p2, p4

    const p3, 0x21401d4d

    .line 11293
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd3

    aput-object p3, p2, p4

    const p3, 0x21404008

    .line 11294
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd4

    aput-object p3, p2, p4

    const p3, 0x21404009

    .line 11295
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd5

    aput-object p3, p2, p4

    const p3, 0x2140400b

    .line 11296
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd6

    aput-object p3, p2, p4

    const p3, 0x2140400d

    .line 11297
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd7

    aput-object p3, p2, p4

    const p3, 0x21404012

    .line 11298
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd8

    aput-object p3, p2, p4

    const p3, 0x21404013

    .line 11299
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd9

    aput-object p3, p2, p4

    const p3, 0x21401d52

    .line 11300
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xda

    aput-object p3, p2, p4

    const p3, 0x21401d53

    .line 11301
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdb

    aput-object p3, p2, p4

    const p3, 0x21401d54

    .line 11302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdc

    aput-object p3, p2, p4

    const p3, 0x21411d55

    .line 11303
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdd

    aput-object p3, p2, p4

    const p3, 0x21411d56

    .line 11304
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xde

    aput-object p3, p2, p4

    const p3, 0x21411d57

    .line 11305
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdf

    aput-object p3, p2, p4

    const p3, 0x21411d58

    .line 11306
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe0

    aput-object p3, p2, p4

    const p3, 0x21411d59

    .line 11307
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe1

    aput-object p3, p2, p4

    const p3, 0x21414014

    .line 11308
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe2

    aput-object p3, p2, p4

    const p3, 0x21414015

    .line 11309
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe3

    aput-object p3, p2, p4

    const p3, 0x21614016

    .line 11310
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe4

    aput-object p3, p2, p4

    const p3, 0x21401d5a

    .line 11311
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe5

    aput-object p3, p2, p4

    const p3, 0x21401d5b

    .line 11312
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe6

    aput-object p3, p2, p4

    const p3, 0x21401dfc

    .line 11313
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe7

    aput-object p3, p2, p4

    const p3, 0x21401d5c

    .line 11314
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe8

    aput-object p3, p2, p4

    const p3, 0x21404019

    .line 11315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe9

    aput-object p3, p2, p4

    const p3, 0x21401d5e

    .line 11316
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xea

    aput-object p3, p2, p4

    const p3, 0x21401d5f

    .line 11317
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xeb

    aput-object p3, p2, p4

    const p3, 0x21401d65

    .line 11318
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xec

    aput-object p3, p2, p4

    const p3, 0x21401d66

    .line 11319
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xed

    aput-object p3, p2, p4

    const p3, 0x21404201

    .line 11320
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xee

    aput-object p3, p2, p4

    const p3, 0x21404202

    .line 11321
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xef

    aput-object p3, p2, p4

    const p3, 0x21404205

    .line 11322
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf0

    aput-object p3, p2, p4

    const p3, 0x21404206

    .line 11323
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf1

    aput-object p3, p2, p4

    const p3, 0x21404207

    .line 11324
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf2

    aput-object p3, p2, p4

    const p3, 0x21404203

    .line 11325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf3

    aput-object p3, p2, p4

    const p3, 0x21404204

    .line 11326
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf4

    aput-object p3, p2, p4

    const p3, 0x21404208

    .line 11327
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf5

    aput-object p3, p2, p4

    const p3, 0x2140401a

    .line 11328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf6

    aput-object p3, p2, p4

    const p3, 0x2140401b

    .line 11329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf7

    aput-object p3, p2, p4

    const p3, 0x21404401

    .line 11330
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf8

    aput-object p3, p2, p4

    const p3, 0x21404402

    .line 11331
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf9

    aput-object p3, p2, p4

    const p3, 0x21404403

    .line 11332
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xfa

    aput-object p3, p2, p4

    const p3, 0x21404404

    .line 11333
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xfb

    aput-object p3, p2, p4

    const p3, 0x21404407

    .line 11334
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xfc

    aput-object p3, p2, p4

    const p3, 0x21404408

    .line 11335
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xfd

    aput-object p3, p2, p4

    const p3, 0x21404409

    .line 11336
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xfe

    aput-object p3, p2, p4

    const p3, 0x21403e04

    .line 11337
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xff

    aput-object p3, p2, p4

    const p3, 0x21403e05

    .line 11338
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x100

    aput-object p3, p2, p4

    const p3, 0x21403e06

    .line 11339
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x101

    aput-object p3, p2, p4

    const p3, 0x21401d73

    .line 11340
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x102

    aput-object p3, p2, p4

    const p3, 0x21411d74

    .line 11341
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x103

    aput-object p3, p2, p4

    const p3, 0x2140420d

    .line 11342
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x104

    aput-object p3, p2, p4

    const p3, 0x2140420e

    .line 11343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x105

    aput-object p3, p2, p4

    const p3, 0x21614210

    .line 11344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x106

    aput-object p3, p2, p4

    const p3, 0x21404212

    .line 11345
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x107

    aput-object p3, p2, p4

    const p3, 0x21414213

    .line 11346
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x108

    aput-object p3, p2, p4

    const p3, 0x21404211

    .line 11347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x109

    aput-object p3, p2, p4

    const p3, 0x21404405

    .line 11348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10a

    aput-object p3, p2, p4

    const p3, 0x21401d7b

    .line 11349
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10b

    aput-object p3, p2, p4

    const p3, 0x21401d7c

    .line 11350
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10c

    aput-object p3, p2, p4

    const p3, 0x21401d7d

    .line 11351
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10d

    aput-object p3, p2, p4

    const p3, 0x21401d7e

    .line 11352
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10e

    aput-object p3, p2, p4

    const p3, 0x21401d7f

    .line 11353
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10f

    aput-object p3, p2, p4

    const p3, 0x21401d80

    .line 11354
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x110

    aput-object p3, p2, p4

    const p3, 0x21401d81

    .line 11355
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x111

    aput-object p3, p2, p4

    const p3, 0x21401d82

    .line 11356
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x112

    aput-object p3, p2, p4

    const p3, 0x21401d83

    .line 11357
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x113

    aput-object p3, p2, p4

    const p3, 0x21404406

    .line 11358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x114

    aput-object p3, p2, p4

    const p3, 0x21401d84

    .line 11359
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x115

    aput-object p3, p2, p4

    const p3, 0x21401d85

    .line 11360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x116

    aput-object p3, p2, p4

    const p3, 0x21401d86

    .line 11361
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x117

    aput-object p3, p2, p4

    const p3, 0x21404601

    .line 11362
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x118

    aput-object p3, p2, p4

    const p3, 0x21404602

    .line 11363
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x119

    aput-object p3, p2, p4

    const p3, 0x2140460f

    .line 11364
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11a

    aput-object p3, p2, p4

    const p3, 0x21404603

    .line 11365
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11b

    aput-object p3, p2, p4

    const p3, 0x21404604

    .line 11366
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11c

    aput-object p3, p2, p4

    const p3, 0x21404605

    .line 11367
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11d

    aput-object p3, p2, p4

    const p3, 0x21404606

    .line 11368
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11e

    aput-object p3, p2, p4

    const p3, 0x21404607

    .line 11369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11f

    aput-object p3, p2, p4

    const p3, 0x21404608

    .line 11370
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x120

    aput-object p3, p2, p4

    const p3, 0x21404609

    .line 11371
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x121

    aput-object p3, p2, p4

    const p3, 0x2140460a

    .line 11372
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x122

    aput-object p3, p2, p4

    const p3, 0x2140460b

    .line 11373
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x123

    aput-object p3, p2, p4

    const p3, 0x2140460c

    .line 11374
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x124

    aput-object p3, p2, p4

    const p3, 0x2140460d

    .line 11375
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x125

    aput-object p3, p2, p4

    const p3, 0x2140460e

    .line 11376
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x126

    aput-object p3, p2, p4

    const p3, 0x21401d87

    .line 11377
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x127

    aput-object p3, p2, p4

    const p3, 0x21401d88

    .line 11378
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x128

    aput-object p3, p2, p4

    const p3, 0x21401d89

    .line 11379
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x129

    aput-object p3, p2, p4

    const p3, 0x21401d8a

    .line 11380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12a

    aput-object p3, p2, p4

    const p3, 0x21401da7

    .line 11381
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12b

    aput-object p3, p2, p4

    const p3, 0x21401da8

    .line 11382
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12c

    aput-object p3, p2, p4

    const p3, 0x21404801

    .line 11383
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12d

    aput-object p3, p2, p4

    const p3, 0x21404802

    .line 11384
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12e

    aput-object p3, p2, p4

    const p3, 0x21404803

    .line 11385
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12f

    aput-object p3, p2, p4

    const p3, 0x21414804

    .line 11386
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x130

    aput-object p3, p2, p4

    const p3, 0x21404805

    .line 11387
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x131

    aput-object p3, p2, p4

    const p3, 0x21404806

    .line 11388
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x132

    aput-object p3, p2, p4

    const p3, 0x21404807

    .line 11389
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x133

    aput-object p3, p2, p4

    const p3, 0x21401dc1

    .line 11390
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x134

    aput-object p3, p2, p4

    const p3, 0x21401dc2

    .line 11391
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x135

    aput-object p3, p2, p4

    const p3, 0x21401dc3

    .line 11392
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x136

    aput-object p3, p2, p4

    const p3, 0x21401dc4

    .line 11393
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x137

    aput-object p3, p2, p4

    const p3, 0x21401dc5

    .line 11394
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x138

    aput-object p3, p2, p4

    const p3, 0x21401dc6

    .line 11395
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x139

    aput-object p3, p2, p4

    const p3, 0x21401dc7

    .line 11396
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13a

    aput-object p3, p2, p4

    const p3, 0x21401dc8

    .line 11397
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13b

    aput-object p3, p2, p4

    const p3, 0x21401dc9

    .line 11398
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13c

    aput-object p3, p2, p4

    const p3, 0x21401dca

    .line 11399
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13d

    aput-object p3, p2, p4

    const p3, 0x21401dd4

    .line 11400
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13e

    aput-object p3, p2, p4

    const p3, 0x21401dd5

    .line 11401
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13f

    aput-object p3, p2, p4

    const p3, 0x21401dd6

    .line 11402
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x140

    aput-object p3, p2, p4

    const p3, 0x21401dd7

    .line 11403
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x141

    aput-object p3, p2, p4

    const p3, 0x21401dd8

    .line 11404
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x142

    aput-object p3, p2, p4

    const p3, 0x21401dd9

    .line 11405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x143

    aput-object p3, p2, p4

    const p3, 0x21404809

    .line 11406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x144

    aput-object p3, p2, p4

    const p3, 0x21404808

    .line 11407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x145

    aput-object p3, p2, p4

    const p3, 0x21404a01

    .line 11408
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x146

    aput-object p3, p2, p4

    const p3, 0x21404a02

    .line 11409
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x147

    aput-object p3, p2, p4

    const p3, 0x21404a03

    .line 11410
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x148

    aput-object p3, p2, p4

    const p3, 0x21404a04

    .line 11411
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x149

    aput-object p3, p2, p4

    const p3, 0x21404a05

    .line 11412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14a

    aput-object p3, p2, p4

    const p3, 0x21404a06

    .line 11413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14b

    aput-object p3, p2, p4

    const p3, 0x21411ddb

    .line 11414
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14c

    aput-object p3, p2, p4

    const p3, 0x21411ddc

    .line 11415
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14d

    aput-object p3, p2, p4

    const p3, 0x21404c01

    .line 11416
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14e

    aput-object p3, p2, p4

    const p3, 0x21404c02

    .line 11417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14f

    aput-object p3, p2, p4

    const p3, 0x21401de0

    .line 11418
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x150

    aput-object p3, p2, p4

    const p3, 0x21401de1

    .line 11419
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x151

    aput-object p3, p2, p4

    const p3, 0x21401ded

    .line 11420
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x152

    aput-object p3, p2, p4

    const p3, 0x21401df0

    .line 11421
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x153

    aput-object p3, p2, p4

    const p3, 0x21401df5

    .line 11422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x154

    aput-object p3, p2, p4

    const p3, 0x21401df1

    .line 11423
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x155

    aput-object p3, p2, p4

    const p3, 0x21401df2

    .line 11424
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x156

    aput-object p3, p2, p4

    const p3, 0x21401df4

    .line 11425
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x157

    aput-object p3, p2, p4

    const p3, 0x21401df3

    .line 11426
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x158

    aput-object p3, p2, p4

    const p3, 0x21401dee

    .line 11427
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x159

    aput-object p3, p2, p4

    const p3, 0x21401def

    .line 11428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15a

    aput-object p3, p2, p4

    const p3, 0x21401df6

    .line 11429
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15b

    aput-object p3, p2, p4

    const p3, 0x21401df7

    .line 11430
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15c

    aput-object p3, p2, p4

    const p3, 0x21401dfb

    .line 11431
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15d

    aput-object p3, p2, p4

    const p3, 0x21401dfa

    .line 11432
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15e

    aput-object p3, p2, p4

    const p3, 0x21401de3

    .line 11433
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15f

    aput-object p3, p2, p4

    const p3, 0x21401de4

    .line 11434
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x160

    aput-object p3, p2, p4

    const p3, 0x21401de5

    .line 11435
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x161

    aput-object p3, p2, p4

    const p3, 0x21401de6

    .line 11436
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x162

    aput-object p3, p2, p4

    const/16 p4, 0x163

    aput-object p3, p2, p4

    const p3, 0x21401de7

    .line 11438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x164

    aput-object p3, p2, p4

    const p3, 0x21401de8

    .line 11439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x165

    aput-object p3, p2, p4

    const p3, 0x21401de9

    .line 11440
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x166

    aput-object p3, p2, p4

    const p3, 0x21401dea

    .line 11441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x167

    aput-object p3, p2, p4

    const p3, 0x21401deb

    .line 11442
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x168

    aput-object p3, p2, p4

    const p3, 0x21401dec

    .line 11443
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x169

    aput-object p3, p2, p4

    const p3, 0x21405201

    .line 11444
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16a

    aput-object p3, p2, p4

    const p3, 0x21405202

    .line 11445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16b

    aput-object p3, p2, p4

    const p3, 0x21405203

    .line 11446
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16c

    aput-object p3, p2, p4

    const p3, 0x21605204

    .line 11447
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16d

    aput-object p3, p2, p4

    const p3, 0x21605205

    .line 11448
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16e

    aput-object p3, p2, p4

    const p3, 0x21405207

    .line 11449
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16f

    aput-object p3, p2, p4

    const p3, 0x21405206

    .line 11450
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x170

    aput-object p3, p2, p4

    const p3, 0x21405208

    .line 11451
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x171

    aput-object p3, p2, p4

    const p3, 0x21405209

    .line 11452
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x172

    aput-object p3, p2, p4

    const p3, 0x2140520c

    .line 11453
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x173

    aput-object p3, p2, p4

    const p3, 0x2140520d

    .line 11454
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x174

    aput-object p3, p2, p4

    const p3, 0x2140401c

    .line 11455
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x175

    aput-object p3, p2, p4

    const p3, 0x2140520a

    .line 11456
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x176

    aput-object p3, p2, p4

    const p3, 0x2140520b

    .line 11457
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x177

    aput-object p3, p2, p4

    const p3, 0x2140520e

    .line 11458
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x178

    aput-object p3, p2, p4

    const p3, 0x21401df9

    .line 11459
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x179

    aput-object p3, p2, p4

    const p3, 0x21401df8

    .line 11460
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17a

    aput-object p3, p2, p4

    const p3, 0x21405402

    .line 11461
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17b

    aput-object p3, p2, p4

    const p3, 0x21405401

    .line 11462
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17c

    aput-object p3, p2, p4

    const p3, 0x2161520f

    .line 11463
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17d

    aput-object p3, p2, p4

    const p3, 0x21405210

    .line 11464
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17e

    aput-object p3, p2, p4

    const p3, 0x2140540b

    .line 11465
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17f

    aput-object p3, p2, p4

    const p3, 0x2140540c

    .line 11466
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x180

    aput-object p3, p2, p4

    const p3, 0x2140540d

    .line 11467
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x181

    aput-object p3, p2, p4

    const p3, 0x2140540e

    .line 11468
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x182

    aput-object p3, p2, p4

    const p3, 0x2140540f

    .line 11469
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x183

    aput-object p3, p2, p4

    const p3, 0x21405410

    .line 11470
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x184

    aput-object p3, p2, p4

    const p3, 0x21405411

    .line 11471
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x185

    aput-object p3, p2, p4

    const p3, 0x21405412

    .line 11472
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x186

    aput-object p3, p2, p4

    const p3, 0x21405413

    .line 11473
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x187

    aput-object p3, p2, p4

    const p3, 0x21405414

    .line 11474
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x188

    aput-object p3, p2, p4

    const p3, 0x21401c83

    .line 11475
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x189

    aput-object p3, p2, p4

    const p3, 0x21405415

    .line 11476
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18a

    aput-object p3, p2, p4

    const p3, 0x2140541a

    .line 11477
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18b

    aput-object p3, p2, p4

    const p3, 0x21405419

    .line 11478
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18c

    aput-object p3, p2, p4

    const p3, 0x2140541b

    .line 11479
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18d

    aput-object p3, p2, p4

    const p3, 0x2140541c

    .line 11480
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18e

    aput-object p3, p2, p4

    const p3, 0x2140541d

    .line 11481
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18f

    aput-object p3, p2, p4

    const p3, 0x2140541e

    .line 11482
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x190

    aput-object p3, p2, p4

    const p3, 0x2140541f

    .line 11483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x191

    aput-object p3, p2, p4

    const p3, 0x21405425

    .line 11484
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x192

    aput-object p3, p2, p4

    const p3, 0x21405426

    .line 11485
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x193

    aput-object p3, p2, p4

    const p3, 0x21405427

    .line 11486
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x194

    aput-object p3, p2, p4

    const p3, 0x21405421

    .line 11487
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x195

    aput-object p3, p2, p4

    const p3, 0x21405422

    .line 11488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x196

    aput-object p3, p2, p4

    const p3, 0x21405423

    .line 11489
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x197

    aput-object p3, p2, p4

    const p3, 0x21405424

    .line 11490
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x198

    aput-object p3, p2, p4

    const p3, 0x21105428

    .line 11491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x199

    aput-object p3, p2, p4

    const p3, 0x21405429

    .line 11492
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19a

    aput-object p3, p2, p4

    const p3, 0x2140542a

    .line 11493
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19b

    aput-object p3, p2, p4

    const p3, 0x2140542b

    .line 11494
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19c

    aput-object p3, p2, p4

    const p3, 0x2140542c

    .line 11495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19d

    aput-object p3, p2, p4

    const p3, 0x2140542d

    .line 11496
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19e

    aput-object p3, p2, p4

    const p3, 0x2140542e

    .line 11497
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19f

    aput-object p3, p2, p4

    const p3, 0x21402238

    .line 11498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a0

    aput-object p3, p2, p4

    const p3, 0x21402239

    .line 11499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a1

    aput-object p3, p2, p4

    const p3, 0x21405436

    .line 11500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a2

    aput-object p3, p2, p4

    const p3, 0x21405438

    .line 11501
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a3

    aput-object p3, p2, p4

    const p3, 0x21405439

    .line 11502
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a4

    aput-object p3, p2, p4

    const p3, 0x2140543a

    .line 11503
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a5

    aput-object p3, p2, p4

    const p3, 0x2140543b

    .line 11504
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a6

    aput-object p3, p2, p4

    const p3, 0x2140543c

    .line 11505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a7

    aput-object p3, p2, p4

    const p3, 0x21405437

    .line 11506
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a8

    aput-object p3, p2, p4

    const p3, 0x2140543d

    .line 11507
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a9

    aput-object p3, p2, p4

    const p3, 0x2140543e

    .line 11508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1aa

    aput-object p3, p2, p4

    const p3, 0x21403e07

    .line 11509
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ab

    aput-object p3, p2, p4

    const p3, 0x2140aa01

    .line 11510
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ac

    aput-object p3, p2, p4

    const p3, 0x2140aa02

    .line 11511
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ad

    aput-object p3, p2, p4

    const p3, 0x2140aa03

    .line 11512
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ae

    aput-object p3, p2, p4

    const p3, 0x2140aa04

    .line 11513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1af

    aput-object p3, p2, p4

    const p3, 0x2140aa05

    .line 11514
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b0

    aput-object p3, p2, p4

    const p3, 0x2140aa06

    .line 11515
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b1

    aput-object p3, p2, p4

    const p3, 0x2140aa07

    .line 11516
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b2

    aput-object p3, p2, p4

    const p3, 0x2140aa08

    .line 11517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b3

    aput-object p3, p2, p4

    const p3, 0x2140aa09

    .line 11518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b4

    aput-object p3, p2, p4

    const p3, 0x2140aa0a

    .line 11519
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b5

    aput-object p3, p2, p4

    const p3, 0x2140aa0b

    .line 11520
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b6

    aput-object p3, p2, p4

    const p3, 0x2140aa0c

    .line 11521
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b7

    aput-object p3, p2, p4

    const p3, 0x2140aa0d

    .line 11522
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b8

    aput-object p3, p2, p4

    const p3, 0x2140aa0e

    .line 11523
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b9

    aput-object p3, p2, p4

    const p3, 0x2140aa0f

    .line 11524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ba

    aput-object p3, p2, p4

    const p3, 0x2140aa10

    .line 11525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1bb

    aput-object p3, p2, p4

    const p3, 0x2140aa11

    .line 11526
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1bc

    aput-object p3, p2, p4

    const p3, 0x2140aa12

    .line 11527
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1bd

    aput-object p3, p2, p4

    const p3, 0x2140aa13

    .line 11528
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1be

    aput-object p3, p2, p4

    const p3, 0x2140aa14

    .line 11529
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1bf

    aput-object p3, p2, p4

    const p3, 0x2140aa15

    .line 11530
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c0

    aput-object p3, p2, p4

    const p3, 0x2140aa16

    .line 11531
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c1

    aput-object p3, p2, p4

    const p3, 0x2140aa17

    .line 11532
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c2

    aput-object p3, p2, p4

    const p3, 0x21409286

    .line 11533
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c3

    aput-object p3, p2, p4

    const p3, 0x21409283

    .line 11534
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c4

    aput-object p3, p2, p4

    const p3, 0x21409284

    .line 11535
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c5

    aput-object p3, p2, p4

    const p3, 0x21409285

    .line 11536
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c6

    aput-object p3, p2, p4

    const p3, 0x2140927f

    .line 11537
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c7

    aput-object p3, p2, p4

    const p3, 0x214092fe

    .line 11538
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c8

    aput-object p3, p2, p4

    const p3, 0x21405442

    .line 11539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c9

    aput-object p3, p2, p4

    const p3, 0x21405443

    .line 11540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ca

    aput-object p3, p2, p4

    const p3, 0x21405444

    .line 11541
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1cb

    aput-object p3, p2, p4

    const p3, 0x21405445

    .line 11542
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1cc

    aput-object p3, p2, p4

    const p3, 0x21405446

    .line 11543
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1cd

    aput-object p3, p2, p4

    const p3, 0x21405447

    .line 11544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ce

    aput-object p3, p2, p4

    const p3, 0x21405448

    .line 11545
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1cf

    aput-object p3, p2, p4

    const p3, 0x2140aa18

    .line 11546
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d0

    aput-object p3, p2, p4

    const p3, 0x2140aa19

    .line 11547
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d1

    aput-object p3, p2, p4

    const p3, 0x2140aa1a

    .line 11548
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d2

    aput-object p3, p2, p4

    const p3, 0x2140544b

    .line 11549
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d3

    aput-object p3, p2, p4

    const p3, 0x21405457

    .line 11550
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d4

    aput-object p3, p2, p4

    const p3, 0x21405458

    .line 11551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d5

    aput-object p3, p2, p4

    const p3, 0x21405459

    .line 11552
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d6

    aput-object p3, p2, p4

    const p3, 0x2140545a

    .line 11553
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d7

    aput-object p3, p2, p4

    const p3, 0x2140545b

    .line 11554
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d8

    aput-object p3, p2, p4

    const p3, 0x2140545c

    .line 11555
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d9

    aput-object p3, p2, p4

    const p3, 0x2140545d

    .line 11556
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1da

    aput-object p3, p2, p4

    const p3, 0x2140545e

    .line 11557
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1db

    aput-object p3, p2, p4

    const p3, 0x21405460

    .line 11558
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1dc

    aput-object p3, p2, p4

    const p3, 0x21405461

    .line 11559
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1dd

    aput-object p3, p2, p4

    const p3, 0x21405462

    .line 11560
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1de

    aput-object p3, p2, p4

    const p3, 0x21405463

    .line 11561
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1df

    aput-object p3, p2, p4

    const p3, 0x21405464

    .line 11562
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e0

    aput-object p3, p2, p4

    const p3, 0x21405469

    .line 11563
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e1

    aput-object p3, p2, p4

    const p3, 0x2140546a

    .line 11564
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e2

    aput-object p3, p2, p4

    const p3, 0x2140546b

    .line 11565
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e3

    aput-object p3, p2, p4

    const p3, 0x2140546c

    .line 11566
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e4

    aput-object p3, p2, p4

    const p3, 0x2140546d

    .line 11567
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e5

    aput-object p3, p2, p4

    const p3, 0x2140546e

    .line 11568
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e6

    aput-object p3, p2, p4

    const p3, 0x2140546f

    .line 11569
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e7

    aput-object p3, p2, p4

    const p3, 0x21405470

    .line 11570
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e8

    aput-object p3, p2, p4

    const p3, 0x21405471

    .line 11571
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e9

    aput-object p3, p2, p4

    const p3, 0x21405472

    .line 11572
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ea

    aput-object p3, p2, p4

    const p3, 0x21405473

    .line 11573
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1eb

    aput-object p3, p2, p4

    const p3, 0x21405474

    .line 11574
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ec

    aput-object p3, p2, p4

    const p3, 0x21405475

    .line 11575
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ed

    aput-object p3, p2, p4

    const p3, 0x21405476

    .line 11576
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ee

    aput-object p3, p2, p4

    const p3, 0x21405477

    .line 11577
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ef

    aput-object p3, p2, p4

    const p3, 0x21405478

    .line 11578
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f0

    aput-object p3, p2, p4

    const p3, 0x21405479

    .line 11579
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f1

    aput-object p3, p2, p4

    const p3, 0x2140547a

    .line 11580
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f2

    aput-object p3, p2, p4

    const p3, 0x2140547b

    .line 11581
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f3

    aput-object p3, p2, p4

    const p3, 0x2140547c

    .line 11582
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f4

    aput-object p3, p2, p4

    const p3, 0x2140547d

    .line 11583
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f5

    aput-object p3, p2, p4

    const p3, 0x2140547e

    .line 11584
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f6

    aput-object p3, p2, p4

    const p3, 0x2140547f

    .line 11585
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f7

    aput-object p3, p2, p4

    const p3, 0x21405480

    .line 11586
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f8

    aput-object p3, p2, p4

    const p3, 0x21405481

    .line 11587
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f9

    aput-object p3, p2, p4

    const p3, 0x21405482

    .line 11588
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1fa

    aput-object p3, p2, p4

    const p3, 0x21405483

    .line 11589
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1fb

    aput-object p3, p2, p4

    const p3, 0x21405484

    .line 11590
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1fc

    aput-object p3, p2, p4

    const p3, 0x21405485

    .line 11591
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1fd

    aput-object p3, p2, p4

    const p3, 0x21405486

    .line 11592
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1fe

    aput-object p3, p2, p4

    const p3, 0x21405487

    .line 11593
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1ff

    aput-object p3, p2, p4

    const p3, 0x21405488

    .line 11594
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x200

    aput-object p3, p2, p4

    const p3, 0x21405489

    .line 11595
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x201

    aput-object p3, p2, p4

    const p3, 0x2140548a

    .line 11596
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x202

    aput-object p3, p2, p4

    const p3, 0x2140548b

    .line 11597
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x203

    aput-object p3, p2, p4

    const p3, 0x2140548c

    .line 11598
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x204

    aput-object p3, p2, p4

    const p3, 0x2140548d

    .line 11599
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x205

    aput-object p3, p2, p4

    const p3, 0x2140548e

    .line 11600
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x206

    aput-object p3, p2, p4

    const p3, 0x2140548f

    .line 11601
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x207

    aput-object p3, p2, p4

    const p3, 0x21405490

    .line 11602
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x208

    aput-object p3, p2, p4

    const p3, 0x21405465

    .line 11603
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x209

    aput-object p3, p2, p4

    const p3, 0x21405466

    .line 11604
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20a

    aput-object p3, p2, p4

    const p3, 0x21405467

    .line 11605
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20b

    aput-object p3, p2, p4

    const p3, 0x21405468

    .line 11606
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20c

    aput-object p3, p2, p4

    const p3, 0x21405491

    .line 11607
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20d

    aput-object p3, p2, p4

    const p3, 0x21405492

    .line 11608
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20e

    aput-object p3, p2, p4

    const p3, 0x21405493

    .line 11609
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20f

    aput-object p3, p2, p4

    const p3, 0x21405494

    .line 11610
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x210

    aput-object p3, p2, p4

    const p3, 0x21405495

    .line 11611
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x211

    aput-object p3, p2, p4

    const p3, 0x21405496

    .line 11612
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x212

    aput-object p3, p2, p4

    const p3, 0x21415497

    .line 11613
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x213

    aput-object p3, p2, p4

    const p3, 0x21415498

    .line 11614
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x214

    aput-object p3, p2, p4

    const p3, 0x21415499

    .line 11615
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x215

    aput-object p3, p2, p4

    const p3, 0x2140549a

    .line 11616
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x216

    aput-object p3, p2, p4

    const p3, 0x2140549b

    .line 11617
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x217

    aput-object p3, p2, p4

    const p3, 0x2140549c

    .line 11618
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x218

    aput-object p3, p2, p4

    const p3, 0x2140549d

    .line 11619
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x219

    aput-object p3, p2, p4

    const p3, 0x2140549e

    .line 11620
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21a

    aput-object p3, p2, p4

    const p3, 0x2140549f

    .line 11621
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21b

    aput-object p3, p2, p4

    const p3, 0x214054a0

    .line 11622
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21c

    aput-object p3, p2, p4

    const p3, 0x214054a1

    .line 11623
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21d

    aput-object p3, p2, p4

    const p3, 0x214054a2

    .line 11624
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21e

    aput-object p3, p2, p4

    const p3, 0x214054a3

    .line 11625
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21f

    aput-object p3, p2, p4

    const p3, 0x214054a6

    .line 11626
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x220

    aput-object p3, p2, p4

    const p3, 0x214054a7

    .line 11627
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x221

    aput-object p3, p2, p4

    const p3, 0x214054a8

    .line 11628
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x222

    aput-object p3, p2, p4

    const p3, 0x214054a9

    .line 11629
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x223

    aput-object p3, p2, p4

    const p3, 0x214054b2

    .line 11630
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x224

    aput-object p3, p2, p4

    const p3, 0x214054b3

    .line 11631
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x225

    aput-object p3, p2, p4

    const p3, 0x214054b6

    .line 11632
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x226

    aput-object p3, p2, p4

    const p3, 0x214054b7

    .line 11633
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x227

    aput-object p3, p2, p4

    const p3, 0x214054b8

    .line 11634
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x228

    aput-object p3, p2, p4

    const p3, 0x214054b9

    .line 11635
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x229

    aput-object p3, p2, p4

    const p3, 0x214054ba

    .line 11636
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22a

    aput-object p3, p2, p4

    const p3, 0x214054bb

    .line 11637
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22b

    aput-object p3, p2, p4

    const p3, 0x214054bc

    .line 11638
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22c

    aput-object p3, p2, p4

    const p3, 0x214054bd

    .line 11639
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22d

    aput-object p3, p2, p4

    const p3, 0x214054be

    .line 11640
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22e

    aput-object p3, p2, p4

    const p3, 0x214054bf

    .line 11641
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22f

    aput-object p3, p2, p4

    const p3, 0x214054c0

    .line 11642
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x230

    aput-object p3, p2, p4

    const p3, 0x214054c1

    .line 11643
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x231

    aput-object p3, p2, p4

    const p3, 0x214054c2

    .line 11644
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x232

    aput-object p3, p2, p4

    const p3, 0x214054c5

    .line 11645
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x233

    aput-object p3, p2, p4

    const p3, 0x21401dfe

    .line 11646
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x234

    aput-object p3, p2, p4

    const p3, 0x21411dff

    .line 11647
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x235

    aput-object p3, p2, p4

    const p3, 0x2140401f

    .line 11648
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x236

    aput-object p3, p2, p4

    const p3, 0x214054c6

    .line 11649
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x237

    aput-object p3, p2, p4

    const p3, 0x214054c9

    .line 11650
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x238

    aput-object p3, p2, p4

    const p3, 0x214054b0

    .line 11651
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x239

    aput-object p3, p2, p4

    const p3, 0x214154ca

    .line 11652
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23a

    aput-object p3, p2, p4

    const p3, 0x216154cb

    .line 11653
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23b

    aput-object p3, p2, p4

    .line 11082
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mBcmPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method private getChairDirection()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12345
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChairDirection()[I

    move-result-object v0

    return-object v0
.end method

.method private getChairLocationValue()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12353
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChairLocationValue()[I

    move-result-object v0

    return-object v0
.end method

.method private getDriverSeatStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private getOled()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_bcm"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setChairPositionEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12369
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChairPositionEnd()V

    return-void
.end method

.method private setChairPositionStart(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12361
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChairPositionStart(III)V

    return-void
.end method

.method private setChairSlowlyAhead(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12313
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChairSlowlyAhead(I)V

    return-void
.end method

.method private setChairSlowlyBack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12325
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChairSlowlyBack(I)V

    return-void
.end method

.method private setChairSlowlyEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12337
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChairSlowlyEnd(I)V

    return-void
.end method

.method private setCopilotWindowAuto(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private setDriverWindowAuto(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private setFactoryOledData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12866
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFactoryOledData([B)V

    return-void
.end method

.method private setFactoryOledDisplayMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12875
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFactoryOledDisplayMode(I)V

    return-void
.end method

.method private setOled(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private setWheelDefinedButton(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public getARSFaultState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19053
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsFaultState()I

    move-result v0

    return v0
.end method

.method public getARSInitState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19022
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsInitState()I

    move-result v0

    return v0
.end method

.method public getARSPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18988
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsPosition()I

    move-result v0

    return v0
.end method

.method public getARSWorkingMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18932
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsWorkingMode()I

    move-result v0

    return v0
.end method

.method public getARSWorkingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18970
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsWorkingState()I

    move-result v0

    return v0
.end method

.method public getASFaultWarning()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140401c

    const/4 v1, 0x0

    .line 16368
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 16370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getAcChildLock()I
    .locals 2

    const v0, 0x21405421

    const/4 v1, 0x0

    .line 21701
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getActualAsHeightLvlConfigValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16306
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmActualAsHeightLvlConfigValue()I

    move-result v0

    return v0
.end method

.method public getAllHandlePos()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411dff

    const/4 v1, 0x0

    .line 25015
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntVectorProperty(II)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 25017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllHandlePos throw Exception e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllWeatherLightOutputStatus()I
    .locals 4

    const v0, 0x2140542b

    const/4 v1, 0x0

    .line 21884
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getAllWeatherLightOutputStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getAllWeatherLightSwitchStatus()I
    .locals 4

    const v0, 0x2140542a

    const/4 v1, 0x0

    .line 21865
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getAllWeatherLightSwitchStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getAllWindowsActionFeedbackStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19139
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAllWindowsActionFeedbackStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getAlsInitializationStudyAndErrorState()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14475
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAlsInitializationStudyAndErrorState()[I

    move-result-object v0

    return-object v0
.end method

.method public getAlsInitializationStudyState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14450
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAlsInitializationStudyState()I

    move-result v0

    return v0
.end method

.method public getAlsStudyInitializationState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14433
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAlsInitializationStudyState()I

    move-result v0

    return v0
.end method

.method public getArsAntiPinchSt()I
    .locals 4

    const v0, 0x21404408

    const/4 v1, 0x0

    .line 20646
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 20648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArsAntiPinchSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getArsStallSt()I
    .locals 4

    const v0, 0x21404409

    const/4 v1, 0x0

    .line 20668
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 20670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArsAntiPinchSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getArsVehLockAutoFoldSwitchStatus()I
    .locals 3

    .line 20624
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getArsVehLockAutoFoldSwitchStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20626
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArsVehLockAutoFoldSwitchStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAsAcceleratedSpeed()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18326
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsAcceleratedSpeed()[F

    move-result-object v0

    return-object v0
.end method

.method public getAsAutoLevelingResult()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17683
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsAutoLevelingResult()I

    move-result v0

    return v0
.end method

.method public getAsAutoLevelingResultValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18487
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsAutoLevelingResultValue()I

    move-result v0

    return v0
.end method

.method public getAsCampingModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17752
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsCampingModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAsDrivingMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17933
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsDrivingMode()I

    move-result v0

    return v0
.end method

.method public getAsEspPataRequestStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17987
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsEspPataRequestStatus()I

    move-result v0

    return v0
.end method

.method public getAsHeightChangingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18029
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsHeightChangingStatus()I

    move-result v0

    return v0
.end method

.method public getAsHoistModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17769
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHoistModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAsLeopardModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18365
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsLeopardModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAsLockModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17893
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsLockModeStatus()I

    move-result v0

    return v0
.end method

.method public getAsModeAllowedCampingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18046
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsModeAllowedCampingStatus()I

    move-result v0

    return v0
.end method

.method public getAsRedLampRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17805
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsRedLampRequest()I

    move-result v0

    return v0
.end method

.method public getAsTargetHeight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18011
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsTargetHeight()I

    move-result v0

    return v0
.end method

.method public getAsWelcomeModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17970
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsWelcomeModeStatus()I

    move-result v0

    return v0
.end method

.method public getAsWheelPositionHeightAll()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18311
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsWheelPositionHeightAll()[I

    move-result-object v0

    return-object v0
.end method

.method public getAsYellowLampRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17788
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAsYellowLampRequest()I

    move-result v0

    return v0
.end method

.method public getAtwsState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11995
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAtwsState()I

    move-result v0

    return v0
.end method

.method public getAutoLightState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14847
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAutoLightState()I

    move-result v0

    return v0
.end method

.method public getAutoWindowLockSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14070
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAutoWindowLockSw()I

    move-result v0

    return v0
.end method

.method public getBCMLTurnLamp_SwSt()I
    .locals 2

    const v0, 0x21401dee

    const/4 v1, 0x0

    .line 20879
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBCMRTurnLamp_SwSt()I
    .locals 2

    const v0, 0x21401def

    const/4 v1, 0x0

    .line 20894
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBcmBackDefrostMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12560
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmBackDefrostMode()I

    move-result v0

    return v0
.end method

.method public getBcmBackMirrorHeatMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12592
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmBackMirrorHeatMode()I

    move-result v0

    return v0
.end method

.method public getBcmCpdAlarmHazardLight()I
    .locals 2

    const v0, 0x21401df5

    const/4 v1, 0x0

    .line 20786
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBcmDoorLockEvent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20424
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDoorLockEvent()I

    move-result v0

    return v0
.end method

.method public getBcmPassengerSeatBeltSbrWarningSatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14908
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPassengerSeatBeltSbrWarningStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getBcmPassengerSeatBeltSbrWarningStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14923
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPassengerSeatBeltSbrWarningStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getBcmPowerMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13829
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPowerMode()I

    move-result v0

    return v0
.end method

.method public getBcmPowerOffSource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20408
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPowerOffSource()I

    move-result v0

    return v0
.end method

.method public getBcmPsnSeatHeatLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13866
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPsnSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method public getBcmSeatBlowLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12668
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSeatBlowLevel()I

    move-result v0

    return v0
.end method

.method public getBcmSeatHeatErrStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14889
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSeatHeatErrStatus()I

    move-result v0

    return v0
.end method

.method public getBcmSeatHeatLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12630
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSeatHeatLevel()I

    move-result v0

    return v0
.end method

.method public getBonnetStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12969
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmBonnetStatus()I

    move-result v0

    return v0
.end method

.method public getBreakPedalStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15566
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmBreakPedalStatus()I

    move-result v0

    return v0
.end method

.method public getCFChildLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19716
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFChildLockState()I

    move-result v0

    return v0
.end method

.method public getCFKeepTempRemainTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19790
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFKeepTempRemainTime()I

    move-result v0

    return v0
.end method

.method public getCFKeepTempState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19748
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFKeepTempState()I

    move-result v0

    return v0
.end method

.method public getCFKeepTempTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19776
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFKeepTempTime()I

    move-result v0

    return v0
.end method

.method public getCFKeepTempWorkState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19824
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFKeepTempWorkState()I

    move-result v0

    return v0
.end method

.method public getCFPowerState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19543
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFPowerState()I

    move-result v0

    return v0
.end method

.method public getCFTempValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19647
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFTempValue()I

    move-result v0

    return v0
.end method

.method public getCFWorkMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19684
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCFWorkMode()I

    move-result v0

    return v0
.end method

.method public getCHMIGndClearance()[I
    .locals 2

    const v0, 0x214154ca

    const/4 v1, 0x0

    .line 25168
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getCHMIVehPitchAngle()[F
    .locals 2

    const v0, 0x216154cb

    const/4 v1, 0x0

    .line 25186
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatVectorProperty(II)[F

    move-result-object v0

    return-object v0
.end method

.method public getCMSAllExteriorMirrorsPositions()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14264
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLRCMSAllExteriorMirrorsPositions()[F

    move-result-object v0

    return-object v0
.end method

.method public getCMSAutoBrightSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18583
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSAutoBrightSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSBrightWithSource()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18634
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSBrightWithSource()[I

    move-result-object v0

    return-object v0
.end method

.method public getCMSDanObjectRecSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18730
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSDanObjectRecSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSHighSpeedViewSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18666
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSHighSpeedViewSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSLowSpeedViewSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18698
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSLowSpeedViewSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSReverseAssitSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18762
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSReverseAssitSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSTurnExtSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18794
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSTurnExtSwSt()I

    move-result v0

    return v0
.end method

.method public getCMSViewAngle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18860
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLRCMSViewAngle()I

    move-result v0

    return v0
.end method

.method public getCMSViewRecoverySt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18826
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLCMSViewRecoverySt()I

    move-result v0

    return v0
.end method

.method public getCampingMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c6

    const/4 v1, 0x0

    .line 25074
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCarFridgeDoorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19575
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCarFridgeDoorState()I

    move-result v0

    return v0
.end method

.method public getCarTopDoorSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140460f

    const/4 v1, 0x0

    .line 19591
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCarpetLightWelcomeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19905
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCarpetLightWelcomeState()I

    move-result v0

    return v0
.end method

.method public getCfLeftRemindSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140460e

    const/4 v1, 0x0

    .line 19873
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCfSterModeSw()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140460d

    const/4 v1, 0x0

    .line 19840
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getChairWelcomeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12385
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmChairWelcomeMode()I

    move-result v0

    return v0
.end method

.method public getChargeGunLockSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13962
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmChargeGunLockSt()I

    move-result v0

    return v0
.end method

.method public getChargePortStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13775
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmChargePortStatus(I)I

    move-result p1

    return p1
.end method

.method public getChargePortSyncStatus()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21105428

    const/4 v1, 0x0

    .line 21787
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildLockCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13192
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmChildLockCfg()I

    move-result v0

    return v0
.end method

.method public getChildLockSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214092fe

    const/4 v1, 0x0

    .line 22833
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getColumnHorizonalPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17536
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmColumnHorizonalPosition()I

    move-result v0

    return v0
.end method

.method public getColumnTravelAdjEnableSt()I
    .locals 2

    const v0, 0x21401df9

    const/4 v1, 0x0

    .line 20926
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getColumnVerticalPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17485
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmColumnVerticalPosition()I

    move-result v0

    return v0
.end method

.method public getCoverPlateStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18111
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmCoverPlateStatus()I

    move-result v0

    return v0
.end method

.method public getCwcChargeErrorSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14017
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCwcChargeErrorSt()I

    move-result v0

    return v0
.end method

.method public getCwcChargeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13979
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCwcChargeSt()I

    move-result v0

    return v0
.end method

.method public getCwcSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15736
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmCwcSwitchState()I

    move-result v0

    return v0
.end method

.method public getDayLightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13035
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDayLightMode()I

    move-result v0

    return v0
.end method

.method public getDaytimeRunningLightsOutputStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15673
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDaytimeRunningLightsOutputStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getDlpWelcomeVideoTypeFeedBack()I
    .locals 4

    const v0, 0x214054b0

    const/4 v1, 0x0

    .line 25147
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontLogoLightStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getDomeLightBrightLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16889
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDomeLightBrightLevel()I

    move-result v0

    return v0
.end method

.method public getDomeLightCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13069
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDomeLightCfg()I

    move-result v0

    return v0
.end method

.method public getDomeLightModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16847
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDomeLightModeStatus()I

    move-result v0

    return v0
.end method

.method public getDoorLockPressTimeCfg()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b7

    const/4 v1, 0x0

    .line 24582
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDoorLockRequestSource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14702
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDoorLockRequestSource()I

    move-result v0

    return v0
.end method

.method public getDoorLockSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140927f

    const/4 v1, 0x0

    .line 22681
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDoorLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12283
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDoorLockState()I

    move-result v0

    return v0
.end method

.method public getDoorUnlockRequestSource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14669
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDoorUnlockRequestSource()I

    move-result v0

    return v0
.end method

.method public getDoorsState()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12528
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDoorsState()[I

    move-result-object v0

    return-object v0
.end method

.method public getDriveAutoLock()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12153
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmDrvAutoLockEnabled()I

    move-result v0

    return v0
.end method

.method public getDriverBeltWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13914
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmDriverBeltWarning()I

    move-result v0

    return v0
.end method

.method public getDriverDoorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12858
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverDoorState()I

    move-result v0

    return v0
.end method

.method public getDriverOnSeat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13672
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmDriverOnSeat()I

    move-result v0

    return v0
.end method

.method public getESSWorkMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545d

    const/4 v1, 0x0

    .line 23107
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEasyLoadingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16420
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmEasyLoadingState()I

    move-result v0

    return v0
.end method

.method public getElectricSeatBelt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12433
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmElectricSeatBeltEnabled()I

    move-result v0

    return v0
.end method

.method public getEmergencyBrakeWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11897
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmEmergencyBrakeWarningEnabled()I

    move-result v0

    return v0
.end method

.method public getEngineeringModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17402
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmEngineeringModeStatus()I

    move-result v0

    return v0
.end method

.method public getEnvironmentMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15690
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmEnvironmentMode()I

    move-result v0

    return v0
.end method

.method public getEtcActiveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20472
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEtcActiveState()I

    move-result v0

    return v0
.end method

.method public getEtcDismantleState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20489
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEtcDismantleState()I

    move-result v0

    return v0
.end method

.method public getEtcSelfCheckState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20507
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEtcSelfCheckState()I

    move-result v0

    return v0
.end method

.method public getEtcSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20456
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEtcSwitchState()I

    move-result v0

    return v0
.end method

.method public getEtcTollStationState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20524
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEtcTollStationState()I

    move-result v0

    return v0
.end method

.method public getExtMirrorFunctionKNobStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140544b

    const/4 v1, 0x0

    .line 22884
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFLSeatClimateSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409283

    const/4 v1, 0x0

    .line 22633
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFRCwcChargeErrorSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14038
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFRCwcChargeErrorSt()I

    move-result v0

    return v0
.end method

.method public getFRCwcChargeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13996
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFRCwcChargeSt()I

    move-result v0

    return v0
.end method

.method public getFRCwcSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15768
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFRCwcSwitchState()I

    move-result v0

    return v0
.end method

.method public getFRSeatClimateSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409284

    const/4 v1, 0x0

    .line 22649
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFWiperAutoSw()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405448

    const/4 v1, 0x0

    .line 22865
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFWiperMotorErr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18061
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFWiperMotorErr()I

    move-result v0

    return v0
.end method

.method public getFarLampState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11785
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFarLampState()I

    move-result v0

    return v0
.end method

.method public getFldmWinPstState()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12800
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontLeftWinPos()F

    move-result v0

    return v0
.end method

.method public getFollowMeHomeCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12121
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFollowMeHomeCfg()I

    move-result v0

    return v0
.end method

.method public getFollowMeTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13003
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFollowMeTime()I

    move-result v0

    return v0
.end method

.method public getFootKickSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17119
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFootKickSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getForcePowerOffEnableSt()I
    .locals 2

    const v0, 0x2140540c

    const/4 v1, 0x0

    .line 21353
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrdmWinPstState()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12814
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontRightWinPos()F

    move-result v0

    return v0
.end method

.method public getFrontLeftAndRightParkingLightGroup1Status()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20557
    fill-array-data v0, :array_0

    .line 20559
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontLeftAndRightParkingLightGroup1Status()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 20561
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrontLeftAndRightParkingLightGroup1Status throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarBcmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getFrontLeftAndRightParkingLightGroup2Status()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20580
    fill-array-data v0, :array_0

    .line 20582
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontLeftAndRightParkingLightGroup2Status()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 20584
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrontLeftAndRightParkingLightGroup2Status throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarBcmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getFrontLeftDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16922
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontLeftDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getFrontLogoLightStatus()I
    .locals 4

    const v0, 0x214054c5

    const/4 v1, 0x0

    .line 24972
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontLogoLightStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getFrontMirrorHeatSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16517
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontMirrorHeatSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getFrontRightDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16955
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontRightDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getFrontScAntiPinchStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b3

    const/4 v1, 0x0

    .line 24552
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontScThermalProtectStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b2

    const/4 v1, 0x0

    .line 24534
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontShadeControllerInitializationSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a9

    const/4 v1, 0x0

    .line 24514
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontShadeControllerMotorStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a8

    const/4 v1, 0x0

    .line 24480
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontShadeControllerPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a7

    const/4 v1, 0x0

    .line 24459
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontWiperActiveStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19120
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontWiperActiveStatus()I

    move-result v0

    return v0
.end method

.method public getFrontWiperBlockStatus()I
    .locals 4

    const v0, 0x21405436

    const/4 v1, 0x0

    .line 22042
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontWiperBlockStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getFrontWiperIntSensitivity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c1

    const/4 v1, 0x0

    .line 24916
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontWiperIntSensitivityMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c2

    const/4 v1, 0x0

    .line 24954
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrontWiperLinErrStatus()I
    .locals 4

    const v0, 0x21405438

    const/4 v1, 0x0

    .line 22062
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontWiperLinErrStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getFrontWiperOverloadProtectStatus()I
    .locals 4

    const v0, 0x2140543a

    const/4 v1, 0x0

    .line 22102
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontWiperOverloadProtectStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getFrontWiperThermProtectStatus()I
    .locals 4

    const v0, 0x21405439

    const/4 v1, 0x0

    .line 22082
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFrontWiperThermProtectStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getFuelPortStatus()I
    .locals 4

    const v0, 0x2140543d

    const/4 v1, 0x0

    .line 22165
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getFuelPortStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getGloveBoxThemoProtectStatus()I
    .locals 2

    const v0, 0x2140541b

    const/4 v1, 0x0

    .line 21472
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getGloveBoxUnlockEvent()I
    .locals 2

    const v0, 0x2140540d

    const/4 v1, 0x0

    .line 21381
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getGroupLedBrigntness()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18267
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmGroupLedBrigntness()[I

    move-result-object v0

    return-object v0
.end method

.method public getGroupLedColor()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18185
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmGroupLedColor()[I

    move-result-object v0

    return-object v0
.end method

.method public getGroupLedControlStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18153
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmGroupLedControlStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getGroupLedTemperature()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18235
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmGroupLedTemperature()[I

    move-result-object v0

    return-object v0
.end method

.method public getHandleAutoState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16388
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHandleAutoState()I

    move-result v0

    return v0
.end method

.method public getHazardLight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401c35

    const/4 v1, 0x0

    .line 12217
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHeadLampCtrlLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17211
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHeadLampCtrlLevel()I

    move-result v0

    return v0
.end method

.method public getHeadLampGroup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11769
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmFrontLampMode()I

    move-result v0

    return v0
.end method

.method public getHeadLampLevelingCtrlMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17190
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHeadLampLevelingCtrlMode()I

    move-result v0

    return v0
.end method

.method public getHeadLampLevelingReqValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17174
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHeadLampLevelingReqValue()I

    move-result v0

    return v0
.end method

.method public getHeightLvlConfigValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16264
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmHeightLvlConfigValue()I

    move-result v0

    return v0
.end method

.method public getHudBrightnesValue()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x21405415

    const/4 v1, 0x0

    .line 21397
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 21399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIMMActionScriptID()I
    .locals 2

    const v0, 0x2140520e

    const/4 v1, 0x0

    .line 21229
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMCoord()[F
    .locals 3

    const v0, 0x2161520f

    const/4 v1, 0x0

    .line 21009
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatVectorProperty(II)[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 21011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw Exception e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 21012
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getIMMCoordY()F
    .locals 2

    const v0, 0x21605204

    const/4 v1, 0x0

    .line 21040
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getIMMCoordZ()F
    .locals 2

    const v0, 0x21605205

    const/4 v1, 0x0

    .line 21066
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getIMMMainState()I
    .locals 2

    const v0, 0x21405201

    const/4 v1, 0x0

    .line 20945
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMMovingSpeed()I
    .locals 2

    const v0, 0x21405208

    const/4 v1, 0x0

    .line 21152
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMMovingState()I
    .locals 2

    const v0, 0x21405203

    const/4 v1, 0x0

    .line 20977
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMSpecialMode()I
    .locals 2

    const v0, 0x21405210

    const/4 v1, 0x0

    .line 21297
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMSubState()I
    .locals 2

    const v0, 0x21405202

    const/4 v1, 0x0

    .line 20962
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMTouchMode()I
    .locals 2

    const v0, 0x21405207

    const/4 v1, 0x0

    .line 21100
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIMMTouchVib()I
    .locals 2

    const v0, 0x21405206

    const/4 v1, 0x0

    .line 21126
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getImsAutoVisionSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20069
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsAutoVisionSt()I

    move-result v0

    return v0
.end method

.method public getImsBrightLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20107
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsBrightLevel()I

    move-result v0

    return v0
.end method

.method public getImsHightSpeedAutoVisionSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20233
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsHightSpeedAutoVisionSt()I

    move-result v0

    return v0
.end method

.method public getImsModeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20037
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsModeState()I

    move-result v0

    return v0
.end method

.method public getImsSystemSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20184
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsSystemSt()I

    move-result v0

    return v0
.end method

.method public getImsVisionAngleLevl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20167
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsVisionAngleLevl()I

    move-result v0

    return v0
.end method

.method public getImsVisionVerticalLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20150
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getImsVisionVerticalLevel()I

    move-result v0

    return v0
.end method

.method public getInternalLight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11865
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmInternalLightOn()I

    move-result v0

    return v0
.end method

.method public getKeyAuthState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14756
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmKeyAuthState()I

    move-result v0

    return v0
.end method

.method public getKeyPeLockValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b9

    const/4 v1, 0x0

    .line 24622
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 24624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExtVoicePELock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getLESSAPSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545e

    const/4 v1, 0x0

    .line 23123
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLESSActSource()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405459

    const/4 v1, 0x0

    .line 22985
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLESSInitSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545b

    const/4 v1, 0x0

    .line 23055
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLESSMoveStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405457

    const/4 v1, 0x0

    .line 22904
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLRMirrorHeatSwitchStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16485
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLRMirrorHeatSwitchStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeavePollingLockSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14102
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeavePollingLockSw()I

    move-result v0

    return v0
.end method

.method public getLeftAndRightTurnLampStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13738
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftAndRightTurnLampStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftAndRightTurnLampsActiveStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13754
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftAndRightTurnLampsActiveStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftChargePortLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14397
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftChargePortLockState()I

    move-result v0

    return v0
.end method

.method public getLeftChildLockSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16617
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftChildLockSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLeftMirrorLrPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13307
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftMirrorHorizPos()I

    move-result v0

    return v0
.end method

.method public getLeftMirrorLrPosFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21605403

    const/4 v1, 0x0

    .line 13321
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getLeftMirrorUdPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13394
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftMirrorVerticalPos()I

    move-result v0

    return v0
.end method

.method public getLeftMirrorUdPosFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21605405

    const/4 v1, 0x0

    .line 13408
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getLeftRearMirrorPosStatus()I
    .locals 2

    const v0, 0x21401dfb

    const/4 v1, 0x0

    .line 17349
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLeftRightRearMirrorFoldOutputStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17331
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftRightRearMirrorFoldOutputStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftSdcDenormalizeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15201
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcDenormalizeState()I

    move-result v0

    return v0
.end method

.method public getLeftSdcDetectionResult()I
    .locals 2

    const v0, 0x21405411

    const/4 v1, 0x0

    .line 15388
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLeftSdcDoorPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15594
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcDoorPosition()I

    move-result v0

    return v0
.end method

.method public getLeftSdcHazzardRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15136
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcHazzardRequest()I

    move-result v0

    return v0
.end method

.method public getLeftSdcMoveCommand()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15784
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcMoveCommand()I

    move-result v0

    return v0
.end method

.method public getLeftSdcObstacleState()I
    .locals 2

    const v0, 0x2140540f

    const/4 v1, 0x0

    .line 15355
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLeftSdcPlayModeState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a4

    const/4 v1, 0x0

    .line 15984
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 15986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getLeftSdcPsdMotorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14720
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcPsdMotorState()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarSt()I
    .locals 2

    const v0, 0x21405413

    const/4 v1, 0x0

    .line 15421
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLeftSdcSystemErrorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15169
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcSystemErrorState()I

    move-result v0

    return v0
.end method

.method public getLeftSdcSystemRunningState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15945
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcSystemRunningState()I

    move-result v0

    return v0
.end method

.method public getLeftSdcWindowsAutoDownSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15307
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftSdcWindowsAutoDownSwitchState()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorFaultSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19338
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorFaultSt()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorLockSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19230
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorLockSt()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorMoode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19173
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorMoode()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorPosition()I
    .locals 3

    .line 19403
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 19405
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getLeftSlideDoorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19196
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorStatus()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorThermalProtectSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19372
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSlideDoorThermalProtectSt()I

    move-result v0

    return v0
.end method

.method public getLeftTurnLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13706
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLeftTurnLampStatus()I

    move-result v0

    return v0
.end method

.method public getLightMeHome()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12085
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLightMeHomeMode()I

    move-result v0

    return v0
.end method

.method public getLightModeControlType()I
    .locals 4

    const v0, 0x21405429

    const/4 v1, 0x0

    .line 21826
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getLightModeControlType failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getLocationLampState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11817
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmOutlineMarkerLampsOn()I

    move-result v0

    return v0
.end method

.method public getLockAvasSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16813
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLockAvasSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLockHazardLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16683
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLockHazardLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLockHornSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16749
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLockHornSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getLockResponse()I
    .locals 3

    .line 20709
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLockResponse()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20711
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockResponse() throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getLowBeamOffConfirmSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19494
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmLowBeamOffConfirmSt()I

    move-result v0

    return v0
.end method

.method public getMaintainModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16075
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmMaintainModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getManualLfWindowStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13596
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmManualFrontLeftWinStatus()I

    move-result v0

    return v0
.end method

.method public getManualLrWindowStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13636
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmManualRearLeftWinStatus()I

    move-result v0

    return v0
.end method

.method public getManualRfWindowStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13616
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmManualFrontRightWinStatus()I

    move-result v0

    return v0
.end method

.method public getManualRrWindowStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13656
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmManualRearRightWinStatus()I

    move-result v0

    return v0
.end method

.method public getMirrorAutoFoldSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18469
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmMirrorAutoFoldSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getNearLampState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11801
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmNearLampState()I

    move-result v0

    return v0
.end method

.method public getNearePollingUnLockSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14134
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNearePollingUnLockSw()I

    move-result v0

    return v0
.end method

.method public getNfcCardAuthStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15640
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmNfcCardAuthStatus()I

    move-result v0

    return v0
.end method

.method public getNfcCardIdInfo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14831
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmNfcCardIdInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public getNfcCardTouchStatus()I
    .locals 2

    const v0, 0x21405420

    const/4 v1, 0x0

    .line 21563
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getParkLightRelatedFMBLightConfigState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14611
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmParkLightRelatedFMBLightConfigState()I

    move-result v0

    return v0
.end method

.method public getParkingAutoUnlock()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12185
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmParkingAutoUnlockEnabled()I

    move-result v0

    return v0
.end method

.method public getParkingLampsStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14631
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmParkingLampsStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getPassengerSeatBlowLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12706
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPassengerSeatBlowLevel()I

    move-result v0

    return v0
.end method

.method public getPollingOpenCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13882
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmPollingOpenCfg()I

    move-result v0

    return v0
.end method

.method public getPollingWelcomeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19937
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPollingWelcomeState()I

    move-result v0

    return v0
.end method

.method public getPowerDoorAutoClsCaution()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405491

    const/4 v1, 0x0

    .line 24036
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorAutoOpenCfgSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546b

    const/4 v1, 0x0

    .line 23322
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorBrakeCloseCfgSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546a

    const/4 v1, 0x0

    .line 23290
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLAntiCollisionSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405475

    const/4 v1, 0x0

    .line 23500
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLAntiPinchSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405471

    const/4 v1, 0x0

    .line 23436
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLAntiplaySts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546d

    const/4 v1, 0x0

    .line 23372
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLErrorSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547d

    const/4 v1, 0x0

    .line 23628
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLHoverTimeoutRemind()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405465

    const/4 v1, 0x0

    .line 23968
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLInitSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405485

    const/4 v1, 0x0

    .line 23757
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLObstacleSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405479

    const/4 v1, 0x0

    .line 23564
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLRadarErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548d

    const/4 v1, 0x0

    .line 23904
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLRampSteep()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405481

    const/4 v1, 0x0

    .line 23692
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFLRunningSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405489

    const/4 v1, 0x0

    .line 23828
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRAntiCollisionSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405477

    const/4 v1, 0x0

    .line 23532
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRAntiPinchSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405473

    const/4 v1, 0x0

    .line 23468
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRAntiplaySts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546f

    const/4 v1, 0x0

    .line 23404
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRErrorSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547f

    const/4 v1, 0x0

    .line 23660
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRHoverTimeoutRemind()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405467

    const/4 v1, 0x0

    .line 24000
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRInitSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405487

    const/4 v1, 0x0

    .line 23791
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRObstacleSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547b

    const/4 v1, 0x0

    .line 23596
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRRadarErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548f

    const/4 v1, 0x0

    .line 23936
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRRampSteep()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405483

    const/4 v1, 0x0

    .line 23724
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorFRRunningSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548b

    const/4 v1, 0x0

    .line 23868
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorKeyOpenCfgSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546c

    const/4 v1, 0x0

    .line 23356
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorOpenPercentCfgSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405469

    const/4 v1, 0x0

    .line 23256
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLAntiCollisionSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405476

    const/4 v1, 0x0

    .line 23516
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLAntiPinchSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405472

    const/4 v1, 0x0

    .line 23452
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLAntiplaySts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546e

    const/4 v1, 0x0

    .line 23388
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLErrorSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547e

    const/4 v1, 0x0

    .line 23644
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLHoverTimeoutRemind()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405466

    const/4 v1, 0x0

    .line 23984
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLInitSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405486

    const/4 v1, 0x0

    .line 23774
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLObstacleSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547a

    const/4 v1, 0x0

    .line 23580
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLRadarErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548e

    const/4 v1, 0x0

    .line 23920
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLRampSteep()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405482

    const/4 v1, 0x0

    .line 23708
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRLRunningSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548a

    const/4 v1, 0x0

    .line 23848
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRAntiCollisionSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405478

    const/4 v1, 0x0

    .line 23548
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRAntiPinchSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405474

    const/4 v1, 0x0

    .line 23484
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRAntiplaySts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405470

    const/4 v1, 0x0

    .line 23420
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRErrorSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405480

    const/4 v1, 0x0

    .line 23676
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRHoverTimeoutRemind()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405468

    const/4 v1, 0x0

    .line 24016
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRInitSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405488

    const/4 v1, 0x0

    .line 23808
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRObstacleSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140547c

    const/4 v1, 0x0

    .line 23612
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRRadarErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405490

    const/4 v1, 0x0

    .line 23952
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRRampSteep()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405484

    const/4 v1, 0x0

    .line 23740
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPowerDoorRRRunningSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140548c

    const/4 v1, 0x0

    .line 23888
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11693
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mBcmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRESSAPSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545f

    const/4 v1, 0x0

    .line 23139
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRESSActSource()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545a

    const/4 v1, 0x0

    .line 23010
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRESSInitSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545c

    const/4 v1, 0x0

    .line 23072
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRESSMoveStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405458

    const/4 v1, 0x0

    .line 22924
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRLAeonDomeLightBrightness()I
    .locals 3

    const v0, 0x214054bd

    const/4 v1, 0x0

    .line 24757
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRLAeonDomeLightBrightness failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRLAeonDomeLightColor()I
    .locals 3

    const v0, 0x214054bf

    const/4 v1, 0x0

    .line 24833
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRLAeonDomeLightColor failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRLAeonDomeLightSwitchSt()I
    .locals 4

    const v0, 0x214054bb

    const/4 v1, 0x0

    .line 24677
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getRLAeonDomeLightSwitchSt failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getRLCwcChargeErrorSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20319
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRLCwcChargeErrorSt()I

    move-result v0

    return v0
.end method

.method public getRLCwcChargeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20298
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRLCwcChargeSt()I

    move-result v0

    return v0
.end method

.method public getRLCwcSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20281
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRLCwcSwitchState()I

    move-result v0

    return v0
.end method

.method public getRLSRequsetWiperSpeed()I
    .locals 4

    const v0, 0x2140541c

    const/4 v1, 0x0

    .line 21498
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 21500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getRRAeonDomeLightBrightness()I
    .locals 3

    const v0, 0x214054be

    const/4 v1, 0x0

    .line 24798
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRRAeonDomeLightBrightness failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRRAeonDomeLightColor()I
    .locals 3

    const v0, 0x214054c0

    const/4 v1, 0x0

    .line 24869
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRRAeonDomeLightColor failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRRAeonDomeLightSwitchSt()I
    .locals 4

    const v0, 0x214054bc

    const/4 v1, 0x0

    .line 24716
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getRRAeonDomeLightSwitchSt failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getRRCwcChargeErrorSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20389
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRRCwcChargeErrorSt()I

    move-result v0

    return v0
.end method

.method public getRRCwcChargeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20368
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRRCwcChargeSt()I

    move-result v0

    return v0
.end method

.method public getRRCwcSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20351
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRRCwcSwitchState()I

    move-result v0

    return v0
.end method

.method public getReadyEnableState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15550
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmReadyEnableState()I

    move-result v0

    return v0
.end method

.method public getRearFogLamp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11715
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmRearFogLampOn()I

    move-result v0

    return v0
.end method

.method public getRearLeftDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16988
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearLeftDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getRearLeftHeaterErrorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15011
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearLeftHeaterErrorState()I

    move-result v0

    return v0
.end method

.method public getRearLeftSeatHeatState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14959
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearLeftSeatHeatState()I

    move-result v0

    return v0
.end method

.method public getRearLogLight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19441
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearLogLight()I

    move-result v0

    return v0
.end method

.method public getRearLogLightStatus()I
    .locals 3

    .line 20729
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearLogLightStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20731
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearLogLightStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRearMirrorAdasLightOutputStatus()I
    .locals 2

    const v0, 0x21405402

    const/4 v1, 0x0

    .line 21324
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRearMirrorChargeLightOutputStatus()I
    .locals 2

    const v0, 0x21405401

    const/4 v1, 0x0

    .line 21311
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRearMirrorExpandTiming()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c9

    const/4 v1, 0x0

    .line 25108
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRearRightDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17021
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearRightDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getRearRightHeaterErrorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15027
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearRightHeaterErrorState()I

    move-result v0

    return v0
.end method

.method public getRearRightSeatHeatState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14995
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearRightSeatHeatState()I

    move-result v0

    return v0
.end method

.method public getRearSeatBeltWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12465
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmRearSeatBeltWarningEnabled()I

    move-result v0

    return v0
.end method

.method public getRearTailGateSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409285

    const/4 v1, 0x0

    .line 22665
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRearViewAutoDownCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13930
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearViewAutoDownCfg()I

    move-result v0

    return v0
.end method

.method public getRearViewMirrorsAdjustStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16027
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearViewMirrorsAdjustStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getRearWiperMotorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17648
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearWiperMotorStatus()I

    move-result v0

    return v0
.end method

.method public getRearWiperServiceSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16549
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearWiperServiceSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getRefuelTheVehicleRMN()I
    .locals 2

    const v0, 0x2140541f

    const/4 v1, 0x0

    .line 21533
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRefuelTheVehicleStatus()I
    .locals 2

    const v0, 0x2140541e

    const/4 v1, 0x0

    .line 21517
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getReverseMirrorCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13488
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmReverseMirrorCfgCmd()I

    move-result v0

    return v0
.end method

.method public getRightChargePortLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14413
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightChargePortLockState()I

    move-result v0

    return v0
.end method

.method public getRightChildLockSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16649
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightChildLockSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getRightMirrorLrPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13351
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightMirrorHorizPos()I

    move-result v0

    return v0
.end method

.method public getRightMirrorLrPosFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21605404

    const/4 v1, 0x0

    .line 13365
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getRightMirrorUdPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13438
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightMirrorVerticalPos()I

    move-result v0

    return v0
.end method

.method public getRightMirrorUdPosFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21605406

    const/4 v1, 0x0

    .line 13452
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getRightRearMirrorPosStatus()I
    .locals 2

    const v0, 0x21401dfa

    const/4 v1, 0x0

    .line 17367
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRightSdcDenormalizeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15217
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcDenormalizeState()I

    move-result v0

    return v0
.end method

.method public getRightSdcDetectionResult()I
    .locals 2

    const v0, 0x21405412

    const/4 v1, 0x0

    .line 15405
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRightSdcDoorPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15622
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcDoorPosition()I

    move-result v0

    return v0
.end method

.method public getRightSdcHazzardRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15153
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcHazzardRequest()I

    move-result v0

    return v0
.end method

.method public getRightSdcMoveCommand()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15803
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcMoveCommand()I

    move-result v0

    return v0
.end method

.method public getRightSdcObstacleState()I
    .locals 2

    const v0, 0x21405410

    const/4 v1, 0x0

    .line 15371
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRightSdcPlayModeState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a5

    const/4 v1, 0x0

    .line 16005
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 16007
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getRightSdcPsdMotorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14738
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcPsdMotorState()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarSt()I
    .locals 2

    const v0, 0x21405414

    const/4 v1, 0x0

    .line 15437
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRightSdcSystemErrorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15185
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcSystemErrorState()I

    move-result v0

    return v0
.end method

.method public getRightSdcSystemRunningState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15967
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcSystemRunningState()I

    move-result v0

    return v0
.end method

.method public getRightSdcWindowsAutoDownSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15339
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightSdcWindowsAutoDownSwitchState()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorFaultSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19355
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorFaultSt()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorLockSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19321
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorLockSt()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorMoode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19264
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorMoode()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorPosition()I
    .locals 3

    .line 19421
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorPosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 19423
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRightSlideDoorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19287
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorStatus()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorThermalProtectSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19389
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightSlideDoorThermalProtectSt()I

    move-result v0

    return v0
.end method

.method public getRightTurnLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13722
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRightTurnLampStatus()I

    move-result v0

    return v0
.end method

.method public getRldmWinPstState()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12828
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearLeftWinPos()F

    move-result v0

    return v0
.end method

.method public getRlsBrightness()I
    .locals 4

    const v0, 0x21405415

    const/4 v1, 0x0

    .line 21415
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 21417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getRrdmWinPstState()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12842
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmRearRightWinPos()F

    move-result v0

    return v0
.end method

.method public getSaberLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16059
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSaberLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getScAntiPinchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16160
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScAntiPinchStatus()I

    move-result v0

    return v0
.end method

.method public getScEcuStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16123
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScEcuStatus()I

    move-result v0

    return v0
.end method

.method public getScIceBreakMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16176
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScIceBreakMode()I

    move-result v0

    return v0
.end method

.method public getScLinStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16192
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScLinStatus()I

    move-result v0

    return v0
.end method

.method public getScSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16107
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getScThermalProtectStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16142
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmScThermalProtectSt()I

    move-result v0

    return v0
.end method

.method public getSdcKeyCloseCtrlCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15075
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSdcKeyCloseCtrlCfg()I

    move-result v0

    return v0
.end method

.method public getSdcKeyOpenCtrlCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15043
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSdcKeyOpenCtrlCfg()I

    move-result v0

    return v0
.end method

.method public getSdcMaxAutoDoorOpeningAngle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15105
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSdcMaxAutoDoorOpeningAngle()I

    move-result v0

    return v0
.end method

.method public getSdcMode()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const v0, 0x21401c83

    const/4 v1, 0x0

    .line 14319
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSdcWindowsAutoDownSwitch(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 15269
    invoke-virtual {p0}, Landroid/car/hardware/bcm/CarBcmManager;->getLeftSdcWindowsAutoDownSwitchState()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 15271
    invoke-virtual {p0}, Landroid/car/hardware/bcm/CarBcmManager;->getRightSdcWindowsAutoDownSwitchState()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const p1, 0x2140540e

    .line 15273
    invoke-virtual {p0, p1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getSeatErrorState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12891
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSeatErrorState()I

    move-result v0

    return v0
.end method

.method public getSeatWelcomeRecoverActive()I
    .locals 3

    .line 20749
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSeatWelcomeRecoverActive()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20751
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeatWelcomeRecoverActive throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowLeftBlowLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12742
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftBlowLevel()I

    move-result v0

    return v0
.end method

.method public getSecRowRightBlowLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12778
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightBlowLevel()I

    move-result v0

    return v0
.end method

.method public getSfmAnglePos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20004
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSfmAnglePos()I

    move-result v0

    return v0
.end method

.method public getSfmCtrlState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19973
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSfmCtrlState()I

    move-result v0

    return v0
.end method

.method public getShadeControllerInitializationSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15903
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmShadeControllerInitializationSt()I

    move-result v0

    return v0
.end method

.method public getShadeControllerMotorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15869
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmShadeControllerMotorStatus()I

    move-result v0

    return v0
.end method

.method public getShadeControllerPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15848
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmShadeControllerPosition()I

    move-result v0

    return v0
.end method

.method public getSoftLvlConfigValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16347
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSoftLvlConfigValue()I

    move-result v0

    return v0
.end method

.method public getStealthMode()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14170
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getStealthMode()V

    return-void
.end method

.method public getSteeringWheelHeatingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16585
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSteeringWheelHeatingStatus()I

    move-result v0

    return v0
.end method

.method public getStopNfcCardSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13102
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmNfcCardSwitchState()I

    move-result v0

    return v0
.end method

.method public getSunRoofAntiPinchStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405447

    const/4 v1, 0x0

    .line 22817
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSunRoofInitializationSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405444

    const/4 v1, 0x0

    .line 22782
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSunRoofMotorStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405445

    const/4 v1, 0x0

    .line 22748
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSunRoofPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405443

    const/4 v1, 0x0

    .line 22727
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSunRoofThermalProtectStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405446

    const/4 v1, 0x0

    .line 22801
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSuspenWelcomeSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16452
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSuspenWelcomeSwitchState()I

    move-result v0

    return v0
.end method

.method public getSwsLeftTouchPadPressedStatus()I
    .locals 4

    const v0, 0x21402238

    const/4 v1, 0x0

    .line 22001
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getSwsLeftTouchPadPressedStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getSwsLogoLightCartoonSwitch()I
    .locals 4

    const v0, 0x2140542d

    const/4 v1, 0x0

    .line 21962
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getSwsLogoLightCartoonSwitch failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getSwsLogoLightSwitchStatus()I
    .locals 4

    const v0, 0x2140542c

    const/4 v1, 0x0

    .line 21923
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getSwsLogoLightSwitchStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getSwsRightTouchPadPressedStatus()I
    .locals 4

    const v0, 0x21402239

    const/4 v1, 0x0

    .line 22022
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getSwsRightTouchPadPressedStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getTTMProhibitSt()I
    .locals 4

    const v0, 0x21403e07

    const/4 v1, 0x0

    .line 22205
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getTTMProhibitSt failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getTargetAsHeightLvlConfigValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16285
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTargetAsHeightLvlConfigValue()I

    move-result v0

    return v0
.end method

.method public getTemporaryStopLockActivateStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17279
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTemporaryStopLockActivateStatus()I

    move-result v0

    return v0
.end method

.method public getTrailerHitchSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17313
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrailerHitchSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTrdLeftDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17054
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdLeftDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTrdLeftSeatHeatSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21599
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrdLeftSeatHeatSw()I

    move-result v0

    return v0
.end method

.method public getTrdMiddleSeatHeatSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21635
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrdMiddleSeatHeatSw()I

    move-result v0

    return v0
.end method

.method public getTrdRightDomeLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17087
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRightDomeLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRightSeatHeatSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21671
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrdRightSeatHeatSw()I

    move-result v0

    return v0
.end method

.method public getTrunk()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13544
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkStatus()I

    move-result v0

    return v0
.end method

.method public getTrunkActualPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18416
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkActualPosition()I

    move-result v0

    return v0
.end method

.method public getTrunkDoorHeight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15704
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkDoorHeight()I

    move-result v0

    return v0
.end method

.method public getTrunkOpennerStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17577
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkOpennerStatus()I

    move-result v0

    return v0
.end method

.method public getTrunkSetPositionResponcePosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17263
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkSetPositionResponcePosition()I

    move-result v0

    return v0
.end method

.method public getTrunkWorkModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19477
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTrunkWorkModeStatus()I

    move-result v0

    return v0
.end method

.method public getTtmDenormalizeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17700
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTtmDenormalizeStatus()I

    move-result v0

    return v0
.end method

.method public getTtmHookMotorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19103
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTtmHookMotorStatus()I

    move-result v0

    return v0
.end method

.method public getTtmLampConnectStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19069
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTtmLampConnectStatus()I

    move-result v0

    return v0
.end method

.method public getTtmLampFaultStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19085
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTtmLampFaultStatus()I

    move-result v0

    return v0
.end method

.method public getTtmSystemErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17717
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmTtmSystemErrorStatus()I

    move-result v0

    return v0
.end method

.method public getUnLockHazardLightSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16715
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmUnLockHazardLightSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getUnLockHornSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16781
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmUnLockHornSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getUnlockResponse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12499
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmUnlockResponseMode()I

    move-result v0

    return v0
.end method

.method public getVBWAutoCfg()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405492

    const/4 v1, 0x0

    .line 24068
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleLeftBrightness()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405493

    const/4 v1, 0x0

    .line 24096
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleLeftSOLSWStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549e

    const/4 v1, 0x0

    .line 24268
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleLeftSyncSWStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a2

    const/4 v1, 0x0

    .line 24332
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleLeftWorkingStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549a

    const/4 v1, 0x0

    .line 24198
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleRightBrightness()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405494

    const/4 v1, 0x0

    .line 24124
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleRightSOLSWStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549f

    const/4 v1, 0x0

    .line 24284
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleRightSyncSWSStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a3

    const/4 v1, 0x0

    .line 24348
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWMiddleRightWorkingStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549b

    const/4 v1, 0x0

    .line 24216
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearLeftBrightness()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405495

    const/4 v1, 0x0

    .line 24152
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearLeftSOLSWStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a0

    const/4 v1, 0x0

    .line 24300
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearLeftWorkingStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549c

    const/4 v1, 0x0

    .line 24234
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearRightBrightness()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405496

    const/4 v1, 0x0

    .line 24180
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearRightSOLSWStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a1

    const/4 v1, 0x0

    .line 24316
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWRearRightWorkingStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140549d

    const/4 v1, 0x0

    .line 24252
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVBWSysOpStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b6

    const/4 v1, 0x0

    .line 24369
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVbsunroofBrightness()I
    .locals 2

    const v0, 0x21405422

    const/4 v1, 0x0

    .line 21729
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVbsunroofEcuSt()I
    .locals 2

    const v0, 0x21405424

    const/4 v1, 0x0

    .line 21763
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVbsunroofThermalProtectedSt()I
    .locals 2

    const v0, 0x21405423

    const/4 v1, 0x0

    .line 21745
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWasherFluidWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14876
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getWasherFluidWarning()I

    move-result v0

    return v0
.end method

.method public getWelcomeModeBackStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12920
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getWelcomeModeBackStatus()I

    move-result v0

    return v0
.end method

.method public getWindowLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14559
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWindowLockState()I

    move-result v0

    return v0
.end method

.method public getWindowMovePosition(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11976
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWindowMovePosition(I)F

    move-result p1

    return p1
.end method

.method public getWindowRemoteCtrlCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13154
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getWindowRemoteCtrlCfg()I

    move-result v0

    return v0
.end method

.method public getWindowSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409286

    const/4 v1, 0x0

    .line 22617
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWindowsInitSignalLostRequestStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17552
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWindowsInitSignalLostRequestStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getWindowsState()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12031
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmAllWindowsPos()[F

    move-result-object v0

    return-object v0
.end method

.method public getWiperFluidWarningStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054ba

    const/4 v1, 0x0

    .line 24641
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWiperInterval()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13811
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWiperInterval()I

    move-result v0

    return v0
.end method

.method public getWiperRainDetectSensitivity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14543
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWiperRainDetectSensitivity()I

    move-result v0

    return v0
.end method

.method public getWiperServiceMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13576
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWiperServiceMode()I

    move-result v0

    return v0
.end method

.method public getWiperSpeedSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14779
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWiperSpeedSwitchState()I

    move-result v0

    return v0
.end method

.method public getWiperSpeedSwitchesStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15923
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmWiperSpeedSwitchesStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getWiperWashOutputStatus()I
    .locals 4

    const v0, 0x2140543b

    const/4 v1, 0x0

    .line 22123
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getWiperWashOutputStatus failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarBcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getXPortAsSystemAllStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18296
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmXPortAsSystemAllStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getsdcBrakeCloseDoorCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18078
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBcmSdcBrakeCloseDoorCfg()I

    move-result v0

    return v0
.end method

.method public isBcmBonnetOpened()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12951
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isBcmBonnetOpened()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$setBcmCpdAlarmHornOnceReq$0$CarBcmManager()V
    .locals 2

    const v0, 0x21401df1

    const/4 v1, 0x0

    .line 20815
    invoke-virtual {p0, v0, v1, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public openBcmBonnet()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12933
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->openBcmBonnet()V

    return-void
.end method

.method public saveAllExteriorMirrorsPositions(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x42fe0000    # 127.0f

    .line 14218
    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/car/hardware/bcm/CarBcmManager;->saveAllExteriorMirrorsPositions(FFFF)V

    return-void
.end method

.method public saveAllExteriorMirrorsPositions(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    const p1, 0x21615418

    .line 14233
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setFloatVectorProperty(II[F)V

    return-void
.end method

.method public sendCMSLogCtrlReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 18881
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendLCMSLogCtrlReq(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 18883
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendRCMSLogCtrlReq(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 18885
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendLCMSLogCtrlReq(I)V

    .line 18886
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendRCMSLogCtrlReq(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendSeatBeltRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14818
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendBcmSeatBeltRequest(I)V

    return-void
.end method

.method public setAGSVehicleModeOpenReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140401f

    const/4 v1, 0x0

    .line 25037
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAGSVehicleModeOpenReq throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setARSFoldOrUnfold(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18949
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setArsFoldOrUnfold(I)V

    return-void
.end method

.method public setARSInitState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19037
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setArsInitState(I)V

    return-void
.end method

.method public setARSPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21404403

    const/4 v1, 0x0

    .line 19004
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setARSWorkingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18916
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setArsWorkingMode(I)V

    return-void
.end method

.method public setAcChildLock(I)V
    .locals 2

    const v0, 0x21405421

    const/4 v1, 0x0

    .line 21686
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setAllExteriorMirrorsPositions(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14187
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAllExteriorMirrorsPositions(IIII)V

    return-void
.end method

.method public setAllExteriorMirrorsPositionsFloat(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14204
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAllExteriorMirrorsPositionsFloat(FFFF)V

    return-void
.end method

.method public setAllHandlePos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401dfe

    const/4 v1, 0x0

    .line 24993
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllHandlePos throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAllWeatherLightSwitch(I)I
    .locals 2

    const v0, 0x2140542a

    const/4 v1, 0x0

    .line 21844
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setAllWindowManualOrAuto(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 11913
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setWindowMoveCmd(II)V

    return-void
.end method

.method public setArsVehLockAutoFoldSwitch(I)V
    .locals 2

    .line 20603
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setArsVehLockAutoFoldSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20605
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setArsVehLockAutoFoldSwitch throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setAsCampingModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17735
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsCampingModeSwitchStatus(I)V

    return-void
.end method

.method public setAsDrivingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17913
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsDrivingMode(I)V

    return-void
.end method

.method public setAsLeopardModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18345
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsLeopardModeSwitchStatus(I)V

    return-void
.end method

.method public setAsSpecialDrivingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17952
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsSpecialDrivingMode(I)V

    return-void
.end method

.method public setAsTrailerModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17434
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsTrailerModeSwitchStatus(I)V

    return-void
.end method

.method public setAsVehicleMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18390
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAsVehicleMode(I)V

    return-void
.end method

.method public setAutoLightSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14863
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoLightSwitch(I)V

    return-void
.end method

.method public setAutoWindowCmd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13120
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAutoWindowCmd(I)V

    return-void
.end method

.method public setAutoWindowLockSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14054
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoWindowLockSw(I)V

    return-void
.end method

.method public setBcmAutoPowerOffDisableReq(I)I
    .locals 2

    const v0, 0x21401df3

    const/4 v1, 0x0

    .line 20863
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setBcmBackDefrostMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12544
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmBackDefrostMode(I)V

    return-void
.end method

.method public setBcmBackMirrorHeatMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12576
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmBackMirrorHeatMode(I)V

    return-void
.end method

.method public setBcmCpdAlarmHazardLightReq(I)I
    .locals 2

    const v0, 0x21401df0

    const/4 v1, 0x0

    .line 20768
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setBcmCpdAlarmHornOnceReq()I
    .locals 5

    const v0, 0x21401df1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 20814
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    .line 20815
    invoke-virtual {p0}, Landroid/car/hardware/bcm/CarBcmManager;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/car/hardware/bcm/-$$Lambda$CarBcmManager$yaqY5yj2WvLrfPBUDyBAgNTujv4;

    invoke-direct {v2, p0}, Landroid/car/hardware/bcm/-$$Lambda$CarBcmManager$yaqY5yj2WvLrfPBUDyBAgNTujv4;-><init>(Landroid/car/hardware/bcm/CarBcmManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public setBcmCpdAlarmHornReq(I)I
    .locals 2

    const v0, 0x21401df1

    const/4 v1, 0x0

    .line 20801
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setBcmPollingLockDisableReq(I)I
    .locals 2

    const v0, 0x21401df4

    const/4 v1, 0x0

    .line 20847
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setBcmPollingUnlockDisableReq(I)I
    .locals 2

    const v0, 0x21401df2

    const/4 v1, 0x0

    .line 20831
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setBcmPsnSeatHeatLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13847
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmPsnSeatHeatLevel(I)V

    return-void
.end method

.method public setBcmSeatBlowLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12649
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSeatBlowLevel(I)V

    return-void
.end method

.method public setBcmSeatHeatLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12611
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSeatHeatLevel(I)V

    return-void
.end method

.method public setCFChildLock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19700
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFChildLock(I)V

    return-void
.end method

.method public setCFKeepTempSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19732
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFKeepTempSwitch(I)V

    return-void
.end method

.method public setCFKeepTempTime(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19762
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFKeepTempTime(I)V

    return-void
.end method

.method public setCFKeepTempTimeMemoryRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19808
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFKeepTempTimeMemoryRequest(I)V

    return-void
.end method

.method public setCFPowerSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19527
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFPowerSwitch(I)V

    return-void
.end method

.method public setCFTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19604
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFTempInc()V

    return-void
.end method

.method public setCFTempValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19632
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFTempValue(I)V

    return-void
.end method

.method public setCFWorkMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19665
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCFWorkMode(I)V

    return-void
.end method

.method public setCMSAllExteriorMirrorsPositions(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14250
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLRCMSAllExteriorMirrorsPositions(FFFF)V

    return-void
.end method

.method public setCMSAutoBrightSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18567
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSAutoBrightSw(I)V

    return-void
.end method

.method public setCMSBright(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18600
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSBright(I)V

    return-void
.end method

.method public setCMSBrightWithFlag(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 18616
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1, v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSBrightWithStoreflag([I)V

    return-void
.end method

.method public setCMSDanObjectRecSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18714
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSDanObjectRecSw(I)V

    return-void
.end method

.method public setCMSHighSpeedViewSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18650
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSHighSpeedViewSw(I)V

    return-void
.end method

.method public setCMSLowSpeedViewSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18682
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSLowSpeedViewSw(I)V

    return-void
.end method

.method public setCMSReverseAssitSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18746
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSReverseAssitSw(I)V

    return-void
.end method

.method public setCMSTurnExtSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18778
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSTurnExtSw(I)V

    return-void
.end method

.method public setCMSViewAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18843
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLRCMSViewAngle(I)V

    return-void
.end method

.method public setCMSViewRecovery(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18810
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLCMSViewRecovery(I)V

    return-void
.end method

.method public setCampingMode(I)V
    .locals 2

    const v0, 0x214054c6

    const/4 v1, 0x0

    .line 25056
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCampingMode throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCarFridgeDoorCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19559
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCarFridgeDoorCtrl(I)V

    return-void
.end method

.method public setCarpetLightWelcomeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19889
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCarpetLightWelcomeSw(I)V

    return-void
.end method

.method public setCfSterModeSw(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140460d

    const/4 v1, 0x0

    .line 19856
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setChairWelcomeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12401
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmChairWelcomeMode(I)V

    return-void
.end method

.method public setChargePortSyncStatus(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21105428

    const/4 v1, 0x0

    .line 21775
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setStringProperty(IILjava/lang/String;)V

    return-void
.end method

.method public setChargePortUnlock(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13795
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmChargePortUnlock(II)V

    return-void
.end method

.method public setChildLockCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13174
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmChildLockCfg(I)V

    return-void
.end method

.method public setColumnHorizonalMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17505
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnHorizonalMove(II)V

    return-void
.end method

.method public setColumnHorizonalPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17522
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnHorizonalPosition(I)V

    return-void
.end method

.method public setColumnPositionMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17592
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setColumnPositionMove(III)V

    return-void
.end method

.method public setColumnPositionMove(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17611
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnPositionMoveWithMemory(III)V

    return-void
.end method

.method public setColumnPositionSave(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17838
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnPositionSaveToMcu(II)V

    return-void
.end method

.method public setColumnPositionSaveToMcu(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17822
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnPositionSaveToMcu(II)V

    return-void
.end method

.method public setColumnTravelAdjReq(I)I
    .locals 2

    const v0, 0x21401df8

    const/4 v1, 0x0

    .line 20910
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setColumnVerticalMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17454
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnVerticalMove(II)V

    return-void
.end method

.method public setColumnVerticalPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17471
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmColumnVerticalPosition(I)V

    return-void
.end method

.method public setCustomerModeFlagSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17664
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmCustomerModeFlagSwitchStatus(I)V

    return-void
.end method

.method public setCwcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15720
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmCwcSwitch(I)V

    return-void
.end method

.method public setDayLightMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13019
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDayLightMode(I)V

    return-void
.end method

.method public setDlpWelcomeVideoType(I)V
    .locals 2

    const v0, 0x214054b0

    const/4 v1, 0x0

    .line 25125
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDlpWelcomeVideoType throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDomeLightBrightLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16868
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDomeLightBrightLevel(I)V

    return-void
.end method

.method public setDomeLightCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13052
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDomeLightCfg(I)V

    return-void
.end method

.method public setDomeLightModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16830
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDomeLightModeStatus(I)V

    return-void
.end method

.method public setDoorLock(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "setDoorLock: "

    const-string v1, "CarBcmManager"

    .line 12238
    :try_start_0
    iget-object v2, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDoorLock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 12240
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 12244
    :try_start_1
    iget-object p1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDoorLock()I

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    .line 12246
    invoke-virtual {p0}, Landroid/car/hardware/bcm/CarBcmManager;->setDoorUnlock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 12249
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-void
.end method

.method public setDoorLockPressTimeCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b7

    const/4 v1, 0x0

    .line 24567
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDoorUnlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12264
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDoorUnLock()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12266
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDoorUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setDriveAutoLock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12137
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmDrvAutoLockEnabled(I)V

    return-void
.end method

.method public setESSWorkMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545d

    const/4 v1, 0x0

    .line 23090
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setEasyLoadingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16436
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmEasyLoadingSwitch(I)V

    return-void
.end method

.method public setElectricSeatBelt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12417
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmElectricSeatBeltEnabled(I)V

    return-void
.end method

.method public setEmergencyBrakeWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11881
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmEmergencyBrakeWarning(I)V

    return-void
.end method

.method public setEngineeringModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17383
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmEngineeringModeStatus(I)V

    return-void
.end method

.method public setEtcBluetoothReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20540
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEtcBluetoothReq(I)V

    return-void
.end method

.method public setEtcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20440
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEtcSwitch(I)V

    return-void
.end method

.method public setExtVoicePELock(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054b8

    const/4 v1, 0x0

    .line 24598
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExtVoicePELock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setFCTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19617
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFCTempDec()V

    return-void
.end method

.method public setFRCwcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15752
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFRCwcSwitch(I)V

    return-void
.end method

.method public setFWiperAutoSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405448

    const/4 v1, 0x0

    .line 22849
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setFollowMeHomeCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12103
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFollowMeHomeCfg(I)V

    return-void
.end method

.method public setFollowMeTime(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12986
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFollowMeTime(I)V

    return-void
.end method

.method public setFootKickSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17103
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFootKickSwitchStatus(I)V

    return-void
.end method

.method public setForcePowerOff(I)I
    .locals 2

    const v0, 0x2140540b

    const/4 v1, 0x0

    .line 21337
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setFrontLeftDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16905
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFrontLeftDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setFrontMirrorHeatSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16501
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFrontMirrorHeatSwitchStatus(I)V

    return-void
.end method

.method public setFrontRightDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16938
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFrontRightDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setFrontShadeControllerComfortCommand(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a6

    const/4 v1, 0x0

    .line 24431
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setFrontShadeControllerInitialization(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a9

    const/4 v1, 0x0

    .line 24496
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setFrontShadeControllerPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054a7

    const/4 v1, 0x0

    .line 24445
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setFrontWiperIntSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c1

    const/4 v1, 0x0

    .line 24894
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFrontWiperIntSensitivity throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFrontWiperIntSensitivityMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214054c2

    const/4 v1, 0x0

    .line 24934
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFrontWiperIntSensitivityMode throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setGloveBoxUnlockReq(I)I
    .locals 2

    const v0, 0x2140540d

    const/4 v1, 0x0

    .line 21366
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setGroupLedBrigntness(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18253
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmGroupLedBrigntness(IIII)V

    return-void
.end method

.method public setGroupLedColor(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18171
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmGroupLedColor(IIII)V

    return-void
.end method

.method public setGroupLedControlStatus(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18137
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmGroupLedControlStatus(IIII)V

    return-void
.end method

.method public setGroupLedFadeTime(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18203
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmGroupLedFadeTime(IIII)V

    return-void
.end method

.method public setGroupLedTemperature(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18221
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmGroupLedTemperature(IIII)V

    return-void
.end method

.method public setHandleAutoSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16404
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmHandleAutoSwitch(I)V

    return-void
.end method

.method public setHazardLight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12201
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmHazardLampsFlash(I)V

    return-void
.end method

.method public setHeadLampGroup(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11750
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmFrontLampMode(I)V

    return-void
.end method

.method public setHeadLampLevelingReqValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17155
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmHeadLampLevelingReqValue(I)V

    return-void
.end method

.method public setHeadLampVeticalAngleMotionSt(I)I
    .locals 2

    .line 21453
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHeadLampVeticalAngleMotionSt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 21455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHeadLampVeticalAngleMotionSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setHeadLampVeticalAngleReq([I)I
    .locals 3

    const v0, 0x21405419

    const/4 v1, 0x0

    .line 21432
    :try_start_0
    aget v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    const v0, 0x21405437

    const/4 v2, 0x1

    .line 21433
    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 21435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeadLampVeticalAngleReq throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setHeightLvlConfigValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16217
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmHeightLvlConfigValue(I)V

    return-void
.end method

.method public setHighBeamOnOff(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13690
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmHighBeamMode(I)V

    return-void
.end method

.method public setIMMActionScriptID(I)I
    .locals 2

    const v0, 0x2140520e

    const/4 v1, 0x0

    .line 21215
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMCoord([F)I
    .locals 2

    const v0, 0x2161520f

    const/4 v1, 0x0

    .line 20991
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setFloatVectorProperty(II[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 20993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setIMMCoordY(F)I
    .locals 2

    const v0, 0x21605204

    const/4 v1, 0x0

    .line 21027
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setFloatProperty(IIF)V

    return v1
.end method

.method public setIMMCoordZ(F)I
    .locals 2

    const v0, 0x21605205

    const/4 v1, 0x0

    .line 21053
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setFloatProperty(IIF)V

    return v1
.end method

.method public setIMMDefaultPos(I)I
    .locals 2

    const v0, 0x21405209

    const/4 v1, 0x0

    .line 21167
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMEmerStop(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x2140520d

    const/4 v1, 0x0

    .line 21201
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMErrorReset(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x2140520b

    const/4 v1, 0x0

    .line 21262
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMMachZeroCalibrate(I)I
    .locals 2

    const v0, 0x2140520c

    const/4 v1, 0x0

    .line 21183
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMMovingSpeed(I)I
    .locals 2

    const v0, 0x21405208

    const/4 v1, 0x0

    .line 21139
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMPowerOff(I)I
    .locals 2

    const v0, 0x2140520a

    const/4 v1, 0x0

    .line 21244
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMSpecialMode(I)I
    .locals 2

    const v0, 0x21405210

    const/4 v1, 0x0

    .line 21278
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setIMMTouchMode(I)I
    .locals 2

    const v0, 0x21405207

    const/4 v1, 0x0

    .line 21083
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setIMMTouchVib(I)I
    .locals 2

    const v0, 0x21405206

    const/4 v1, 0x0

    .line 21113
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setImsAutoModeReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20201
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsAutoModeReq(I)V

    return-void
.end method

.method public setImsAutoVisionSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20053
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsAutoVisionSw(I)V

    return-void
.end method

.method public setImsBrightLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20088
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsBrightLevel(I)V

    return-void
.end method

.method public setImsHightSpeedAutoVisionSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20217
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsHightSpeedAutoVisionSw(I)V

    return-void
.end method

.method public setImsModeReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20021
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsModeReq(I)V

    return-void
.end method

.method public setImsResetReq()V
    .locals 3

    .line 20246
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsResetReq()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 20248
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsResetReq() throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarBcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setImsVisionCtrl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20129
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setImsVisionCtrl(II)V

    return-void
.end method

.method public setInternalLight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11849
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmInternalLightOn(I)V

    return-void
.end method

.method public setLESSInitialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 23024
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setLESSMoveCmd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405457

    const/4 v1, 0x0

    .line 22942
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setLeavePollingLockSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14086
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLeavePollingLockSw(I)V

    return-void
.end method

.method public setLeftChildLockSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16601
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftChildLockSwitchStatus(I)V

    return-void
.end method

.method public setLeftMirrorCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13212
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftMirrorCtrlCmd(I)V

    return-void
.end method

.method public setLeftMirrorCtrl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13234
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftMirrorMove(II)V

    return-void
.end method

.method public setLeftMirrorLrPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13291
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftMirrorHorizPos(I)V

    return-void
.end method

.method public setLeftMirrorUdPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13379
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftMirrorVerticalPos(I)V

    return-void
.end method

.method public setLeftSdcAutoControl(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarBcmManager"

    .line 15456
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftSdcAutoOrManualControl(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBcmLeftSdcAutoOrManualControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v1, 0x21405416

    const/4 v2, 0x0

    .line 15461
    :try_start_1
    invoke-virtual {p0, v1, v2, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLeftSdcAutoControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setLeftSdcDoorPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15580
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftSdcDoorPosition(I)V

    return-void
.end method

.method public setLeftSdcManualControl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15485
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    add-int/lit8 p2, p2, 0x3

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftSdcAutoOrManualControl(II)V

    return-void
.end method

.method public setLeftSdcSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14368
    invoke-virtual {p0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcAutoControl(I)V

    return-void
.end method

.method public setLeftSdcWindowsAutoDownSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15291
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLeftSdcWindowsAutoDownSwitch(I)V

    return-void
.end method

.method public setLeftSlideDoorCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19213
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLeftSlideDoorCtrl(I)V

    return-void
.end method

.method public setLeftSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19156
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLeftSlideDoorMode(I)V

    return-void
.end method

.method public setLightMeHome(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12068
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLightMeHomeMode(I)V

    return-void
.end method

.method public setLightModeTypeControl(I)I
    .locals 2

    const v0, 0x21405429

    const/4 v1, 0x0

    .line 21803
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setLockAvasSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16797
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLockAvasSwitchStatus(I)V

    return-void
.end method

.method public setLockHazardLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16666
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLockHazardLightSwitchStatus(I)V

    return-void
.end method

.method public setLockHornSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16732
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLockHornSwitchStatus(I)V

    return-void
.end method

.method public setLockResponse(I)V
    .locals 2

    .line 20689
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLockResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 20691
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLockResponse throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setLowBeamOffConfirmSt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19511
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmLowBeamOffConfirmSt(I)V

    return-void
.end method

.method public setMaintainModeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16091
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmMaintainModeSw(I)V

    return-void
.end method

.method public setMirrorAutoFoldSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18453
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmMirrorAutoFoldSwitchStatus(I)V

    return-void
.end method

.method public setNearPollingUnLockSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14118
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNearPollingUnLockSw(I)V

    return-void
.end method

.method public setParkLightRelatedFMBLightConfig(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14595
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmParkLightRelatedFMBLightConfig(I)V

    return-void
.end method

.method public setParkingAutoUnlock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12169
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmParkingAutoUnlockEnabled(I)V

    return-void
.end method

.method public setPassengerSeatBlowLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12687
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmPassengerSeatBlowLevel(I)V

    return-void
.end method

.method public setPollingOpenCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13898
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmPollingOpenCfg(I)V

    return-void
.end method

.method public setPollingWelcomeSW(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19921
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setPollingWelcomeSW(I)V

    return-void
.end method

.method public setPowerDoorAllMove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405464

    const/4 v1, 0x0

    .line 23228
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorAutoOpenCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546b

    const/4 v1, 0x0

    .line 23306
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorBrakeCloseCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546a

    const/4 v1, 0x0

    .line 23273
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorFLMove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405460

    const/4 v1, 0x0

    .line 23157
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorFRMove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405462

    const/4 v1, 0x0

    .line 23193
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorKeyOpenCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140546c

    const/4 v1, 0x0

    .line 23339
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorOpenPercentCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405469

    const/4 v1, 0x0

    .line 23242
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorRLMove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405461

    const/4 v1, 0x0

    .line 23175
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPowerDoorRRMove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405463

    const/4 v1, 0x0

    .line 23211
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setRESSInitialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140545c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 23038
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setRESSMoveCmd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405458

    const/4 v1, 0x0

    .line 22960
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setRLAeonDomeLightBrightness(I)V
    .locals 2

    const v0, 0x214054bd

    const/4 v1, 0x0

    .line 24736
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLAeonDomeLightBrightness throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRLAeonDomeLightColor(I)V
    .locals 2

    const v0, 0x214054bf

    const/4 v1, 0x0

    .line 24815
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLAeonDomeLightColor throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRLAeonDomeLightSwitch(I)V
    .locals 2

    const v0, 0x214054bb

    const/4 v1, 0x0

    .line 24657
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRLAeonDomeLightSwitch throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRLCwcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20265
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRLCwcSwitch(I)V

    return-void
.end method

.method public setRRAeonDomeLightBrightness(I)V
    .locals 2

    const v0, 0x214054be

    const/4 v1, 0x0

    .line 24777
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRAeonDomeLightBrightness throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRRAeonDomeLightColor(I)V
    .locals 2

    const v0, 0x214054c0

    const/4 v1, 0x0

    .line 24850
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRAeonDomeLightBrightness throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRRAeonDomeLightSwitch(I)V
    .locals 2

    const v0, 0x214054bc

    const/4 v1, 0x0

    .line 24696
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRRAeonDomeLightSwitch throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRRCwcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20335
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRRCwcSwitch(I)V

    return-void
.end method

.method public setRearFogLamp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11731
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearFogLampOn(I)V

    return-void
.end method

.method public setRearLeftDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16971
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearLeftDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setRearLeftSeatHeatSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14941
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearLeftSeatHeatSw(I)V

    return-void
.end method

.method public setRearLogLight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19457
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearLogLight(I)V

    return-void
.end method

.method public setRearMirrorExpandTiming(I)V
    .locals 2

    const v0, 0x214054c9

    const/4 v1, 0x0

    .line 25090
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearMirrorExpandTiming throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRearRightDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17004
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearRightDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setRearRightSeatHeatSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14977
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearRightSeatHeatSw(I)V

    return-void
.end method

.method public setRearSeatBeltWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12449
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearSeatBeltWarningEnabled(I)V

    return-void
.end method

.method public setRearViewAutoDownCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13946
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearViewAutoDownCfg(I)V

    return-void
.end method

.method public setRearViewMirror(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11833
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearViewMirrorPos(I)V

    return-void
.end method

.method public setRearWiperServiceSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16533
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRearWiperServiceSwitchStatus(I)V

    return-void
.end method

.method public setRefuelTheVehicleRequest(I)V
    .locals 2

    const v0, 0x2140541d

    const/4 v1, 0x0

    .line 21548
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setReverseMirrorCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13470
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmReverseMirrorCfgCmd(I)V

    return-void
.end method

.method public setRightChildLockSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16633
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightChildLockSwitchStatus(I)V

    return-void
.end method

.method public setRightMirrorCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13254
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightMirrorCtrlCmd(I)V

    return-void
.end method

.method public setRightMirrorCtrl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13277
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightMirrorMove(II)V

    return-void
.end method

.method public setRightMirrorLrPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13335
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightMirrorHorizPos(I)V

    return-void
.end method

.method public setRightMirrorUdPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13422
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightMirrorVerticalPos(I)V

    return-void
.end method

.method public setRightSdcAutoControl(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarBcmManager"

    .line 15504
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightSdcAutoOrManualControl(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBcmRightSdcAutoOrManualControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v1, 0x21405417

    const/4 v2, 0x0

    .line 15510
    :try_start_1
    invoke-virtual {p0, v1, v2, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLeftSdcAutoControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setRightSdcDoorPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15608
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightSdcDoorPosition(I)V

    return-void
.end method

.method public setRightSdcManualControl(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15534
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    add-int/lit8 p2, p2, 0x3

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightSdcAutoOrManualControl(II)V

    return-void
.end method

.method public setRightSdcSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14381
    invoke-virtual {p0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcAutoControl(I)V

    return-void
.end method

.method public setRightSdcWindowsAutoDownSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15323
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmRightSdcWindowsAutoDownSwitch(I)V

    return-void
.end method

.method public setRightSlideDoorCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19304
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRightSlideDoorCtrl(I)V

    return-void
.end method

.method public setRightSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19247
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRightSlideDoorMode(I)V

    return-void
.end method

.method public setSaberLightSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16043
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSaberLightSw(I)V

    return-void
.end method

.method public setSdcKeyCloseCtrlCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15091
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSdcKeyCloseCtrlCfg(I)V

    return-void
.end method

.method public setSdcKeyOpenCtrlCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15059
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSdcKeyOpenCtrlCfg(I)V

    return-void
.end method

.method public setSdcMaxAutoDoorOpeningAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15119
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSdcMaxAutoDoorOpeningAngle(I)V

    return-void
.end method

.method public setSdcMode(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14300
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSdcMode(I)V

    return-void
.end method

.method public setSdcWindowsAutoDownSwitch(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 15237
    invoke-virtual {p0, p2}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcWindowsAutoDownSwitch(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 15239
    invoke-virtual {p0, p2}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcWindowsAutoDownSwitch(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x2140540e

    .line 15242
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSdcWindowsAutoDownSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CarBcmManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15245
    invoke-virtual {p0, p2}, Landroid/car/hardware/bcm/CarBcmManager;->setLeftSdcWindowsAutoDownSwitch(I)V

    .line 15246
    invoke-virtual {p0, p2}, Landroid/car/hardware/bcm/CarBcmManager;->setRightSdcWindowsAutoDownSwitch(I)V

    :cond_2
    :goto_0
    return v0
.end method

.method public setSecRowLeftBlowLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12724
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftBlowLevel(I)V

    return-void
.end method

.method public setSecRowRightBlowLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12760
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightBlowLevel(I)V

    return-void
.end method

.method public setSecRowSeatEasyEntrySwitchStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18432
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSecRowSeatEasyEntrySwitchStatus(I)V

    const v0, 0x21401dfc

    const/4 v1, 0x0

    .line 18434
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18436
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSfmAnglePos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19988
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSfmAnglePos(I)V

    return-void
.end method

.method public setSfmCtrl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19954
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSfmCtrl(I)V

    return-void
.end method

.method public setShadeControllerComfortCommand(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15820
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmShadeControllerComfortCommand(I)V

    return-void
.end method

.method public setShadeControllerInitialization(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15885
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmShadeControllerInitialization(I)V

    return-void
.end method

.method public setShadeControllerPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15834
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmShadeControllerPosition(I)V

    return-void
.end method

.method public setShcReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13504
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmShcReq(I)V

    return-void
.end method

.method public setSmartLightAcc(I)V
    .locals 2

    const v0, 0x2140aa11

    const/4 v1, 0x0

    .line 22464
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightBreakWarning(I)V
    .locals 2

    const v0, 0x2140aa0d

    const/4 v1, 0x0

    .line 22402
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightBrightness(I)V
    .locals 2

    const v0, 0x2140aa0f

    const/4 v1, 0x0

    .line 22431
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightCharging(I)V
    .locals 2

    const v0, 0x2140aa0c

    const/4 v1, 0x0

    .line 22387
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightDisplaySwitch(I)V
    .locals 2

    const v0, 0x2140aa01

    const/4 v1, 0x0

    .line 22224
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightEngineOff(I)V
    .locals 2

    const v0, 0x2140aa07

    const/4 v1, 0x0

    .line 22314
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightEngineOn(I)V
    .locals 2

    const v0, 0x2140aa05

    const/4 v1, 0x0

    .line 22284
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightExtremeCooling(I)V
    .locals 2

    const v0, 0x2140aa14

    const/4 v1, 0x0

    .line 22514
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightExtremeHeating(I)V
    .locals 2

    const v0, 0x2140aa13

    const/4 v1, 0x0

    .line 22499
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightGearWarning(I)V
    .locals 2

    const v0, 0x2140aa06

    const/4 v1, 0x0

    .line 22299
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightHandsDetection(I)V
    .locals 2

    const v0, 0x2140aa10

    const/4 v1, 0x0

    .line 22447
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightIPA(I)V
    .locals 2

    const v0, 0x2140aa12

    const/4 v1, 0x0

    .line 22484
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightIncommingCall(I)V
    .locals 2

    const v0, 0x2140aa0b

    const/4 v1, 0x0

    .line 22374
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightLaneChange(I)V
    .locals 2

    const v0, 0x2140aa09

    const/4 v1, 0x0

    .line 22346
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightNapWellnessStatus(I)V
    .locals 2

    const v0, 0x2140aa1a

    const/4 v1, 0x0

    .line 22602
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightNavigationTurn(I)V
    .locals 2

    const v0, 0x2140aa08

    const/4 v1, 0x0

    .line 22330
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightOverSpeed(I)V
    .locals 2

    const v0, 0x2140aa15

    const/4 v1, 0x0

    .line 22529
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightParking(I)V
    .locals 2

    const v0, 0x2140aa17

    const/4 v1, 0x0

    .line 22560
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightSafeLock(I)V
    .locals 2

    const v0, 0x2140aa03

    const/4 v1, 0x0

    .line 22254
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightStandby(I)V
    .locals 2

    const v0, 0x2140aa04

    const/4 v1, 0x0

    .line 22269
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightTelephoneIncomming(I)V
    .locals 2

    const v0, 0x2140aa18

    const/4 v1, 0x0

    .line 22574
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightTravelAssist(I)V
    .locals 2

    const v0, 0x2140aa16

    const/4 v1, 0x0

    .line 22545
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightTurtleMod(I)V
    .locals 2

    const v0, 0x2140aa0e

    const/4 v1, 0x0

    .line 22418
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightUnlock(I)V
    .locals 2

    const v0, 0x2140aa02

    const/4 v1, 0x0

    .line 22239
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightVoiceAssistStatus(I)V
    .locals 2

    const v0, 0x2140aa19

    const/4 v1, 0x0

    .line 22588
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSmartLightVoiceAssistant(I)V
    .locals 2

    const v0, 0x2140aa0a

    const/4 v1, 0x0

    .line 22359
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSoftLvlConfigValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16326
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSoftLvlConfigValue(I)V

    return-void
.end method

.method public setStealthMode(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14152
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setStealthMode(I)V

    return-void
.end method

.method public setSteeringWheelHeatingStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16567
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSteeringWheelHeatingStatus(I)V

    return-void
.end method

.method public setStopNfcCardSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13086
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmNfcCardEnabled(I)V

    return-void
.end method

.method public setSunRoofComfortCommand(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405442

    const/4 v1, 0x0

    .line 22699
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSunRoofInitialization(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405444

    const/4 v1, 0x0

    .line 22764
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSunRoofPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405443

    const/4 v1, 0x0

    .line 22713
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSuspenWelcomeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16469
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSuspenWelcomeSwitch(I)V

    return-void
.end method

.method public setSwsControlSceneStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17632
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSwsControlSceneStatus(I)V

    return-void
.end method

.method public setSwsLogoLightBrightness(I)I
    .locals 2

    const v0, 0x2140542e

    const/4 v1, 0x0

    .line 21979
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setSwsLogoLightCartoonSwitch(I)I
    .locals 2

    const v0, 0x2140542d

    const/4 v1, 0x0

    .line 21941
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setSwsLogoLightSwitch(I)I
    .locals 2

    const v0, 0x2140542c

    const/4 v1, 0x0

    .line 21902
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 21904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setTargetAsHeightLvlConfigValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16238
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTargetAsHeightLvlConfigValue(I)V

    return-void
.end method

.method public setTrailerHitchSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17296
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrailerHitchSwitchStatus(I)V

    return-void
.end method

.method public setTrailerModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17875
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrailerModeStatus(I)V

    return-void
.end method

.method public setTrailerModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17857
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrailerModeSwitchStatus(I)V

    return-void
.end method

.method public setTransportModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17418
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTransportModeSwitchStatus(I)V

    return-void
.end method

.method public setTrdLeftDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17037
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdLeftDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setTrdLeftSeatHeatSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21581
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrdLeftSeatHeatSw(I)V

    return-void
.end method

.method public setTrdMiddleSeatHeatSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21617
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrdMiddleSeatHeatSw(I)V

    return-void
.end method

.method public setTrdRightDomeLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17070
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRightDomeLightSwitchStatus(I)V

    return-void
.end method

.method public setTrdRightSeatHeatSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21653
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrdRightSeatHeatSw(I)V

    return-void
.end method

.method public setTrunk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13526
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrunkOpen(I)V

    return-void
.end method

.method public setTrunkOpenRequestPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17225
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrunkOpenRequestPosition(I)V

    return-void
.end method

.method public setTrunkSetPositionRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17241
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTrunkSetPositionRequest(I)V

    return-void
.end method

.method public setTwcMode(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14337
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTwcMode(I)V

    return-void
.end method

.method public setTwcUpdownSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14355
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmTwcUpdownSwitch(I)V

    return-void
.end method

.method public setUnLockHazardLightSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16699
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmUnLockHazardLightSwitchStatus(I)V

    return-void
.end method

.method public setUnLockHornSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16765
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmUnLockHornSwitchStatus(I)V

    return-void
.end method

.method public setUnlockResponse(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12482
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmUnlockResponseMode(I)V

    return-void
.end method

.method public setVBWAllBrightness(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p1, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const p1, 0x21415499

    .line 24414
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setVBWAutoCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405492

    const/4 v1, 0x0

    .line 24052
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVBWLeftBrightness(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const p1, 0x21415497

    .line 24384
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setVBWMiddleLeftBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405493

    const/4 v1, 0x0

    .line 24082
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVBWMiddleRightBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405494

    const/4 v1, 0x0

    .line 24110
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVBWRearLeftBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405495

    const/4 v1, 0x0

    .line 24138
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVBWRearRightBrightness(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405496

    const/4 v1, 0x0

    .line 24166
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVBWRightBrightness(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const p1, 0x21415498

    .line 24399
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setVbsunroofBrightness(I)V
    .locals 2

    const v0, 0x21405422

    const/4 v1, 0x0

    .line 21715
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return-void
.end method

.method public setVentilate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12904
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVentilate()V

    return-void
.end method

.method public setWashCarModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17135
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWashCarModeSwitchStatus(I)V

    return-void
.end method

.method public setWindowLockState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14578
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWindowLockState(I)V

    return-void
.end method

.method public setWindowLowEnable(I)I
    .locals 2

    const v0, 0x2140543e

    const/4 v1, 0x0

    .line 22184
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 22186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setWindowLowEnable failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setWindowMoveCmd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11937
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWindowMoveCmd(II)V

    return-void
.end method

.method public setWindowMovePosition(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11957
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWindowMovePosition(IF)V

    return-void
.end method

.method public setWindowRemoteCtrlCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13137
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWindowRemoteCtrlCfg(I)V

    return-void
.end method

.method public setWindowsAutoUp(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15656
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmAutoWindowsControl(II)V

    return-void
.end method

.method public setWindowsMovePositions(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14281
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWindowsMovePositions(FFFF)V

    return-void
.end method

.method public setWiperInterval(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12301
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWiperInterval(I)V

    return-void
.end method

.method public setWiperRainDetectSensitivity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14498
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWiperRainDetectSensitivity(I)V

    return-void
.end method

.method public setWiperRainDetectSensitivityAndInactive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14521
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setWiperRainDetectSensitivityAndInactive(I)V

    return-void
.end method

.method public setWiperServiceMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13560
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmWiperServiceMode(I)V

    return-void
.end method

.method public setWiperSpeedSwitchState(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401ca2

    const/4 v1, 0x0

    .line 14800
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V

    return v1
.end method

.method public setWiperWashVoiceReq(I)I
    .locals 2

    const v0, 0x2140543c

    const/4 v1, 0x0

    .line 22144
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 22146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarBcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setX5dCinemaModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18535
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmX5dCinemaModeStatus(I)V

    return-void
.end method

.method public setXmeditationModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18551
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmXmeditationModeStatus(I)V

    return-void
.end method

.method public setXmovieModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18519
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmXmovieModeStatus(I)V

    return-void
.end method

.method public setXsleepModeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18503
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmXsleepModeStatus(I)V

    return-void
.end method

.method public setsdcBrakeCloseDoorCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18095
    iget-object v0, p0, Landroid/car/hardware/bcm/CarBcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBcmSdcBrakeCloseDoorCfg(I)V

    return-void
.end method
