.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;
.super Ljava/lang/Object;
.source "IBcmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_POS_SET_MEMORY_TYPE_NO_REQ:I = 0x0

.field public static final ALL_POS_SET_MEMORY_TYPE_RECALL_POSITION:I = 0x2

.field public static final ALL_POS_SET_MEMORY_TYPE_SAVE_POSITION:I = 0x1

.field public static final ARS_AUTO:I = 0x1

.field public static final ARS_FAULT:I = 0x1

.field public static final ARS_FOLD:I = 0x1

.field public static final ARS_INITED:I = 0x1

.field public static final ARS_INITING:I = 0x2

.field public static final ARS_INIT_INVALID:I = 0x3

.field public static final ARS_MANUAL:I = 0x2

.field public static final ARS_NOT_INITED:I = 0x0

.field public static final ARS_NO_FAULT:I = 0x0

.field public static final ARS_ST_FOLDING:I = 0x1

.field public static final ARS_ST_FOLD_DURG:I = 0x2

.field public static final ARS_ST_INITING:I = 0x6

.field public static final ARS_ST_STOP:I = 0x0

.field public static final ARS_ST_UNFOLDING:I = 0x3

.field public static final ARS_ST_UNFOLD_DURG:I = 0x4

.field public static final ARS_ST_ZERO_POS_LRN:I = 0x5

.field public static final ARS_UNFOLD:I = 0x2

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

.field public static final AS_LOCATION_ST_OFF:I = 0x0

.field public static final AS_LOCATION_ST_ON:I = 0x1

.field public static final AS_LOCATION_SW:Ljava/lang/String; = "as_location_save"

.field public static final AS_NO_FAULT:I = 0x0

.field public static final AS_RED_LAMP_AS_REQUEST:I = 0x1

.field public static final AS_RED_LAMP_NO_REQUEST:I = 0x0

.field public static final AS_S_LIMIT_FAULT:I = 0x1

.field public static final AS_YELLOW_LAMP_AS_REQUEST:I = 0x1

.field public static final AS_YELLOW_LAMP_BOTH_REQUEST:I = 0x3

.field public static final AS_YELLOW_LAMP_CDC_REQUEST:I = 0x2

.field public static final AS_YELLOW_LAMP_NO_REQUEST:I = 0x0

.field public static final BCM_ALL_DOME_LIGHT:I = 0x4

.field public static final BCM_ALL_FRONT_DOME_LIGHT:I = 0x5

.field public static final BCM_ALL_REAR_DOME_LIGHT:I = 0x6

.field public static final BCM_ALL_THIRD_ROW_DOME_LIGHT:I = 0x9

.field public static final BCM_AS_MODE_INVALID:I = -0x1

.field public static final BCM_AS_RESULT_FAULT:I = 0x3

.field public static final BCM_AS_RESULT_INVALID_VALUE:I = 0x2

.field public static final BCM_AS_RESULT_LEVELED:I = 0x1

.field public static final BCM_AS_RESULT_NO_TARGET:I = 0x0

.field public static final BCM_BRK_PEDAL_NOT_PRESSED:I = 0x0

.field public static final BCM_BRK_PEDAL_PRESSED:I = 0x1

.field public static final BCM_CAMPING_MODE_STATUS:I = 0x6

.field public static final BCM_CHARGE_PORT_CLOSED:I = 0x2

.field public static final BCM_CHARGE_PORT_FAULT:I = 0x3

.field public static final BCM_CHARGE_PORT_LOCK:I = 0x0

.field public static final BCM_CHARGE_PORT_MIDDLE:I = 0x1

.field public static final BCM_CHARGE_PORT_OPEN:I = 0x0

.field public static final BCM_CHARGE_PORT_UNKNOWN:I = -0x1

.field public static final BCM_CHARGE_PORT_UNLOCK:I = 0x1

.field public static final BCM_CHILD_LOCK_ALL_LOCK:I = 0x6

.field public static final BCM_CHILD_LOCK_ALL_UNLOCK:I = 0x1

.field public static final BCM_CHILD_LOCK_LEFT_LOCK:I = 0x4

.field public static final BCM_CHILD_LOCK_LEFT_UNLOCK:I = 0x2

.field public static final BCM_CHILD_LOCK_RIGHT_LOCK:I = 0x5

.field public static final BCM_CHILD_LOCK_RIGHT_UNLOCK:I = 0x3

.field public static final BCM_CMS_VIEW_ANGLE_FLAT:I = 0x1

.field public static final BCM_CMS_VIEW_ANGLE_NO_COMMAND:I = 0x0

.field public static final BCM_CMS_VIEW_ANGLE_WIDE:I = 0x2

.field public static final BCM_COMMON_ACTIVE:I = 0x1

.field public static final BCM_COMMON_INACTIVE:I = 0x0

.field public static final BCM_COMMON_INVALID:I = 0x2

.field public static final BCM_CWC_CHARGE_DONE:I = 0x2

.field public static final BCM_CWC_CHARGING:I = 0x1

.field public static final BCM_CWC_ERROR_FOD:I = 0x3

.field public static final BCM_CWC_ERROR_LOWVOL_PROTECT:I = 0x2

.field public static final BCM_CWC_ERROR_NOCOMMAND:I = 0x0

.field public static final BCM_CWC_ERROR_OVERVOL_PROTECT:I = 0x1

.field public static final BCM_CWC_ERROR_PEPS_INTERRUPT:I = 0x4

.field public static final BCM_CWC_ERROR_RX_ERROR:I = 0x5

.field public static final BCM_CWC_ERROR_TEMP_HIGH:I = 0x6

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_1:I = 0x1

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_2:I = 0x2

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_3:I = 0x3

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_4:I = 0x4

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_5:I = 0x5

.field public static final BCM_DOMELIGHT_BRIGHT_LEVEL_6:I = 0x6

.field public static final BCM_DOMELIGHT_MODE_DOME:I = 0x0

.field public static final BCM_DOMELIGHT_MODE_OFF:I = 0x0

.field public static final BCM_DOMELIGHT_MODE_ON:I = 0x1

.field public static final BCM_DOMELIGHT_SW_OFF:I = 0x0

.field public static final BCM_DOME_AUTO:I = 0x1

.field public static final BCM_DOME_OFF:I = 0x3

.field public static final BCM_DOME_ON:I = 0x2

.field public static final BCM_DOOR_CLOSE:I = 0x0

.field public static final BCM_DOOR_FL:I = 0x0

.field public static final BCM_DOOR_FR:I = 0x1

.field public static final BCM_DOOR_OPEN:I = 0x1

.field public static final BCM_DOOR_RL:I = 0x2

.field public static final BCM_DOOR_RR:I = 0x3

.field public static final BCM_DOOR_UNKNOWN:I = -0x1

.field public static final BCM_FL_DOME_LIGHT:I = 0x0

.field public static final BCM_FR_DOME_LIGHT:I = 0x1

.field public static final BCM_LAMP_AUTO:I = 0x3

.field public static final BCM_LAMP_AUTO_FAR:I = 0x4

.field public static final BCM_LAMP_LOW_BEAM:I = 0x2

.field public static final BCM_LAMP_OFF:I = 0x0

.field public static final BCM_LAMP_POSITION:I = 0x1

.field public static final BCM_LEFT_CHARGE_PORT:I = 0x1

.field public static final BCM_LIGHT_ME_HOME_15S:I = 0x1

.field public static final BCM_LIGHT_ME_HOME_30S:I = 0x2

.field public static final BCM_LIGHT_ME_HOME_60S:I = 0x3

.field public static final BCM_LIGHT_ME_HOME_OFF:I = 0x0

.field public static final BCM_LOW_BEAM_OFF_DIAG_ACTIVE:I = 0x1

.field public static final BCM_LOW_BEAM_OFF_DIAG_NO:I = 0x2

.field public static final BCM_LOW_BEAM_OFF_DIAG_NOT_ACTIVE:I = 0x0

.field public static final BCM_LOW_BEAM_OFF_DIAG_YES:I = 0x1

.field public static final BCM_MAINTENANCE_MODE_STATUS:I = 0x1

.field public static final BCM_MIRROR_REVERSE_BOTH:I = 0x3

.field public static final BCM_MIRROR_REVERSE_LEFT:I = 0x1

.field public static final BCM_MIRROR_REVERSE_OFF:I = 0x0

.field public static final BCM_MIRROR_REVERSE_RIGHT:I = 0x2

.field public static final BCM_MIRROR_TYPE_FOLD:I = 0x0

.field public static final BCM_MIRROR_TYPE_UNFOLD:I = 0x1

.field public static final BCM_NO_REQUEST_MODE_STATUS:I = 0x0

.field public static final BCM_PARK_LIGHT_FM_B_ACTIVE:I = 0x1

.field public static final BCM_READY_ENABLE_STATE_ACTIVE:I = 0x1

.field public static final BCM_READY_ENABLE_STATE_INACTIVE:I = 0x0

.field public static final BCM_REAR_TRUNK_CLOSE:I = 0x3

.field public static final BCM_REAR_TRUNK_OPEN:I = 0x1

.field public static final BCM_REAR_TRUNK_PAUSE:I = 0x2

.field public static final BCM_REAR_TRUNK_SWS_OPEN:I = 0x5

.field public static final BCM_RIGHT_CHARGE_PORT:I = 0x2

.field public static final BCM_RL_DOME_LIGHT:I = 0x2

.field public static final BCM_RR_DOME_LIGHT:I = 0x3

.field public static final BCM_RUNNING_LIGHT_ALL:I = 0x3

.field public static final BCM_RUNNING_LIGHT_LEFT:I = 0x1

.field public static final BCM_RUNNING_LIGHT_OFF:I = 0x0

.field public static final BCM_RUNNING_LIGHT_RIGHT:I = 0x2

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_DRIVER:I = 0x1

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_FRONT:I = 0x2

.field public static final BCM_SDC_BRAKE_CLOSE_DOOR_NOT_ACTIVE:I = 0x0

.field public static final BCM_SEAT_BLOW_LEVEL_1:I = 0x1

.field public static final BCM_SEAT_BLOW_LEVEL_2:I = 0x2

.field public static final BCM_SEAT_BLOW_LEVEL_3:I = 0x3

.field public static final BCM_SEAT_BLOW_LEVEL_OFF:I = 0x0

.field public static final BCM_SEAT_HEAT_LEVEL_1:I = 0x1

.field public static final BCM_SEAT_HEAT_LEVEL_2:I = 0x2

.field public static final BCM_SEAT_HEAT_LEVEL_3:I = 0x3

.field public static final BCM_SEAT_HEAT_LEVEL_OFF:I = 0x0

.field public static final BCM_SLIDE_DOOR_CTRL_CLOSE:I = 0x2

.field public static final BCM_SLIDE_DOOR_CTRL_OPEN:I = 0x1

.field public static final BCM_SLIDE_DOOR_CTRL_STOP:I = 0x3

.field public static final BCM_SLIDE_DOOR_LOCK_STATE_LOCKED:I = 0x1

.field public static final BCM_SLIDE_DOOR_LOCK_STATE_UNLOCKED:I = 0x0

.field public static final BCM_SLIDE_DOOR_MODE_MANUAL_MODE:I = 0x1

.field public static final BCM_SLIDE_DOOR_MODE_POWER_MODE:I = 0x0

.field public static final BCM_SLIDE_DOOR_STATE_BRAKEMODE:I = 0x7

.field public static final BCM_SLIDE_DOOR_STATE_CLOSED:I = 0x2

.field public static final BCM_SLIDE_DOOR_STATE_CLOSING:I = 0x4

.field public static final BCM_SLIDE_DOOR_STATE_DOORFREE:I = 0x6

.field public static final BCM_SLIDE_DOOR_STATE_FULLOPEN:I = 0x1

.field public static final BCM_SLIDE_DOOR_STATE_OPENING:I = 0x3

.field public static final BCM_SLIDE_DOOR_STATE_STOPPED:I = 0x5

.field public static final BCM_SLIDE_DOOR_STATE_UNKNOWN:I = 0x0

.field public static final BCM_STATUS_OFF:I = 0x0

.field public static final BCM_STATUS_ON:I = 0x1

.field public static final BCM_TL_DOME_LIGHT:I = 0x7

.field public static final BCM_TRAILER_MODE_STATUS:I = 0x3

.field public static final BCM_TRANSPORT_MODE_STATUS:I = 0x2

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_1:I = 0x2

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_2:I = 0x3

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_3:I = 0x4

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_4:I = 0x5

.field public static final BCM_TRUNK_FULL_OPEN_POS_LEVEL_5:I = 0x6

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

.field public static final BCM_TRUNK_WORK_MODE_ST_ANTI_PLAY_MODE:I = 0x2

.field public static final BCM_TRUNK_WORK_MODE_ST_MANUAL_MODE:I = 0x3

.field public static final BCM_TRUNK_WORK_MODE_ST_NORMAL:I = 0x0

.field public static final BCM_TRUNK_WORK_MODE_ST_OTA_PROBITY_MODE:I = 0x4

.field public static final BCM_TRUNK_WORK_MODE_ST_SYSTEM_ERROR:I = 0x1

.field public static final BCM_TRUNK_WORK_MODE_ST_VEHICLE_SPEED_PROBITY_MODE:I = 0x5

.field public static final BCM_TR_DOME_LIGHT:I = 0x8

.field public static final BCM_TTM_SW_CLOSE:I = 0x0

.field public static final BCM_TTM_SW_CLOSING:I = 0x4

.field public static final BCM_TTM_SW_FAULT:I = 0x2

.field public static final BCM_TTM_SW_MIDDLE:I = 0x2

.field public static final BCM_TTM_SW_OPEN:I = 0x1

.field public static final BCM_TTM_SW_OPENING:I = 0x5

.field public static final BCM_TTM_SW_STOP:I = 0x3

.field public static final BCM_UNLOCK_LIGHT_AND_AVAS:I = 0x2

.field public static final BCM_UNLOCK_LIGHT_AND_HORN:I = 0x0

.field public static final BCM_UNLOCK_RESPONSE_LIGHT:I = 0x1

.field public static final BCM_WINDOW_ALL:I = 0x4

.field public static final BCM_WINDOW_FRONT:I = 0x5

.field public static final BCM_WINDOW_FRONT_LEFT:I = 0x0

.field public static final BCM_WINDOW_FRONT_RIGHT:I = 0x1

.field public static final BCM_WINDOW_KEY_CONTROL_AUTO:I = 0x1

.field public static final BCM_WINDOW_KEY_CONTROL_MANUAL:I = 0x2

.field public static final BCM_WINDOW_KEY_CONTROL_OFF:I = 0x3

.field public static final BCM_WINDOW_LEFT:I = 0x7

.field public static final BCM_WINDOW_ONE_KEY_DOWN:I = 0x2

.field public static final BCM_WINDOW_ONE_KEY_UP:I = 0x1

.field public static final BCM_WINDOW_POS_INVALID:F = 255.0f

.field public static final BCM_WINDOW_REAR:I = 0x6

.field public static final BCM_WINDOW_REAR_LEFT:I = 0x2

.field public static final BCM_WINDOW_REAR_RIGHT:I = 0x3

.field public static final BCM_WINDOW_RIGHT:I = 0x8

.field public static final BCM_WINDOW_TYPE_DOWN_AUTO:I = 0x4

.field public static final BCM_WINDOW_TYPE_DOWN_MANUALLY:I = 0x3

.field public static final BCM_WINDOW_TYPE_INVALID:I = 0x0

.field public static final BCM_WINDOW_TYPE_STOP:I = 0x3

.field public static final BCM_WINDOW_TYPE_STOP_ACTION:I = 0x5

.field public static final BCM_WINDOW_TYPE_UP_AUTO:I = 0x2

.field public static final BCM_WINDOW_TYPE_UP_MANUALLY:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_1:I = 0x1

.field public static final BCM_WIPER_INTERNAL_GEAR_2:I = 0x2

.field public static final BCM_WIPER_INTERNAL_GEAR_3:I = 0x3

.field public static final BCM_WIPER_INTERNAL_GEAR_4:I = 0x4

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_1:I = 0x1

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_2:I = 0x2

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_3:I = 0x3

.field public static final BCM_WIPER_RAIN_DETECT_SENSITIVITY_LEVEL_4:I = 0x4

.field public static final BCM_WIPER_SPEED_SW_STATE_AUTO:I = 0x4

.field public static final BCM_WIPER_SPEED_SW_STATE_HIGH:I = 0x2

.field public static final BCM_WIPER_SPEED_SW_STATE_INTERMITTENT:I = 0x3

.field public static final BCM_WIPER_SPEED_SW_STATE_LOW:I = 0x1

.field public static final BCM_WIPER_SPEED_SW_STATE_OFF:I = 0x0

.field public static final CDU_BONNET_CLOSED:I = 0x0

.field public static final CDU_BONNET_OPENED:I = 0x1

.field public static final CDU_CHILD_LOCK_ALL_LOCK:I = 0x4

.field public static final CDU_CHILD_LOCK_ALL_UNLOCK:I = 0x1

.field public static final CDU_CHILD_LOCK_LEFT_LOCK:I = 0x3

.field public static final CDU_CHILD_LOCK_RIGHT_LOCK:I = 0x2

.field public static final CDU_DOME_STATUS_AUTO:I = 0x1

.field public static final CDU_DOME_STATUS_OFF:I = 0x3

.field public static final CDU_DOME_STATUS_ON:I = 0x2

.field public static final CDU_LIGHT_ME_HOME_15S:I = 0x1

.field public static final CDU_LIGHT_ME_HOME_30S:I = 0x2

.field public static final CDU_LIGHT_ME_HOME_60S:I = 0x3

.field public static final CDU_LIGHT_ME_HOME_OFF:I = 0x0

.field public static final CDU_TRUNK_CLOSED:I = 0x0

.field public static final CDU_TRUNK_OPENED:I = 0x2

.field public static final CDU_TRUNK_OPENING:I = 0x1

.field public static final CLOSE_SUN_SHADE:I = 0x1

.field public static final CMS_BRIGHT_FLAG_SAVE:I = 0x1

.field public static final CMS_POS_LL_DEFAULT:F = 50.0f

.field public static final CMS_POS_LR_DEFAULT:F = 50.0f

.field public static final CMS_POS_RL_DEFAULT:F = 50.0f

.field public static final CMS_POS_RR_DEFAULT:F = 50.0f

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_BLE:I = 0x4

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_NFC:I = 0x3

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_POLLING:I = 0x2

.field public static final DOOR_UNLOCK_REQUEST_SOURCE_RKE:I = 0x1

.field public static final DRV_BELT_BUCKLED:I = 0x0

.field public static final DRV_BELT_UNBUCKLED_WARNING:I = 0x1

.field public static final FIND_CARD_LIGHT:I = 0x2

.field public static final FIND_CARD_LIGHT_AND_HORN:I = 0x1

.field public static final HEADLAMPS_STATUS_AUTO:I = 0x3

.field public static final HEADLAMPS_STATUS_HIGH_BEAM:I = 0x4

.field public static final HEADLAMPS_STATUS_LOW_BEAM:I = 0x2

.field public static final HEADLAMPS_STATUS_OFF:I = 0x0

.field public static final HEADLAMPS_STATUS_POSITION:I = 0x1

.field public static final HEIGHT_LVL_CONFIG_0:I = 0x3

.field public static final HEIGHT_LVL_CONFIG_HL1:I = 0x2

.field public static final HEIGHT_LVL_CONFIG_HL2:I = 0x1

.field public static final HEIGHT_LVL_CONFIG_INVALID:I = -0x1

.field public static final HEIGHT_LVL_CONFIG_LL1:I = 0x4

.field public static final HEIGHT_LVL_CONFIG_LL2:I = 0x5

.field public static final HEIGHT_LVL_CONFIG_LL3:I = 0x6

.field public static final HEIGHT_LVL_CONFIG_OFF:I = 0x0

.field public static final ID_BCM_EBW:I = 0x21401c1f

.field public static final IMS_ANGLE_NARROW:I = 0x1

.field public static final IMS_ANGLE_NORMAL:I = 0x0

.field public static final IMS_ANGLE_WIDEN:I = 0x2

.field public static final IMS_AUTO_VISION_OFF:I = 0x0

.field public static final IMS_AUTO_VISION_ON:I = 0x1

.field public static final IMS_BRIGHTNESS_LEVEL1:I = 0x1

.field public static final IMS_BRIGHTNESS_LEVEL2:I = 0x2

.field public static final IMS_BRIGHTNESS_LEVEL3:I = 0x3

.field public static final IMS_BRIGHTNESS_LEVEL4:I = 0x4

.field public static final IMS_BRIGHTNESS_LEVEL5:I = 0x5

.field public static final IMS_MODE_CAMERA:I = 0x1

.field public static final IMS_MODE_MIRROR:I = 0x0

.field public static final IMS_MOVE_DOWN:I = 0x2

.field public static final IMS_MOVE_NARROW:I = 0x4

.field public static final IMS_MOVE_UP:I = 0x1

.field public static final IMS_MOVE_WIDE:I = 0x3

.field public static final IMS_SYSTEM_FAILURE:I = 0x2

.field public static final IMS_SYSTEM_NORMAL:I = 0x1

.field public static final IMS_SYSTEM_OFF:I = 0x0

.field public static final IMS_VERTICAL_LEVEL1:I = 0x1

.field public static final IMS_VERTICAL_LEVEL2:I = 0x2

.field public static final IMS_VERTICAL_LEVEL3:I = 0x3

.field public static final IMS_VERTICAL_LEVEL4:I = 0x4

.field public static final IMS_VERTICAL_LEVEL5:I = 0x5

.field public static final IMS_VERTICAL_LEVEL6:I = 0x6

.field public static final IMS_VERTICAL_LEVEL7:I = 0x7

.field public static final KEY_AUTH_ST_FAIL:I = 0x3

.field public static final KEY_AUTH_ST_INACTIVE:I = 0x0

.field public static final KEY_AUTH_ST_START_IDENTIFICATION:I = 0x1

.field public static final KEY_AUTH_ST_SUCCESS:I = 0x2

.field public static final LAMP_HEIGHT_AUTO_MODE:I = 0x5

.field public static final LAMP_HEIGHT_LEVEL_0:I = 0x0

.field public static final LAMP_HEIGHT_LEVEL_1:I = 0x1

.field public static final LAMP_HEIGHT_LEVEL_2:I = 0x2

.field public static final LAMP_HEIGHT_LEVEL_3:I = 0x3

.field public static final LAMP_HEIGHT_MANUAL_MODE:I = 0x6

.field public static final L_MIRROR_LR_DEFAULT:I = 0x32

.field public static final L_MIRROR_UD_DEFAULT:I = 0x32

.field public static final MIRROR_ADJUST_STATE_NULL:I = 0x0

.field public static final MIRROR_CONTROL_PENDING:I = 0x2

.field public static final MIRROR_CONTROL_START:I = 0x1

.field public static final MIRROR_CONTROL_STOP:I = 0x3

.field public static final MIRROR_MOVE_DOWN:I = 0x2

.field public static final MIRROR_MOVE_LEFT:I = 0x3

.field public static final MIRROR_MOVE_RIGHT:I = 0x4

.field public static final MIRROR_MOVE_UP:I = 0x1

.field public static final OPEN_SUN_SHADE:I = 0x2

.field public static final REAR_MIRROR_FOLDING:I = 0x1

.field public static final REAR_MIRROR_POS_FOLDED:I = 0x2

.field public static final REAR_MIRROR_POS_MIDDLE:I = 0x1

.field public static final REAR_MIRROR_POS_UNFOLDED:I = 0x0

.field public static final REAR_MIRROR_STOPPED:I = 0x0

.field public static final REAR_MIRROR_UNFOLDING:I = 0x2

.field public static final REAR_SCREEN_STATE:Ljava/lang/String; = "screen_state_control_3"

.field public static final REAR_SCREEN_STATE_CLOSED:I = 0x0

.field public static final REAR_SCREEN_STATE_MIDDLE:I = 0x2

.field public static final REAR_SCREEN_STATE_OPENED:I = 0x1

.field public static final R_MIRROR_LR_DEFAULT:I = 0x32

.field public static final R_MIRROR_UD_DEFAULT:I = 0x32

.field public static final SDC_CONTROL_CLOSE:I = 0x1

.field public static final SDC_CONTROL_OPEN:I = 0x2

.field public static final SDC_CONTROL_PAUSE:I = 0x3

.field public static final SDC_KEY_CTRL_CFG_DRIVER_DOOR:I = 0x0

.field public static final SDC_KEY_CTRL_CFG_FRONT_DOOR:I = 0x1

.field public static final SDC_MAX_DOOR_ANGLE_DEFAULT:I = 0x64

.field public static final SDC_MIN_DOOR_ANGLE_DEFAULT:I = 0x28

.field public static final SDC_SYS_RUNNING_STATUS_CLOSED:I = 0x1

.field public static final SDC_SYS_RUNNING_STATUS_CLOSING:I = 0x3

.field public static final SDC_SYS_RUNNING_STATUS_INITIAL:I = 0x0

.field public static final SDC_SYS_RUNNING_STATUS_LOCK_STATUS_ERROR:I = 0x7

.field public static final SDC_SYS_RUNNING_STATUS_OPENING:I = 0x2

.field public static final SDC_SYS_RUNNING_STATUS_OPEN_FINISHED:I = 0x5

.field public static final SDC_SYS_RUNNING_STATUS_PAUSE:I = 0x4

.field public static final SDC_SYS_RUNNING_STATUS_PREVENT_PLAYING_MODE:I = 0x6

.field public static final SDC_WINDOW_AUTO_DOWN_SWITCH_STATUS_OFF:I = 0x1

.field public static final SDC_WINDOW_AUTO_DOWN_SWITCH_STATUS_ON:I = 0x2

.field public static final SHADE_CONTROLLER_MOTOR_STATUS_STOP:I = 0x0

.field public static final SLIDE_DOOR_OPENING_LITMT:I = 0x2d

.field public static final SOFT_LVL_CONFIG_HARD:I = 0x3

.field public static final SOFT_LVL_CONFIG_MEDIUM:I = 0x2

.field public static final SOFT_LVL_CONFIG_SOFT:I = 0x1

.field public static final STEER_CONTROL_PENDING:I = 0x2

.field public static final STEER_CONTROL_START:I = 0x1

.field public static final STEER_CONTROL_STOP:I = 0x3

.field public static final STEER_HEAT_LEVEL_1:I = 0x1

.field public static final STEER_HEAT_LEVEL_2:I = 0x2

.field public static final STEER_HEAT_LEVEL_3:I = 0x3

.field public static final STEER_HEAT_LEVEL_OFF:I = 0x0

.field public static final STEER_MOVE_DOWN:I = 0x2

.field public static final STEER_MOVE_IN:I = 0x2

.field public static final STEER_MOVE_INVALID:I = -0x1

.field public static final STEER_MOVE_OUT:I = 0x1

.field public static final STEER_MOVE_UP:I = 0x1

.field public static final STOP_SUN_SHADE:I = 0x3

.field public static final TTM_CONNECT:I = 0x1

.field public static final TTM_DENORMALIZE_STATUS_INITIALIZED:I = 0x1

.field public static final TTM_DENORMALIZE_STATUS_NOT_INITIALIZED:I = 0x0

.field public static final TTM_HOOK_MOTOR_STATUS_CLOSING:I = 0x2

.field public static final TTM_HOOK_MOTOR_STATUS_NOT_MOVE:I = 0x0

.field public static final TTM_HOOK_MOTOR_STATUS_OPENING:I = 0x1

.field public static final TTM_NO_CONNECT:I = 0x0

.field public static final TTM_SYS_ERROR_STATUS_ERROR:I = 0x1

.field public static final TTM_SYS_ERROR_STATUS_NO_ERROR:I = 0x0

.field public static final TURN_LAMP_ACTIVE:I = 0x1

.field public static final TURN_LAMP_INACTIVE:I = 0x0

.field public static final UNLOCK_STATUS_LIGHT:I = 0x1

.field public static final UNLOCK_STATUS_LIGHT_AND_HORN:I = 0x0

.field public static final WINDOW_INIT_FAILED:I = 0x1

.field public static final WINDOW_LOCK_ACTIVE:I = 0x1

.field public static final WINDOW_LOCK_INACTIVE:I = 0x0

.field public static final XPILOT_ST_INIT:I = 0x3

.field public static final XPILOT_ST_NOT_ACTIVATED:I = 0x4

.field public static final XPILOT_ST_OFF:I = 0x2


# virtual methods
.method public abstract controlInOutSteer(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlLeftMirrorMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlLeftSdc(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlLeftSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation
.end method

.method public abstract controlRearTrunk(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation
.end method

.method public abstract controlRightMirrorMove(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlRightSdc(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlRightSlideDoor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation
.end method

.method public abstract controlSunShade(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "control"
        }
    .end annotation
.end method

.method public abstract controlVerSteer(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controlType",
            "direction"
        }
    .end annotation
.end method

.method public abstract controlWinVent()V
.end method

.method public abstract controlWindowAuto(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract getASFaultWarning()I
.end method

.method public abstract getAirSuspensionHeight()I
.end method

.method public abstract getAirSuspensionHeightSp()I
.end method

.method public abstract getAirSuspensionRepairMode()Z
.end method

.method public abstract getAirSuspensionSoft()I
.end method

.method public abstract getAllWindowPosition()[F
.end method

.method public abstract getArsFaultState()I
.end method

.method public abstract getArsInitSt()I
.end method

.method public abstract getArsPosition()I
.end method

.method public abstract getArsVehLockAutoFoldSwitchStatus()Z
.end method

.method public abstract getArsWorkMode()I
.end method

.method public abstract getArsWorkSt()I
.end method

.method public abstract getAsAutoLevelingResult()I
.end method

.method public abstract getAsCampingModeSwitch()Z
.end method

.method public abstract getAsDrivingMode()I
.end method

.method public abstract getAsHeightChangingStatus()Z
.end method

.method public abstract getAsHoistModeSwitchStatus()Z
.end method

.method public abstract getAsLocationControlSw()Z
.end method

.method public abstract getAsLocationSw()Z
.end method

.method public abstract getAsLockModeStatus()I
.end method

.method public abstract getAsRedLampFault()Z
.end method

.method public abstract getAsRedLampRequestState()I
.end method

.method public abstract getAsRequestEspState()I
.end method

.method public abstract getAsWelcomeMode()Z
.end method

.method public abstract getAsYellowLampFaultForCdc()Z
.end method

.method public abstract getAsYellowLampRequestState()I
.end method

.method public abstract getAutoWindowLockSw()Z
.end method

.method public abstract getBackDefrost()Z
.end method

.method public abstract getBcmReadyEnableState()I
.end method

.method public abstract getBonnetState()I
.end method

.method public abstract getCacheLightMeHomeTime()I
.end method

.method public abstract getCarpetLightWelcomeMode()Z
.end method

.method public abstract getChargePortUnlock(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation
.end method

.method public abstract getChildLeftLock()Z
.end method

.method public abstract getChildLock()I
.end method

.method public abstract getChildRightLock()Z
.end method

.method public abstract getCmsAutoBrightSw()Z
.end method

.method public abstract getCmsBright()I
.end method

.method public abstract getCmsHighSpdAssistSw()Z
.end method

.method public abstract getCmsLocation()[F
.end method

.method public abstract getCmsLocation(Z)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getCmsLowSpdAssistSw()Z
.end method

.method public abstract getCmsObjectRecognizeSw()Z
.end method

.method public abstract getCmsReverseAssistSw()Z
.end method

.method public abstract getCmsTurnAssistSw()Z
.end method

.method public abstract getCmsViewAngle()I
.end method

.method public abstract getColumnTravelAdjEnableSt()Z
.end method

.method public abstract getCustomerModeFlag()Z
.end method

.method public abstract getCwcChargeErrorSt()I
.end method

.method public abstract getCwcChargeSt()I
.end method

.method public abstract getCwcFrChargeErrorSt()I
.end method

.method public abstract getCwcFrChargeSt()I
.end method

.method public abstract getCwcRlChargeErrorSt()I
.end method

.method public abstract getCwcRlChargeSt()I
.end method

.method public abstract getCwcRrChargeErrorSt()I
.end method

.method public abstract getCwcRrChargeSt()I
.end method

.method public abstract getDaytimeRunningLightsOutputStatus()I
.end method

.method public abstract getDomeLightBright()I
.end method

.method public abstract getDomeLightState()I
.end method

.method public abstract getDomeLightStatus(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightType"
        }
    .end annotation
.end method

.method public abstract getDoorLockState()Z
.end method

.method public abstract getDoorState(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDoorsState()[I
.end method

.method public abstract getDriveAutoLock()Z
.end method

.method public abstract getDrvBeltStatus()I
.end method

.method public abstract getEasyLoadingSwitch()Z
.end method

.method public abstract getElcTrunkPos()I
.end method

.method public abstract getElcTrunkState()I
.end method

.method public abstract getEngineeringModeStatus()I
.end method

.method public abstract getEnvironmentMode()I
.end method

.method public abstract getEsbModeSp()Z
.end method

.method public abstract getFWiperActiveSt()I
.end method

.method public abstract getFrontMirrorHeat()Z
.end method

.method public abstract getHeadLampState()I
.end method

.method public abstract getHeadLampStateSp()I
.end method

.method public abstract getHighBeamLamp()Z
.end method

.method public abstract getImsAutoVisionSw()I
.end method

.method public abstract getImsBrightLevel()I
.end method

.method public abstract getImsHighSpeedAutoVisionSt()I
.end method

.method public abstract getImsMode()I
.end method

.method public abstract getImsSystemSt()I
.end method

.method public abstract getImsVisionAngleLevel()I
.end method

.method public abstract getImsVisionVerticalLevel()I
.end method

.method public abstract getInnerParkingLampStates()[I
.end method

.method public abstract getKeyAuthState()I
.end method

.method public abstract getLampHeightLevel()I
.end method

.method public abstract getLeaveAutoLock()Z
.end method

.method public abstract getLeftMirrorLRPos()I
.end method

.method public abstract getLeftMirrorLRPos(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getLeftMirrorUDPos()I
.end method

.method public abstract getLeftMirrorUDPos(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getLeftRearMirrorPosStatus()I
.end method

.method public abstract getLeftRightRearMirrorFoldOutputStatus()[I
.end method

.method public abstract getLeftSdcDoorPos()I
.end method

.method public abstract getLeftSdcSysRunningState()I
.end method

.method public abstract getLeftSlideDoorFaultSt()Z
.end method

.method public abstract getLeftSlideDoorLockState()I
.end method

.method public abstract getLeftSlideDoorMode()I
.end method

.method public abstract getLeftSlideDoorPosition()I
.end method

.method public abstract getLeftSlideDoorState()I
.end method

.method public abstract getLeftSlideDoorThermalProtectSt()Z
.end method

.method public abstract getLightMeHome()Z
.end method

.method public abstract getLightMeHomeTime()I
.end method

.method public abstract getLockAvasSw()Z
.end method

.method public abstract getLockResponseNewSp()I
.end method

.method public abstract getLowBeamLamp()Z
.end method

.method public abstract getLowBeamOffConfirmSt()I
.end method

.method public abstract getMirrorPosition()[I
.end method

.method public abstract getMirrorPosition(Z)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getMirrorSavedPos()Ljava/lang/String;
.end method

.method public abstract getNearAutoUnlock()Z
.end method

.method public abstract getOuterParkingLampStates()[I
.end method

.method public abstract getParkLamp()Z
.end method

.method public abstract getParkingAutoUnlock()Z
.end method

.method public abstract getParkingLampStates()[I
.end method

.method public abstract getPollingLightWelcomeMode()Z
.end method

.method public abstract getPollingOpenCfg()Z
.end method

.method public abstract getPsnSeatHeatLevel()I
.end method

.method public abstract getPsnSeatVentLevel()I
.end method

.method public abstract getRLSeatHeatLevel()I
.end method

.method public abstract getRRSeatHeatLevel()I
.end method

.method public abstract getRearFogLamp()Z
.end method

.method public abstract getRearLogoLightStatus()Z
.end method

.method public abstract getRearLogoLightSw()Z
.end method

.method public abstract getRearScreenState()I
.end method

.method public abstract getRearSeatWelcomeMode()Z
.end method

.method public abstract getRearTrunk()I
.end method

.method public abstract getRearViewMirrorsAdjustStates()[I
.end method

.method public abstract getRearWiperRepairMode()Z
.end method

.method public abstract getReverseMirrorMode()I
.end method

.method public abstract getRightMirrorLRPos()I
.end method

.method public abstract getRightMirrorLRPos(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getRightMirrorUDPos()I
.end method

.method public abstract getRightMirrorUDPos(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCache"
        }
    .end annotation
.end method

.method public abstract getRightRearMirrorPosStatus()I
.end method

.method public abstract getRightSdcDoorPos()I
.end method

.method public abstract getRightSdcSysRunningState()I
.end method

.method public abstract getRightSlideDoorFaultSt()Z
.end method

.method public abstract getRightSlideDoorLockState()I
.end method

.method public abstract getRightSlideDoorMode()I
.end method

.method public abstract getRightSlideDoorPosition()I
.end method

.method public abstract getRightSlideDoorState()I
.end method

.method public abstract getRightSlideDoorThermalProtectSt()Z
.end method

.method public abstract getSavedCmsLocation()[F
.end method

.method public abstract getSdcBrakeCloseDoorCfg()I
.end method

.method public abstract getSdcKeyOpenCtrlCfg()I
.end method

.method public abstract getSdcMaxAutoDoorOpeningAngle()I
.end method

.method public abstract getSdcWindowsAutoDownSwitch()Z
.end method

.method public abstract getSeatHeatLevel()I
.end method

.method public abstract getSeatVentLevel()I
.end method

.method public abstract getSeatWelcomeMode()Z
.end method

.method public abstract getStealthMode()Z
.end method

.method public abstract getSteerHeatLevel()I
.end method

.method public abstract getSteerPos()[I
.end method

.method public abstract getSteerSavedPos()[I
.end method

.method public abstract getStopNfcCardSw()Z
.end method

.method public abstract getSunShadePos()I
.end method

.method public abstract getTrailerHitchSwitchStatus()I
.end method

.method public abstract getTrailerModeStatus()Z
.end method

.method public abstract getTrunkFullOpenPos()I
.end method

.method public abstract getTrunkWorkModeStatus()I
.end method

.method public abstract getTtmDenormalizeStatus()I
.end method

.method public abstract getTtmHookMotorStatus()I
.end method

.method public abstract getTtmLampConnectStatus()I
.end method

.method public abstract getTtmSystemError()Z
.end method

.method public abstract getTurnLampState()[I
.end method

.method public abstract getUnLockResponseNewSp()I
.end method

.method public abstract getUnlockReqSrc()I
.end method

.method public abstract getUnlockResponse()I
.end method

.method public abstract getUnlockResponseSp()I
.end method

.method public abstract getWinPos(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowType"
        }
    .end annotation
.end method

.method public abstract getWindowLockState()Z
.end method

.method public abstract getWiperInterval()I
.end method

.method public abstract getWiperRepairMode()Z
.end method

.method public abstract getWiperSensitivity()I
.end method

.method public abstract isAutoDoorHandleEnabled()Z
.end method

.method public abstract isAutoLampHeight()Z
.end method

.method public abstract isChildModeEnable()Z
.end method

.method public abstract isCwcFRSwEnable()Z
.end method

.method public abstract isCwcRLSwEnable()Z
.end method

.method public abstract isCwcRRSwEnable()Z
.end method

.method public abstract isCwcSwEnable()Z
.end method

.method public abstract isDrvSeatOccupied()Z
.end method

.method public abstract isEbwEnabled()Z
.end method

.method public abstract isEsbEnabled()Z
.end method

.method public abstract isHighSpdCloseWinEnabled()Z
.end method

.method public abstract isLedDrlEnabled()Z
.end method

.method public abstract isLeftDoorHotKeyEnable()Z
.end method

.method public abstract isMirrorAutoDown()Z
.end method

.method public abstract isMirrorAutoFoldEnable()Z
.end method

.method public abstract isMirrorHeatEnabled()Z
.end method

.method public abstract isParkLampIncludeFmB()Z
.end method

.method public abstract isPhoneReminderSwEnable()Z
.end method

.method public abstract isRearWiperFault()Z
.end method

.method public abstract isRearWiperSpeedSwitchOff()Z
.end method

.method public abstract isRightDoorHotKeyEnable()Z
.end method

.method public abstract isRightSlideDoorBeyondOpeningLimit()Z
.end method

.method public abstract isRsbWarningEnabled()Z
.end method

.method public abstract isSunShadeAntiPinch()Z
.end method

.method public abstract isSunShadeHotProtect()Z
.end method

.method public abstract isSunShadeIceBreak()Z
.end method

.method public abstract isSunShadeInitialized()Z
.end method

.method public abstract isSunShadeMotorStopped()Z
.end method

.method public abstract isTrunkSensorEnable()Z
.end method

.method public abstract isWindowInitFailed(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract isWiperFault()Z
.end method

.method public abstract isWiperSpeedSwitchOff()Z
.end method

.method public abstract openCarBonnet()V
.end method

.method public abstract resetSunShade()V
.end method

.method public abstract restorePsnSeatHeatLevel()V
.end method

.method public abstract restoreRLSeatHeatLevel()V
.end method

.method public abstract restoreRRSeatHeatLevel()V
.end method

.method public abstract restoreSeatHeatLevel()V
.end method

.method public abstract restoreSeatVentLevel()V
.end method

.method public abstract restoreSteerHeatLevel()V
.end method

.method public abstract saveCmsLocation([F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract saveMirrorPos(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toString"
        }
    .end annotation
.end method

.method public abstract saveSteerPos([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setARSFoldOrUnfold(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fold"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionHeight(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionHeight(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionSoft(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soft"
        }
    .end annotation
.end method

.method public abstract setAirSuspensionSoft(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soft",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAllChildLock(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lock",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setArsVehLockAutoFoldSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setArsWorkMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAsCampingModeSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsDrivingMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setAsLocationControlSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAsLocationControlSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAsLocationSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setAsLocationSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "on",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setAsLocationValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setAsTrailerModeSwitchStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAsWelcomeMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAutoDoorHandleEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAutoLampHeight(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation
.end method

.method public abstract setAutoLampHeight(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "auto",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAutoWindowLockSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAutoWindowLockSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setBackDefrost(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCarpetLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCentralLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setChargePortUnlock(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "port",
            "state"
        }
    .end annotation
.end method

.method public abstract setChildLock(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockCmd"
        }
    .end annotation
.end method

.method public abstract setChildLock(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftSide",
            "lock"
        }
    .end annotation
.end method

.method public abstract setChildLock(ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftSide",
            "lock",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setChildModeEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "fromUser"
        }
    .end annotation
.end method

.method public abstract setCmsAutoBrightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsBright(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract setCmsHighSpdAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsLocation(FFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftHPos",
            "leftVPos",
            "rightHPos",
            "rightVPos"
        }
    .end annotation
.end method

.method public abstract setCmsLocation([F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setCmsLowSpdAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsObjectRecognizeSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsReverseAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsTurnAssistSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCmsViewAngle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation
.end method

.method public abstract setCmsViewRecovery(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setColumnTravelAdjEnableSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCustomerModeFlag(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCustomerModeFlag(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setCwcFRSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcRLSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcRRSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCwcSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChecked"
        }
    .end annotation
.end method

.method public abstract setCwcSwEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isChecked",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setDomeLight(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setDomeLightBright(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setDomeLightBright(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setDomeLightSw(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lightType",
            "enable"
        }
    .end annotation
.end method

.method public abstract setDriveAutoLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEasyLoadingSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEbwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEngineeringModeStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract setEsbEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEsbEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "saveEnable"
        }
    .end annotation
.end method

.method public abstract setFrontMirrorHeat(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHeadLampState(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupId",
            "needSp"
        }
    .end annotation
.end method

.method public abstract setHighSpdCloseWin(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setHighSpdCloseWin(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setImsAutoModeReq(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setImsAutoVisionSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sw"
        }
    .end annotation
.end method

.method public abstract setImsBrightLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setImsHighSpeedAutoVisionSw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "st"
        }
    .end annotation
.end method

.method public abstract setImsMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setImsResetReq()V
.end method

.method public abstract setImsVisionCtrl(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "control",
            "direction"
        }
    .end annotation
.end method

.method public abstract setLampHeightLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation
.end method

.method public abstract setLampHeightLevel(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLeaveAutoLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLedDrlEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLeftDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLeftSlideDoorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setLightMeHome(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLightMeHomeTime(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLockAvasSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setLockResponseNew(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLowBeamOffConfirmSt(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setMirrorAutoDown(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMirrorAutoFoldEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMirrorHeat(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMirrorLocation(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftHPos",
            "leftVPos",
            "rightHPos",
            "rightVPos"
        }
    .end annotation
.end method

.method public abstract setNearAutoUnlock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setParkLampIncludeFmB(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation
.end method

.method public abstract setParkLampIncludeFmB(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "active",
            "needSp"
        }
    .end annotation
.end method

.method public abstract setParkingAutoUnlock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setParkingAutoUnlock(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needMove"
        }
    .end annotation
.end method

.method public abstract setPhoneReminderSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPollingLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPollingOpenCfg(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPsnSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setPsnSeatVentLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setRLSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setRRSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setRearFogLamp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearLogoLightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearLogoLightSw(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setRearSeatWelcomeMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setRearWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setReverseMirrorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setReverseMirrorMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needMove"
        }
    .end annotation
.end method

.method public abstract setReverseMirrorMode(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "needMove",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setRightDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRightSlideDoorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setRsbWarning(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSdcBrakeCloseDoorCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract setSdcBrakeCloseDoorCfg(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfg",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setSdcKeyCloseCtrlCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract setSdcKeyOpenCtrlCfg(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method public abstract setSdcMaxAutoDoorOpeningAngle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation
.end method

.method public abstract setSdcWindowsAutoDownSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation
.end method

.method public abstract setSeatHeatLevel(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setSeatVentLevel(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setSeatWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSeatWelcomeMode(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setStealthMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSteerHeatLevel(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setSteerHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setSteerPos([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setSteerPos([II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "memoryreq"
        }
    .end annotation
.end method

.method public abstract setSteerVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setStopNfcCardSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setSunShadePos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrailerHitchSwitchStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrailerModeStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrailerModeStatus(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "storeEnable"
        }
    .end annotation
.end method

.method public abstract setTransportMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrunkFullOpenPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setTrunkSensorEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setTrunkSensorEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNew(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setUnLockResponseNew(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setUnlockResponse(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setWinPos(IF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowType",
            "position"
        }
    .end annotation
.end method

.method public abstract setWindowLockState(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setWindowMoveCmd(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "cmd"
        }
    .end annotation
.end method

.method public setWindowsMovePositions(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flPos",
            "frPos",
            "rlPos",
            "rrPos"
        }
    .end annotation

    return-void
.end method

.method public abstract setWiperInterval(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation
.end method

.method public abstract setWiperRepairMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setWiperSensitivity(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setWiperSensitivity(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "needSave",
            "inactive"
        }
    .end annotation
.end method

.method public abstract startArsInit()V
.end method
