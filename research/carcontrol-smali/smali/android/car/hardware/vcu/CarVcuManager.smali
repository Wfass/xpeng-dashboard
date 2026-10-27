.class public final Landroid/car/hardware/vcu/CarVcuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarVcuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;,
        Landroid/car/hardware/vcu/CarVcuManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AC_VOLTAGE_STATUS_FAULT:I = 0x4

.field public static final AC_VOLTAGE_STATUS_INVALID:I = 0x1

.field public static final AC_VOLTAGE_STATUS_SINGLE_PHASE:I = 0x2

.field public static final AC_VOLTAGE_STATUS_THREE_PHASE:I = 0x3

.field public static final AC_VOLT_ERROR:I = 0x2

.field public static final AI_WADING_MODE_ACTIVE:I = 0x1

.field public static final AI_WADING_MODE_NO_ACTIVE:I = 0x0

.field public static final ANTITHEFT_INTRUDE_ACTIVE:I = 0x1

.field public static final ANTITHEFT_INTRUDE_DEACTIVE:I = 0x2

.field public static final ANTITHEFT_INTRUDE_NO_COMMAND:I = 0x0

.field public static final AS_DRVIVING_MODE_COMFORT_STATUS:I = 0x1

.field public static final AS_DRVIVING_MODE_CUSTOMER_MODE_STATUS:I = 0x4

.field public static final AS_DRVIVING_MODE_ECO_STATUS:I = 0x0

.field public static final AS_DRVIVING_MODE_NORMAL_STATUS:I = 0x2

.field public static final AS_DRVIVING_MODE_NOT_VALID_STATUS:I = 0x6

.field public static final AS_DRVIVING_MODE_OFF_ROAD_STATUS:I = 0x5

.field public static final AS_DRVIVING_MODE_SPORT_STATUS:I = 0x3

.field public static final AWD_MODE_F1R9:I = 0x9

.field public static final AWD_MODE_F2R8:I = 0x8

.field public static final AWD_MODE_F3R7:I = 0x7

.field public static final AWD_MODE_F4R6:I = 0x6

.field public static final AWD_MODE_F5R5:I = 0x5

.field public static final AWD_MODE_F6R4:I = 0x4

.field public static final AWD_MODE_F7R3:I = 0x3

.field public static final AWD_MODE_F8R2:I = 0x2

.field public static final AWD_MODE_F9R1:I = 0x1

.field public static final AWD_MODE_FWD:I = 0x0

.field public static final AWD_MODE_RWD:I = 0xa

.field public static final BATTERY_COLDING:I = 0x1

.field public static final BATTERY_KEEP_TEMP_MODE_DEFAULT:I = 0x0

.field public static final BATTERY_KEEP_TEMP_MODE_EXIT:I = 0x7

.field public static final BATTERY_KEEP_TEMP_MODE_FAILURE:I = 0x6

.field public static final BATTERY_KEEP_TEMP_MODE_FINISH:I = 0x2

.field public static final BATTERY_KEEP_TEMP_MODE_NO_NEEDS:I = 0x3

.field public static final BATTERY_KEEP_TEMP_MODE_ONGOING:I = 0x1

.field public static final BATTERY_KEEP_TEMP_MODE_STOP_BY_SOC:I = 0x5

.field public static final BATTERY_KEEP_TEMP_MODE_STOP_BY_UNPLUG:I = 0x4

.field public static final BATTERY_NORMAL:I = 0x0

.field public static final BATTERY_NOT_OVERHEATING:I = 0x0

.field public static final BATTERY_OVERHEATING:I = 0x1

.field public static final BATTERY_TOO_COLD:I = 0x1

.field public static final BATTERY_WARMING:I = 0x1

.field public static final BATTERY_WARMING_START:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BATTERY_WARMING_STOP:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BATT_TEMP_START_REQ:I = 0x2

.field public static final BATT_TEMP_STOP_REQ:I = 0x1

.field public static final BMS_CHARGE_STATUS_BMS_ABNORMAL_STOP:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_BMS_ERROR_STOP:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_CHARGE_FULL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_CHARGING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_DC_CHARGER_ERROR_STOP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_DC_CHARGER_NORMAL_STOP:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_DEFAULT:I = 0x0

.field public static final BMS_CHARGE_STATUS_IPU_ERR:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_LDCU_STOP:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_NOT_READY:I = 0x2

.field public static final BMS_CHARGE_STATUS_NO_CHARGE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_OBC_STOP:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BMS_CHARGE_STATUS_READY:I = 0x1

.field public static final BOOST_ACTIVE_ST_ACTIVE:I = 0x1

.field public static final BOOST_ACTIVE_ST_FAILURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_ACTIVE_ST_INACTIVE:I = 0x0

.field public static final BOOST_NOT_AVAILIABLE_REASON_AUTO_DRIVING:I = 0x2

.field public static final BOOST_NOT_AVAILIABLE_REASON_DEFAULT:I = 0x0

.field public static final BOOST_NOT_AVAILIABLE_REASON_DRIVE_MODE:I = 0x1

.field public static final BOOST_NOT_AVAILIABLE_REASON_GEAR_LEVEL:I = 0x3

.field public static final BOOST_NOT_AVAILIABLE_REASON_LAUNCH_MODE:I = 0x5

.field public static final BOOST_NOT_AVAILIABLE_REASON_POWER_SYS_ERROR:I = 0x4

.field public static final BRAKE_FLUID_ELECTRIC_ERROR:I = 0x2

.field public static final BRAKE_FLUID_EMPTY:I = 0x1

.field public static final BRAKE_FLUID_NORMAL:I = 0x0

.field public static final CAR_MOVING:I = 0x0

.field public static final CAR_STATIONARY:I = 0x1

.field public static final CHANGE_STOP_REASON_BMS_ERROR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANGE_STOP_REASON_DC_ERROR_STOP:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANGE_STOP_REASON_DC_NORMAL_STOP:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANGE_STOP_REASON_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANGE_STOP_REASON_FULL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_ERROR_GAIN:I = 0x1

.field public static final CHARGE_ERROR_NONE:I = 0x0

.field public static final CHARGE_GUN_AC_AND_DC_LINK:I = 0x3

.field public static final CHARGE_GUN_AC_LINK:I = 0x1

.field public static final CHARGE_GUN_DC_LINK:I = 0x2

.field public static final CHARGE_GUN_EVCC_LINK:I = 0x6

.field public static final CHARGE_GUN_HALF_LINK:I = 0xa

.field public static final CHARGE_GUN_INVALID:I = 0x7

.field public static final CHARGE_GUN_MODE_COLLISION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_GUN_Mode_Collision:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_GUN_NO_LINK:I = 0x0

.field public static final CHARGE_GUN_V2G_LINK:I = 0x9

.field public static final CHARGE_GUN_V2L_LINK:I = 0x4

.field public static final CHARGE_GUN_V2L_LINK_LOW_POWER_OBC:I = 0x5

.field public static final CHARGE_GUN_V2V_LINK:I = 0x8

.field public static final CHARGE_GUN_WIRELESS_LINK:I = 0xb

.field public static final CHARGE_LOCK_TYPE_CSS:I = 0x1

.field public static final CHARGE_LOCK_TYPE_GB:I = 0x0

.field public static final CHARGE_MODE_DELAY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_MODE_FIXED_TIME:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_MODE_IMMEDIATELY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_MODE_NOT_DEFINE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_MODE_SECTION:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_MODE_STOP:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_SPEED_SLOW:I = 0x1

.field public static final CHARGE_SPEED_SLOW_INVALID:I = 0x0

.field public static final CHARGE_STATUS_APPOINTMENT:I = 0x1

.field public static final CHARGE_STATUS_CHARGER_ERROR:I = 0x14

.field public static final CHARGE_STATUS_CHARGE_DONE:I = 0x4

.field public static final CHARGE_STATUS_CHARGE_ERROR:I = 0x3

.field public static final CHARGE_STATUS_CHARGE_STOPPING:I = 0x13

.field public static final CHARGE_STATUS_CHARGING:I = 0x2

.field public static final CHARGE_STATUS_CHARGING_PAUSED:I = 0x15

.field public static final CHARGE_STATUS_DISCHARGE_DONE:I = 0x6

.field public static final CHARGE_STATUS_DISCHARGE_ERROR:I = 0x7

.field public static final CHARGE_STATUS_DISCHARGING:I = 0x5

.field public static final CHARGE_STATUS_FULLY_CHARGED:I = 0x10

.field public static final CHARGE_STATUS_INVALID:I = 0xf

.field public static final CHARGE_STATUS_PREPARE:I = 0x0

.field public static final CHARGE_STATUS_REMOVE_CHAGRE_CONNECTOR:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHARGE_STATUS_REMOVE_CHARGE_CONNECTOR:I = 0x11

.field public static final CHARGE_STATUS_V2V_DISCHARGE_DONE:I = 0x9

.field public static final CHARGE_STATUS_V2V_DISCHARGE_ERROR:I = 0xa

.field public static final CHARGE_STATUS_V2V_DISCHARGING:I = 0x8

.field public static final CHARGE_STATUS_WIRELESS_CHARGE_DONE:I = 0x19

.field public static final CHARGE_STATUS_WIRELESS_CHARGE_ERROR:I = 0x1a

.field public static final CHARGE_STATUS_WIRELESS_CHARGING:I = 0x18

.field public static final CHARGE_STATUS_WIRELESS_PRE:I = 0x16

.field public static final CHARGE_STATUS_WIRELESS_READY:I = 0x17

.field public static final CHARGE_STATUS_WRONG_OPERATION:I = 0x12

.field public static final CHARGE_STOP_REASON_BMS_ERROR:I = 0x2

.field public static final CHARGE_STOP_REASON_DC_ERROR_STOP:I = 0x4

.field public static final CHARGE_STOP_REASON_DC_NORMAL_STOP:I = 0x3

.field public static final CHARGE_STOP_REASON_DEFAULT:I = 0x0

.field public static final CHARGE_STOP_REASON_FULL:I = 0x1

.field public static final CHARGE_STOP_REASON_VCU_STOP:I = 0x5

.field public static final CLTC_MODE:I = 0x2

.field public static final CRUISE_CONTROL_STATUS_CONTROLLING:I = 0x2

.field public static final CRUISE_CONTROL_STATUS_ERROR:I = 0x3

.field public static final CRUISE_CONTROL_STATUS_OFF:I = 0x0

.field public static final CRUISE_CONTROL_STATUS_ON:I = 0x1

.field private static final DBG:Z = false

.field public static final DC_CHARGER_VOL_LOW_500V:I = 0x1

.field public static final DC_CHARGER_VOL_LOW_750V:I = 0x2

.field public static final DC_CHARGER_VOL_LOW_CONFIRM:I = 0x1

.field public static final DC_CHARGER_VOL_LOW_NO_CONFIRM:I = 0x0

.field public static final DC_CHARGER_VOL_NORMAL:I = 0x0

.field public static final DC_V2G_WORK_DEFAULT:I = 0x0

.field public static final DC_V2G_WORK_DISCHARGING:I = 0x1

.field public static final DISABLE_EXTREME_FAST_CHARGING:I = 0x2

.field public static final DISCHARGE_ERROR_APPLIANCE:I = 0x2

.field public static final DISCHARGE_ERROR_APPLI_AND_VEHICLE:I = 0x1

.field public static final DISCHARGE_ERROR_NORMAL:I = 0x0

.field public static final DISCHARGE_ERROR_VEHICLE:I = 0x3

.field public static final DISCHG_INCAR_ERR_DEFAULT:I = 0x0

.field public static final DISCHG_INCAR_ERR_INSUFFICENT_OUTPUT_CHARGER:I = 0x2

.field public static final DISCHG_INCAR_ERR_OTHER:I = 0x3

.field public static final DISCHG_INCAR_ERR_OVERCURRENT:I = 0x1

.field public static final DISCHG_INCAR_ERR_REACH_SOC_LIMIT:I = 0x4

.field public static final DRIVE_MILE_INCREASE_OFF:I = 0x0

.field public static final DRIVE_MILE_INCREASE_ON:I = 0x1

.field public static final DRIVE_MODE_FB_ACC:I = 0x1

.field public static final DRIVE_MODE_FB_AP_MODE:I = 0x6

.field public static final DRIVE_MODE_FB_AUTO:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVE_MODE_FB_AUTO_DRIVE:I = 0x5

.field public static final DRIVE_MODE_FB_AUTO_PARK:I = 0x3

.field public static final DRIVE_MODE_FB_CIP:I = 0x4

.field public static final DRIVE_MODE_FB_MANUAL:I = 0x0

.field public static final DRIVE_MODE_FB_NOT_MANUAL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVE_MODE_FB_REMOTE_CONTROL:I = 0x2

.field public static final DRIVING_MODE_STATUS_ADAPTIVE:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_MODE_STATUS_ANTISICKNESS_OFF:I = 0x8

.field public static final DRIVING_MODE_STATUS_ANTISICKNESS_ON:I = 0x7

.field public static final DRIVING_MODE_STATUS_BOOST:I = 0x11

.field public static final DRIVING_MODE_STATUS_COMFORT:I = 0x0

.field public static final DRIVING_MODE_STATUS_COMFORT_V2:I = 0x7

.field public static final DRIVING_MODE_STATUS_ECO:I = 0x1

.field public static final DRIVING_MODE_STATUS_ECO_PLUS_OFF:I = 0x6

.field public static final DRIVING_MODE_STATUS_ECO_PLUS_ON:I = 0x5

.field public static final DRIVING_MODE_STATUS_GEEK:I = 0xf

.field public static final DRIVING_MODE_STATUS_INDIVIDUAL:I = 0x12

.field public static final DRIVING_MODE_STATUS_NORMAL:I = 0xa

.field public static final DRIVING_MODE_STATUS_NO_COMMAND:I = 0xc

.field public static final DRIVING_MODE_STATUS_OFFROAD:I = 0x10

.field public static final DRIVING_MODE_STATUS_RACING:I = 0xd

.field public static final DRIVING_MODE_STATUS_SHOW_MODE_1:I = 0x3

.field public static final DRIVING_MODE_STATUS_SHOW_MODE_2:I = 0x4

.field public static final DRIVING_MODE_STATUS_SIMULATE_R_WHEEL_DRIVE:I = 0x9

.field public static final DRIVING_MODE_STATUS_SNOW:I = 0x13

.field public static final DRIVING_MODE_STATUS_SPORT:I = 0x2

.field public static final DRIVING_MODE_STATUS_USERDEFINE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_MODE_STATUS_WADING:I = 0x15

.field public static final DRIVING_MODE_STATUS_WET:I = 0x14

.field public static final DRIVING_MODE_STATUS_XPEDAL_MODE:I = 0x5

.field public static final DRIVING_STATUS_MODE_COMFORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_STATUS_MODE_ECO:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_STATUS_MODE_SPORT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_STATUS_SHOW_MODE_1:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVING_STATUS_SHOW_MODE_2:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DYNAMIC_MODE:I = 0x3

.field public static final EMISSION_TEST_ETMODE:I = 0x1

.field public static final EMISSION_TEST_HIGH_IDLE:I = 0x3

.field public static final EMISSION_TEST_NORMAL_IDLE:I = 0x2

.field public static final EMISSION_TEST_NO_COMMAND:I = 0x0

.field public static final EMISSION_TEST_OFF:I = 0x4

.field public static final EMS_ST_ACTIVIE:I = 0x1

.field public static final EMS_ST_NOT_ACTIVIE:I = 0x0

.field public static final ENABLE_EXTREME_FAST_CHARGING:I = 0x1

.field public static final ENERGY_MODE_INTELLI:I = 0x4

.field public static final ENERGY_MODE_PURE_ElEC_PRIORITY_FORCED:I = 0x2

.field public static final ENERGY_MODE_PURE_ElEC_PRIORITY_STD:I = 0x1

.field public static final ENERGY_MODE_SOC_KEEP:I = 0x3

.field public static final ENERGY_STATUS_RECOVERY_DEFAULT:I = 0x0

.field public static final ENERGY_STATUS_RECOVERY_HIGH:I = 0x3

.field public static final ENERGY_STATUS_RECOVERY_INTELLIGENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENERGY_STATUS_RECOVERY_LOW:I = 0x1

.field public static final ENERGY_STATUS_RECOVERY_MIDDLE:I = 0x2

.field public static final ENERGY_STATUS_RECOVERY_XPEDAL:I = 0x4

.field public static final ENGINE_START_NO_REQUEST:I = 0x0

.field public static final ENGINE_START_USER_ACTIVE:I = 0x3

.field public static final ENGINE_START_USER_STOPPED:I = 0x4

.field public static final ENGINE_START_WADING_ACTIVE:I = 0x1

.field public static final ENGINE_START_WADING_STOPPED:I = 0x2

.field private static final EPSINON:D = 1.0E-6

.field public static final ERROR_CODE_INVALID_DATA:I = 0x9

.field public static final EV_SYSTEM_ERROR_LAMP_OFF:I = 0x0

.field public static final EV_SYSTEM_ERROR_LAMP_ON:I = 0x1

.field public static final EXHIBITION_MODE_STATUS_OFF:I = 0x0

.field public static final EXHIBITION_MODE_STATUS_ON:I = 0x1

.field public static final EXTREME_FAST_CHARGING_STATUS_ENTER_FAILURE:I = 0x3

.field public static final EXTREME_FAST_CHARGING_STATUS_HEATING:I = 0x1

.field public static final EXTREME_FAST_CHARGING_STATUS_PATTERNS_MAINTAINING:I = 0x2

.field public static final EXTREME_FAST_CHARGING_STATUS_SIGN_OUT:I = 0x4

.field public static final EXTREM_ENERGY_SAVING_MODE_ACTIVATING:I = 0x1

.field public static final EXTREM_ENERGY_SAVING_MODE_ACTIVE:I = 0x2

.field public static final EXTREM_ENERGY_SAVING_MODE_DEACTIVATING:I = 0x4

.field public static final EXTREM_ENERGY_SAVING_MODE_NOT_ACTIVE:I = 0x0

.field public static final FLASH_CHARGE_FLAG_DEFAULT:I = 0x0

.field public static final FLASH_CHARGE_FLAG_EXTREME:I = 0x3

.field public static final FLASH_CHARGE_FLAG_FAST:I = 0x2

.field public static final FLASH_CHARGE_FLAG_NORMAL:I = 0x1

.field public static final GEAR_LEVEL_D:I = 0x1

.field public static final GEAR_LEVEL_INVALID:I = 0x0

.field public static final GEAR_LEVEL_N:I = 0x2

.field public static final GEAR_LEVEL_P:I = 0x4

.field public static final GEAR_LEVEL_R:I = 0x3

.field public static final GUN_DEFAULT:I = 0x0

.field public static final GUN_HALFLINK_NOTIFICATION:I = 0x1

.field public static final GUN_LOCK_FAIL:I = 0x1

.field public static final GUN_UNLOCK_FAIL:I = 0x2

.field public static final ID_ESP_RWS_FAULT_WARNING:I = 0x2140242d

.field public static final ID_IPB_BRK_FLD_WARN:I = 0x214090d3

.field public static final ID_OBC_FAULT_PHASE_LOSS:I = 0x21401265

.field public static final ID_VCU_2ND_OFF_RES:I = 0x21401268

.field public static final ID_VCU_ACCCS_CUR:I = 0x2160124c

.field public static final ID_VCU_ACCCS_VOLT:I = 0x2160124d

.field public static final ID_VCU_ACCPEDAL_PERCENTAGE:I = 0x214012eb

.field public static final ID_VCU_ACCPEDAL_SIG:I = 0x21401218

.field public static final ID_VCU_ACC_G_VALUES_FLOAT:I = 0x216112b3

.field public static final ID_VCU_AC_CUR_MAX_CHG_CON:I = 0x2140129b

.field public static final ID_VCU_AC_INPUT_STATUS:I = 0x2140121f

.field public static final ID_VCU_AI_WADING_MODE:I = 0x214012e8

.field public static final ID_VCU_ANTITHEFT_INTRUDE_REQ:I = 0x214012ed

.field public static final ID_VCU_ANTITHEFT_INTRUDE_ST:I = 0x214112ec

.field public static final ID_VCU_AS_DRV_MODE_ST:I = 0x21404001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_AUTO_EASY_LOADING_SW:I = 0x21401299

.field public static final ID_VCU_AVERAGE_VEHICLE_CONSUME:I = 0x2160121b

.field public static final ID_VCU_BATCOLD_DISP:I = 0x2140121c

.field public static final ID_VCU_BATTERY_MAX_TEMPERATURE:I = 0x214012d1

.field public static final ID_VCU_BATTERY_MIN_TEMPERATURE:I = 0x21601224

.field public static final ID_VCU_BATTERY_WARMING_STATUS:I = 0x2140120a

.field public static final ID_VCU_BATTSOC_SATE:I = 0x21401214

.field public static final ID_VCU_BATT_TEMP_REQ:I = 0x214012ae

.field public static final ID_VCU_BAT_BUMP_RECRD:I = 0x21401279

.field public static final ID_VCU_BAT_CHRG:I = 0x2140120d

.field public static final ID_VCU_BAT_KEEP_TEMP_MODE:I = 0x21401253

.field public static final ID_VCU_BAT_KEEP_TEMP_REQ:I = 0x21401254

.field public static final ID_VCU_BMS_ACT_SOC:I = 0x2160128c

.field public static final ID_VCU_BMS_BATT_CURR:I = 0x21601287

.field public static final ID_VCU_BMS_BATT_SOC_DISP:I = 0x21601290

.field public static final ID_VCU_BMS_BATT_TEMP_AVG:I = 0x21401289

.field public static final ID_VCU_BMS_BATT_VOLT:I = 0x21401288

.field public static final ID_VCU_BMS_CHRG_ST:I = 0x2140128a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_BMS_ERR:I = 0x21401250

.field public static final ID_VCU_BMS_MAX_AVAIL_CHRG_PWR:I = 0x2160128d

.field public static final ID_VCU_BMS_MAX_AVAIL_DISCHRG_PWR:I = 0x2160128e

.field public static final ID_VCU_BMS_SOC_SLOW:I = 0x2140124f

.field public static final ID_VCU_BOOST_ACTIVE_ST:I = 0x214012cf

.field public static final ID_VCU_BOOST_NOT_AVAIL_REASON:I = 0x214012d8

.field public static final ID_VCU_BRAKE_SIG:I = 0x21401212
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_VCU_BRKPEDAL_PERCENTAGE:I = 0x214012ea

.field public static final ID_VCU_BRKPEDAL_ST:I = 0x21401217

.field public static final ID_VCU_BUTT_PRE_WARM_ST:I = 0x214012b8

.field public static final ID_VCU_CAR_STATIONARY_ST:I = 0x2140125c

.field public static final ID_VCU_CDC_DUMP_DETECT_ST:I = 0x214012ab

.field public static final ID_VCU_CDC_POTHOLE_DETECT_ST:I = 0x214012ac

.field public static final ID_VCU_CHARGE_BATTCAP:I = 0x2140120f

.field public static final ID_VCU_CHARGE_BATTCAP_FLOAT:I = 0x2160126d

.field public static final ID_VCU_CHARGE_COMPLETE_TIME:I = 0x2140122c

.field public static final ID_VCU_CHARGE_ERROR:I = 0x21401220

.field public static final ID_VCU_CHARGE_GUN_HALFLINK_ST:I = 0x214012a4

.field public static final ID_VCU_CHARGE_GUN_STATUS:I = 0x21401228

.field public static final ID_VCU_CHARGE_LOCK_FAULT_ST:I = 0x214012a3

.field public static final ID_VCU_CHARGE_LOCK_TYPE:I = 0x214012d3

.field public static final ID_VCU_CHARGE_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_CHARGE_STATION_TRG_PWR:I = 0x214012ba

.field public static final ID_VCU_CHARGE_STATUS:I = 0x21401229

.field public static final ID_VCU_CHARG_ADD_DST:I = 0x216012cb

.field public static final ID_VCU_CHARG_START_TIME:I = 0x216012cc

.field public static final ID_VCU_CHGSPEED_SLOW_DSP:I = 0x2140121d

.field public static final ID_VCU_CHRG_DIFF:I = 0x21401293

.field public static final ID_VCU_CHRG_GUN_CMD:I = 0x21401269

.field public static final ID_VCU_CHRG_HV_LOAD_PWR:I = 0x21601292

.field public static final ID_VCU_CHRG_PWR:I = 0x21601291

.field public static final ID_VCU_COLD_WARNING_TIPS:I = 0x21401209

.field public static final ID_VCU_CON_ENERGY_REGEN:I = 0x214012b5

.field public static final ID_VCU_CRUISECONTROL_STDISP:I = 0x2140124e

.field public static final ID_VCU_DBG_ERH_STSYSERRLVL:I = 0x2140121e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_VCU_DBG_SUP_STSUP:I = 0x2140122b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_VCU_DCCCS_CURR:I = 0x21601206

.field public static final ID_VCU_DCCCS_SUMU:I = 0x21601207

.field public static final ID_VCU_DCCH_VOL_LOW:I = 0x21401294

.field public static final ID_VCU_DCC_CHRGSTOP_REA:I = 0x21401213

.field public static final ID_VCU_DC_PRE_WARM_REQ:I = 0x2140126b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_DC_PRE_WARM_ST:I = 0x2140126c

.field public static final ID_VCU_DC_PRE_WARM_SW:I = 0x2140126a

.field public static final ID_VCU_DC_V2G_STATUS:I = 0x214012f3

.field public static final ID_VCU_DEPOLARIZE_ST:I = 0x21401278

.field public static final ID_VCU_DISCHARGE_BATTCAP:I = 0x2140120e

.field public static final ID_VCU_DISCHARGE_BATTCAP_FLOAT:I = 0x2160126e

.field public static final ID_VCU_DISCHARGE_ERROR_REASON:I = 0x2140129f

.field public static final ID_VCU_DISCHARGE_IN_CAR_ERR:I = 0x214012bb

.field public static final ID_VCU_DRIMODE_FB:I = 0x21401227

.field public static final ID_VCU_DRIVER_OVERRIDE_ST:I = 0x214012e2

.field public static final ID_VCU_DRIVE_MILE_INCREASE:I = 0x21401256

.field public static final ID_VCU_DRIVE_MODE_GET:I = 0x2140122a

.field public static final ID_VCU_DSTBAT_DISP_CLTC:I = 0x21401264
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_DSTBAT_DISP_CLTC_FLOAT:I = 0x2160127a

.field public static final ID_VCU_DSTBAT_DISP_DYNAMIC:I = 0x2160128f

.field public static final ID_VCU_DSTBAT_DISP_FLOAT:I = 0x21601295

.field public static final ID_VCU_DSTBAT_DISP_NEDC_FLOAT:I = 0x21601286

.field public static final ID_VCU_DSTBAT_DISP_WLTP_FLOAT:I = 0x2160127b

.field public static final ID_VCU_DSTFUEL_DISP_CLTC_FLOAT:I = 0x216012c3

.field public static final ID_VCU_DSTFUEL_DISP_DYNAMIC:I = 0x216012c5

.field public static final ID_VCU_DSTFUEL_DISP_FLOAT:I = 0x216012c0

.field public static final ID_VCU_DSTFUEL_DISP_NEDC_FLOAT:I = 0x216012c4

.field public static final ID_VCU_DSTFUEL_DISP_WLTP_FLOAT:I = 0x216012c2

.field public static final ID_VCU_DSTVEH_DISP_CLTC_FLOAT:I = 0x216012c8

.field public static final ID_VCU_DSTVEH_DISP_DYNAMIC:I = 0x216012ca

.field public static final ID_VCU_DSTVEH_DISP_FLOAT:I = 0x216012c6

.field public static final ID_VCU_DSTVEH_DISP_NEDC_FLOAT:I = 0x216012c9

.field public static final ID_VCU_DSTVEH_DISP_WLTP_FLOAT:I = 0x216012c7

.field public static final ID_VCU_EBSBATT_CURR:I = 0x21601216

.field public static final ID_VCU_EBSBATT_VOLT:I = 0x21601215

.field public static final ID_VCU_EBS_BATT_SOC:I = 0x21401226

.field public static final ID_VCU_ELECTRICIT_PERCENT:I = 0x21401202

.field public static final ID_VCU_EMER_CHRG_GUN_LOCK:I = 0x214012a6

.field public static final ID_VCU_EMISSION_TEST_MODE:I = 0x214012d6

.field public static final ID_VCU_EMS_COOLANT_TEMP:I = 0x214012d5

.field public static final ID_VCU_EMS_ST:I = 0x214012be

.field public static final ID_VCU_ENERGY_MODE:I = 0x214012af

.field public static final ID_VCU_ENERGY_RECYCLE:I = 0x21401201

.field public static final ID_VCU_ENGINE_RUNNING_CHECK:I = 0x214012f1

.field public static final ID_VCU_ENG_START_MILEAGE:I = 0x216012c1

.field public static final ID_VCU_EVERR_LAMP_DSP:I = 0x2140122e

.field public static final ID_VCU_EVERR_MSG_DSP:I = 0x2140122f

.field public static final ID_VCU_EVSYS_READYST:I = 0x21401210

.field public static final ID_VCU_EXHIB_MODE_SW:I = 0x21401261

.field public static final ID_VCU_EXTERNAL_AIR_QUALITY:I = 0x214012a1

.field public static final ID_VCU_EXTREM_ENERGY_SAVE_MODE:I = 0x214012b9

.field public static final ID_VCU_FLASH_CHARGE_FLAG:I = 0x214012b2

.field public static final ID_VCU_FUEL_VALUE:I = 0x216012e9

.field public static final ID_VCU_F_WHEEL_TORQ:I = 0x214012f8

.field public static final ID_VCU_GEAR_LEVEL:I = 0x21401205

.field public static final ID_VCU_GEAR_LEVER:I = 0x21401205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_HVAC_CONSUME:I = 0x21601222
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_HV_CUTOFF:I = 0x21401251

.field public static final ID_VCU_INTELLIGENT_HEAT_MANAGE:I = 0x21401230

.field public static final ID_VCU_KEY_BATT_ST:I = 0x21401285

.field public static final ID_VCU_LAUNCH_ACTIVE_ST:I = 0x214012cd

.field public static final ID_VCU_LAUNCH_EXIT_TIP:I = 0x214012ce

.field public static final ID_VCU_LONG_DIST_BATT_TEMP:I = 0x214012d7

.field public static final ID_VCU_MILEAGE_NUMBER:I = 0x21401211
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_MOTOR_POWERMODE:I = 0x2140125f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_NAVI_DEST_INFO:I = 0x21101270

.field public static final ID_VCU_NAVI_DEST_INFO_REQ:I = 0x2140126f

.field public static final ID_VCU_NAVI_DEST_TYPE:I = 0x21401271

.field public static final ID_VCU_NAVI_INTELLI_SOC_INFO:I = 0x211012d2

.field public static final ID_VCU_NAVI_K_VALUE:I = 0x21601275

.field public static final ID_VCU_NAVI_PATH_ID:I = 0x21401273

.field public static final ID_VCU_NAVI_REMAIN_DISTANCE:I = 0x21401272

.field public static final ID_VCU_NAVI_REMAIN_TIME:I = 0x21401276

.field public static final ID_VCU_NAVI_TYPE:I = 0x21401274

.field public static final ID_VCU_NO_FULL_CHARGE_REMIND:I = 0x214012d4

.field public static final ID_VCU_N_GEAR_MODE:I = 0x214012e0

.field public static final ID_VCU_N_GEAR_MODE_TIP:I = 0x214012e1

.field public static final ID_VCU_N_GEAR_WARNING_SW:I = 0x2140123d

.field public static final ID_VCU_OBC_ACCUR:I = 0x21601204

.field public static final ID_VCU_OBC_ACVOLT:I = 0x21601203

.field public static final ID_VCU_OBC_DCCUR:I = 0x21601204
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_OBC_DCVOLT:I = 0x21601203
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_OBC_SIDE_AC_CURRENT:I = 0x2160125a

.field public static final ID_VCU_OBC_SIDE_AC_VOLT:I = 0x21601259

.field public static final ID_VCU_OBC_SIDE_AC_VOLT_ST:I = 0x2140125b

.field public static final ID_VCU_PGEAR_LIM_OFF_SW:I = 0x2140127d

.field public static final ID_VCU_PGEAR_VD:I = 0x21401219

.field public static final ID_VCU_POWER_RESPONCE:I = 0x2140125e

.field public static final ID_VCU_PULSE_HEAT_REMAIN_TIME:I = 0x214012fa

.field public static final ID_VCU_PULSE_HEAT_STATUS:I = 0x214012f2

.field public static final ID_VCU_QUICK_CHARGE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_RANDIS_MODE:I = 0x21401257

.field public static final ID_VCU_RAW_CAR_SPEED:I = 0x21601225

.field public static final ID_VCU_RDYFORCHARGE_STATUS:I = 0x214012a2

.field public static final ID_VCU_REAL_GEAR_LEVEL:I = 0x2140123c

.field public static final ID_VCU_REEV_STATUS:I = 0x214012f7

.field public static final ID_VCU_RESHEAT_MANATIME:I = 0x2140120b

.field public static final ID_VCU_RETENTION_SOC:I = 0x214012bf

.field public static final ID_VCU_RWS_WHEEL_ANGLE:I = 0x216012a5

.field public static final ID_VCU_R_WHEEL_TORQ:I = 0x214012f9

.field public static final ID_VCU_SMART_CLASSIS_CDC_ST:I = 0x214012b1

.field public static final ID_VCU_SMART_CLASSIS_DATA_REPORT:I = 0x216112b4

.field public static final ID_VCU_SMART_CLASSIS_SW:I = 0x214012b0

.field public static final ID_VCU_SNOW_MODE_SW:I = 0x2140122d

.field public static final ID_VCU_SOCE:I = 0x214012a7

.field public static final ID_VCU_SOC_KEEP_MODE_TARGET_SOC:I = 0x214012df

.field public static final ID_VCU_SOH:I = 0x21601221

.field public static final ID_VCU_SPD_UNIT_SW:I = 0x214012ad

.field public static final ID_VCU_SPD_UP_CHG_MODE:I = 0x21401252

.field public static final ID_VCU_SPD_UP_CHG_REQ:I = 0x21401255

.field public static final ID_VCU_SPECIAL_CARBIN_MODE:I = 0x21401267

.field public static final ID_VCU_SPEC_DRIVE_MODE:I = 0x2140125d

.field public static final ID_VCU_SSA_SW:I = 0x2140127c

.field public static final ID_VCU_SUPER_CHRG_FLG:I = 0x2140127e

.field public static final ID_VCU_SWS_CTRL_STATE:I = 0x214012a8

.field public static final ID_VCU_THERM_OVER_LOCK_SW:I = 0x214012d9

.field public static final ID_VCU_TRAFFIC_JAM_ST:I = 0x214012a0

.field public static final ID_VCU_TRAILER_MODE_SW:I = 0x21401266

.field public static final ID_VCU_USER_LFP_FULL_CHRG_ST:I = 0x214012a9

.field public static final ID_VCU_V2L_IN_CAR_ST:I = 0x214012bc

.field public static final ID_VCU_V2L_POWERLIMIT:I = 0x2140120c

.field public static final ID_VCU_V2V_CMD:I = 0x214012bd

.field public static final ID_VCU_V2V_PROMPT_TIP:I = 0x214012ee

.field public static final ID_VCU_VEHELC_CONSP_100M:I = 0x2160121a

.field public static final ID_VCU_VEHELC_CONSP_AVG_100:I = 0x21601298

.field public static final ID_VCU_VEHELC_CONSP_AVG_20:I = 0x21601297

.field public static final ID_VCU_VEHELC_CONSP_AVG_2_5:I = 0x21601296

.field public static final ID_VCU_VEHFUEL_CONSP_100M:I = 0x216012db

.field public static final ID_VCU_VEHFUEL_CONSP_AVG:I = 0x216012da

.field public static final ID_VCU_VEHFUEL_CONSP_AVG_100:I = 0x216012de

.field public static final ID_VCU_VEHFUEL_CONSP_AVG_20:I = 0x216012dd

.field public static final ID_VCU_VEHFUEL_CONSP_AVG_2_5:I = 0x216012dc

.field public static final ID_VCU_VIRTUAL_ACCPEDAL_SIG:I = 0x21401277

.field public static final ID_VCU_VMC_RWS_SW:I = 0x2140129c

.field public static final ID_VCU_VMC_SYSTEM_ST:I = 0x2140129e

.field public static final ID_VCU_VMC_ZWALK_SW:I = 0x2140129d

.field public static final ID_VCU_WADING_DEPTH:I = 0x214012e4

.field public static final ID_VCU_WADING_ENGINE_REQ:I = 0x214012e7

.field public static final ID_VCU_WADING_LSENSOR:I = 0x214012f5

.field public static final ID_VCU_WADING_MODE_ACTIVE:I = 0x214012e5

.field public static final ID_VCU_WADING_RADER_ST:I = 0x214012e3

.field public static final ID_VCU_WADING_RSENSOR:I = 0x214012f4

.field public static final ID_VCU_WADING_USER_CONFIRM:I = 0x214012e6

.field public static final ID_VCU_WIRELESS_CURR:I = 0x216012f0

.field public static final ID_VCU_WIRELESS_VOLT:I = 0x216012ef

.field public static final ID_VCU_WLTP_AVAILABLE_MILEAGE:I = 0x21401258
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_VCU_WUSS_FAULT_TIPS:I = 0x214012f6

.field public static final ID_VCU_XPEDAL_CTRL_MODE:I = 0x2140127f

.field public static final ID_VCU_XPEDAL_FORBIDDEN:I = 0x214012b7

.field public static final ID_VCU_XPEDAL_MODE_SW:I = 0x21401260

.field public static final ID_VCU_XPORT_INTELL_CALC_20HZ:I = 0x21611283

.field public static final ID_VCU_XPORT_INTELL_CALC_50HZ:I = 0x21611284

.field public static final ID_VCU_XPORT_INTELL_CALC_CFG:I = 0x21611281

.field public static final ID_VCU_XPORT_INTELL_CALC_FB:I = 0x21611282

.field public static final ID_VCU_XSPORT_AWD_MODE_SW:I = 0x2140129a

.field public static final ID_VCU_XSPORT_MODE:I = 0x2140128b

.field public static final KEY_BATTERY_STATUS_EXCHANGE_KEY_BATTERY:I = 0x1

.field public static final KEY_BATTERY_STATUS_INACTIVE:I = 0x0

.field public static final LAUNCH_ACTIVE_ST_INACTIVE:I = 0x0

.field public static final LAUNCH_ACTIVE_ST_STANDBY:I = 0x1

.field public static final LAUNCH_ACTIVE_ST_SUCCESS:I = 0x2

.field public static final LAUNCH_EXIT_NO_TIP:I = 0x0

.field public static final LAUNCH_EXIT_TIP1:I = 0x1

.field public static final LAUNCH_EXIT_TIP2:I = 0x2

.field public static final LAUNCH_EXIT_TIP3:I = 0x3

.field public static final LONG_DISTANCE_TEMP_CTRL_START:I = 0x1

.field public static final LONG_DISTANCE_TEMP_CTRL_STOP:I = 0x2

.field public static final LONG_DISTANCE_TEMP_ST_CHAREGING:I = 0x5

.field public static final LONG_DISTANCE_TEMP_ST_DEFAULT:I = 0x0

.field public static final LONG_DISTANCE_TEMP_ST_ENV_TEMP_UNSATISFIED:I = 0x4

.field public static final LONG_DISTANCE_TEMP_ST_HEAT_EXIT:I = 0x2

.field public static final LONG_DISTANCE_TEMP_ST_HEAT_ONGOING:I = 0x1

.field public static final LONG_DISTANCE_TEMP_ST_LACK_RANGE:I = 0x3

.field public static final LONG_DISTANCE_TEMP_ST_THERMAL_SYS_FAILURE:I = 0x6

.field public static final MOTOR_POWER_NORMAL_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTOR_POWER_NO_COMMAND:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTOR_POWER_XPOWER_MODE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NAVI_DEST_TYPE_EXTERNAL:I = 0x2

.field public static final NAVI_DEST_TYPE_UNKNOWN:I = 0x0

.field public static final NAVI_DEST_TYPE_XPENG:I = 0x1

.field public static final NAVI_TYPE_CRUISE:I = 0x0

.field public static final NAVI_TYPE_EXPLORE:I = 0x2

.field public static final NAVI_TYPE_GUIDE:I = 0x1

.field public static final NEDC_MODE:I = 0x0

.field public static final NOT_FULL_CHARGE_MARK_3RD_AND_MORE:I = 0x3

.field public static final NOT_FULL_CHARGE_MARK_ONCE:I = 0x1

.field public static final NOT_FULL_CHARGE_MARK_TIWCE:I = 0x2

.field public static final NO_AC_INPUT:I = 0x0

.field public static final N_GEAR_WARNING_SWITCH_OFF:I = 0x1

.field public static final N_GEAR_WARNING_SWITCH_ON:I = 0x2

.field public static final OBC_FAULT_PHASE_LOSS_STATUS_ERROR:I = 0x1

.field public static final OBC_FAULT_PHASE_LOSS_STATUS_MISS_A_AND_B_OR_C_NOT_WORK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OBC_FAULT_PHASE_LOSS_STATUS_MISS_A_NOT_WORK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OBC_FAULT_PHASE_LOSS_STATUS_MISS_B_OR_C_3_3KW_WORK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OBC_FAULT_PHASE_LOSS_STATUS_NO_ERROR:I = 0x0

.field public static final PGEAR_INVALID:I = 0x0

.field public static final PGEAR_VALID:I = 0x1

.field public static final POWER_RESPONCE_FAST_MODE:I = 0x3

.field public static final POWER_RESPONCE_INTELLIGENT_MODE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_RESPONCE_NO_COMMAND:I = 0x0

.field public static final POWER_RESPONCE_SLOW_MODE:I = 0x2

.field public static final POWER_RESPONCE_STANDARD_MODE:I = 0x1

.field public static final POWER_RESPONCE_SUPERFAST_MODE:I = 0x5

.field public static final POWER_RESPONCE_SUPERSLOW_MODE:I = 0x4

.field public static final PULSE_HEAT_CONTROL_NO_COMMAND:I = 0x0

.field public static final PULSE_HEAT_CONTROL_STOP:I = 0x1

.field public static final REEV_STATUS_NOT_READY:I = 0x0

.field public static final REEV_STATUS_READY:I = 0x1

.field public static final RESPONSE_ENERGY_RECOVERY_HIGH:I = 0x2

.field public static final RESPONSE_ENERGY_RECOVERY_LOW:I = 0x0

.field public static final RESPONSE_ENERGY_RECOVERY_MIDDLE:I = 0x1

.field public static final RWS_LIMIT1_FAULT:I = 0x2

.field public static final RWS_LIMIT2_FAULT:I = 0x3

.field public static final RWS_NONREV_FAULT:I = 0x4

.field public static final RWS_NO_FAULT:I = 0x0

.field public static final RWS_OVERTEMP_FAULT:I = 0x1

.field public static final SMART_CLASSIS_CDC_ST_ACTIVE:I = 0x1

.field public static final SMART_CLASSIS_CDC_ST_NOT_ACTIVE:I = 0x0

.field public static final SMART_CLASSIS_SW_NO_COMMAND:I = 0x0

.field public static final SMART_CLASSIS_SW_OFF:I = 0x2

.field public static final SMART_CLASSIS_SW_ON:I = 0x1

.field public static final SMART_CLASSIS_SW_RESERVED:I = 0x3

.field public static final SPECIAL_DRIVING_ADAPTIVE_MODE:I = 0x4

.field public static final SPECIAL_DRIVING_GEEK_MODE:I = 0x5

.field public static final SPECIAL_DRIVING_MUD_MODE:I = 0x1

.field public static final SPECIAL_DRIVING_NO_COMMAND:I = 0x0

.field public static final SPECIAL_DRIVING_RACING_MODE:I = 0x3

.field public static final SPECIAL_DRIVING_XPOWER_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CarVcuManager"

.field public static final THERM_OVER_LOCK_FAULT:I = 0x2

.field public static final THERM_OVER_LOCK_OFF:I = 0x0

.field public static final THERM_OVER_LOCK_ON:I = 0x1

.field public static final TRAFFIC_JAM:I = 0x1

.field public static final TRAFFIC_NOT_JAM:I = 0x0

.field public static final TRAILER_MODE_STATUS_OFF:I = 0x0

.field public static final TRAILER_MODE_STATUS_ON:I = 0x1

.field public static final USER_LFP_FULL_CHRG_CALIBRATED:I = 0x1

.field public static final USER_LFP_FULL_CHRG_NOT_CALIBRATED:I = 0x0

.field public static final V2L_INCAR_ST_CHARGER_DISCHARGE:I = 0x3

.field public static final V2L_INCAR_ST_DEFAULT:I = 0x0

.field public static final V2L_INCAR_ST_ERROR:I = 0x4

.field public static final V2L_INCAR_ST_OBC_DISCHARGE:I = 0x2

.field public static final V2L_INCAR_ST_STANDBY:I = 0x1

.field public static final VCU_2ND_OFF_REQUEST_CANCEL:I = 0x0

.field public static final VCU_2ND_OFF_REQUEST_OK:I = 0x1

.field public static final VCU_2ND_OFF_RESPONCE_ACTIVE:I = 0x1

.field public static final VCU_2ND_OFF_RESPONCE_INACTIVE:I = 0x0

.field public static final VCU_BAT_BUMP_RECRD_ST_RECORD_FAILED:I = 0x2

.field public static final VCU_BAT_BUMP_RECRD_ST_RECORD_OK:I = 0x1

.field public static final VCU_BAT_BUMP_RECRD_ST_UPLOAD_FAILED:I = 0x4

.field public static final VCU_BAT_BUMP_RECRD_ST_UPLOAD_OK:I = 0x3

.field public static final VCU_BRAKE_LIGHT_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VCU_BRAKE_LIGHT_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VCU_CHRG_GUN_LOCK:I = 0x1

.field public static final VCU_CHRG_GUN_UNLOCK:I = 0x0

.field public static final VCU_COMMON_OFF:I = 0x0

.field public static final VCU_COMMON_ON:I = 0x1

.field public static final VCU_DC_PRE_WARM_COOL_EXIT1:I = 0x13

.field public static final VCU_DC_PRE_WARM_COOL_EXIT2:I = 0x14

.field public static final VCU_DC_PRE_WARM_COOL_EXIT3:I = 0x15

.field public static final VCU_DC_PRE_WARM_COOL_FAILURE:I = 0x1f

.field public static final VCU_DC_PRE_WARM_COOL_FINISH:I = 0x12

.field public static final VCU_DC_PRE_WARM_DC_COOL_ONGOING:I = 0x11

.field public static final VCU_DC_PRE_WARM_DC_HEAT_ONGOING:I = 0x1

.field public static final VCU_DC_PRE_WARM_DEFAULT:I = 0x0

.field public static final VCU_DC_PRE_WARM_HEAT_EXIT1:I = 0x3

.field public static final VCU_DC_PRE_WARM_HEAT_EXIT2:I = 0x4

.field public static final VCU_DC_PRE_WARM_HEAT_EXIT3:I = 0x5

.field public static final VCU_DC_PRE_WARM_HEAT_FAILURE:I = 0xf

.field public static final VCU_DC_PRE_WARM_HEAT_FINISH:I = 0x2

.field public static final VCU_DC_PRE_WARM_IN_CHARGING:I = 0x8

.field public static final VCU_DC_PRE_WARM_LACK_MILEAGE:I = 0x6

.field public static final VCU_DC_PRE_WARM_REQ_DISABLE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VCU_DC_PRE_WARM_REQ_ENABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VCU_DC_PRE_WARM_REQ_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VCU_DC_PRE_WARM_REQ_ON:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VCU_DC_PRE_WARM_SW_OFF:I = 0x0

.field public static final VCU_DC_PRE_WARM_SW_ON:I = 0x1

.field public static final VCU_DC_PRE_WARM_TEMP_NOK:I = 0x7

.field public static final VCU_DC_PRE_WARM_THERMAL_FAILURE:I = 0x9

.field public static final VCU_DEPOLARIZE_STATUS_DEFAULT:I = 0x2

.field public static final VCU_DEPOLARIZE_STATUS_OFF:I = 0x0

.field public static final VCU_DEPOLARIZE_STATUS_ON:I = 0x1

.field public static final VCU_EV_HIGH_VOL_ON:I = 0x1

.field public static final VCU_EV_NOT_READY:I = 0x0

.field public static final VCU_EV_READY:I = 0x2

.field public static final VCU_NGP_DRIVER_OVERRIDE:I = 0x1

.field public static final VCU_NGP_NO_OVERRIDE:I = 0x0

.field public static final VCU_N_GEAR_MODE_GETTING_OFF:I = 0x0

.field public static final VCU_N_GEAR_MODE_GETTING_OFFING:I = 0x1

.field public static final VCU_N_GEAR_MODE_GETTING_ON:I = 0x3

.field public static final VCU_N_GEAR_MODE_GETTING_ONING:I = 0x2

.field public static final VCU_N_GEAR_MODE_SETTING_OFF:I = 0x1

.field public static final VCU_N_GEAR_MODE_SETTING_ON:I = 0x2

.field public static final VCU_N_GEAR_MODE_TIP_OFF_FAULT:I = 0x1

.field public static final VCU_N_GEAR_MODE_TIP_ON_FAULT:I = 0x2

.field public static final VCU_SNOWMODE_OFF:I = 0x0

.field public static final VCU_SNOWMODE_ON:I = 0x1

.field public static final VCU_SPD_UNIT_SW_BRITISH:I = 0x2

.field public static final VCU_SPD_UNIT_SW_METRIC:I = 0x1

.field public static final VCU_SPECIAL_CARBIN_MODE_ACTIVE:I = 0x1

.field public static final VCU_SPECIAL_CARBIN_MODE_INACTIVE:I = 0x0

.field public static final VCU_SSA_SW_NO_COMMAND:I = 0x2

.field public static final VCU_SSA_SW_OFF:I = 0x0

.field public static final VCU_SSA_SW_ON:I = 0x1

.field public static final VCU_START_DISCHARGE:I = 0x1

.field public static final VCU_STATUS_OFF:I = 0x0

.field public static final VCU_STATUS_ON:I = 0x1

.field public static final VCU_STOP_DISCHARGE:I = 0x2

.field public static final VCU_SUPER_CHARGE_FLAG_DEFAULT:I = 0x0

.field public static final VCU_SUPER_CHARGE_FLAG_SUPER_CHARGE:I = 0x1

.field public static final VCU_SWS_CTRL_STATE_NOT_USED:I = 0x0

.field public static final VCU_SWS_CTRL_STATE_USED:I = 0x1

.field public static final VCU_XPEDAL_AVH_ACTIVE:I = 0x2

.field public static final VCU_XPEDAL_AVH_HOLDING:I = 0x1

.field public static final VCU_XPEDAL_AVH_NOT_ACTIVE:I = 0x0

.field public static final VCU_XPEDAL_AVH_NOT_AVAIL:I = 0x3

.field public static final VCU_XPEDAL_CTRL_MODE_CREEP:I = 0x0

.field public static final VCU_XPEDAL_CTRL_MODE_HOLD:I = 0x2

.field public static final VCU_XPEDAL_CTRL_MODE_NO_COMMAND:I = 0x3

.field public static final VCU_XPEDAL_CTRL_MODE_ROLL:I = 0x1

.field public static final VCU_XPEDAL_IS_FORBIDDEN:I = 0x1

.field public static final VCU_XPEDAL_NOT_FORBIDDEN:I = 0x0

.field public static final VMS_STATUS_FAILED:I = 0x1

.field public static final VMS_STATUS_NORMAL:I = 0x0

.field public static final WADING_MODE_ACTIVE:I = 0x1

.field public static final WADING_MODE_INVALID:I = 0x0

.field public static final WADING_MODE_NOT_ACTIVE:I = 0x2

.field public static final WADING_RADER_ACTIVE:I = 0x1

.field public static final WADING_RADER_FAULT_STATUS:I = 0x4

.field public static final WADING_RADER_INVALID:I = 0x0

.field public static final WADING_RADER_NOT_ACTIVE:I = 0x2

.field public static final WADING_RADER_REMOTE_ACTIVE:I = 0x3

.field public static final WADING_USER_CONFIRM_AGREE:I = 0x1

.field public static final WADING_USER_CONFIRM_DISAGREE:I = 0x2

.field public static final WADING_USER_CONFIRM_INITIAL:I = 0x0

.field public static final WLTP_MODE:I = 0x1

.field public static final WUSS_SENSOR_BE_COVERED:I = 0x2

.field public static final WUSS_SENSOR_FAULT:I = 0x1

.field public static final WUSS_SENSOR_NORMAL:I = 0x0

.field public static final XPEDAL_MODE_STATUS_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPEDAL_MODE_STATUS_ON:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XSPORT_MODE_STATUS_AI:I = 0x2

.field public static final XSPORT_MODE_STATUS_BOOST:I = 0x3

.field public static final XSPORT_MODE_STATUS_NO_COMMAND:I = 0x0

.field public static final XSPORT_MODE_STATUS_RACER:I = 0x4

.field public static final XSPORT_MODE_STATUS_TUNNING:I = 0x1


# instance fields
.field private final mVcuPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarVcuManager"

    .line 5391
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 5155
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0xd7

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21401220

    .line 5156
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21401228

    .line 5157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21401229

    .line 5158
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21401211

    .line 5159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21401202

    .line 5160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21401209    # 6.5076E-19f

    .line 5161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21601222

    .line 5162
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2140120a

    .line 5163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140122c

    .line 5164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140121f

    .line 5165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2160121b

    .line 5166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21601221

    .line 5167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21601224

    .line 5168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x2140122a

    .line 5169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21401201

    .line 5170
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21401205

    .line 5171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21401226

    .line 5172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x2140122b

    .line 5173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x2140121e

    .line 5174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2140120b

    .line 5175
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21601203

    .line 5176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21601204

    .line 5177
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21601206

    .line 5178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21601207

    .line 5179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x2140120c

    .line 5180
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x2140120d

    .line 5181
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x2140120e

    .line 5182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x2140120f

    .line 5183
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21401210

    .line 5184
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21401214

    .line 5185
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21601215

    .line 5186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x21601216

    .line 5187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x21401213

    .line 5188
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x21401212

    .line 5189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x21401218

    .line 5190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x21401217

    .line 5191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21401219

    .line 5192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x2160121a

    .line 5193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x2140121c

    .line 5194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x2140121d

    .line 5195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21401227

    .line 5196
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x21601225

    .line 5197
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x2140122d

    .line 5198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x2140122e

    .line 5199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x2140122f

    .line 5200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x21401230

    .line 5201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x2140123c

    .line 5202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x2140123d

    .line 5203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x2160124c

    .line 5204
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x2160124d

    .line 5205
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x2140124e

    .line 5206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x2140124f

    .line 5207
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x21401250

    .line 5208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x21401251

    .line 5209
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21401252

    .line 5210
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21401253

    .line 5211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21401254

    .line 5212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x21401255

    .line 5213
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x21401256

    .line 5214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21401257

    .line 5215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x21401258

    .line 5216
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x21601259

    .line 5217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x2160125a

    .line 5218
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x2140125b

    .line 5219
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x2140125c

    .line 5220
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x2140125d

    .line 5221
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x2140125e

    .line 5222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21401260

    .line 5223
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x21401261

    .line 5224
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21401264

    .line 5225
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x21401265

    .line 5226
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x21401266

    .line 5227
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x21401267

    .line 5228
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x21401269

    .line 5229
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x2140126a

    .line 5230
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x2140126c

    .line 5231
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x2160126e

    .line 5232
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x2160126d

    .line 5233
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x2140126f

    .line 5234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    const p3, 0x21101270

    .line 5235
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4f

    aput-object p3, p2, p4

    const p3, 0x21401271

    .line 5236
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x50

    aput-object p3, p2, p4

    const p3, 0x21401272

    .line 5237
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x51

    aput-object p3, p2, p4

    const p3, 0x21401276

    .line 5238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x52

    aput-object p3, p2, p4

    const p3, 0x21401273

    .line 5239
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    aput-object p3, p2, p4

    const p3, 0x21401274

    .line 5240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x54

    aput-object p3, p2, p4

    const p3, 0x21601275

    .line 5241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x55

    aput-object p3, p2, p4

    const p3, 0x21401277

    .line 5242
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x56

    aput-object p3, p2, p4

    const p3, 0x21401278

    .line 5243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x57

    aput-object p3, p2, p4

    const p3, 0x21401279

    .line 5244
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x58

    aput-object p3, p2, p4

    const p3, 0x2160127a

    .line 5245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x59

    aput-object p3, p2, p4

    const p3, 0x2160127b

    .line 5246
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5a

    aput-object p3, p2, p4

    const p3, 0x2160128f

    .line 5247
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5b

    aput-object p3, p2, p4

    const p3, 0x2140127c

    .line 5248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5c

    aput-object p3, p2, p4

    const p3, 0x2140127d

    .line 5249
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5d

    aput-object p3, p2, p4

    const p3, 0x2140127e

    .line 5250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5e

    aput-object p3, p2, p4

    const p3, 0x2140127f

    .line 5251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f

    aput-object p3, p2, p4

    const p3, 0x21611281

    .line 5252
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x60

    aput-object p3, p2, p4

    const p3, 0x21611282

    .line 5253
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x61

    aput-object p3, p2, p4

    const p3, 0x21611283

    .line 5254
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x62

    aput-object p3, p2, p4

    const p3, 0x21611284

    .line 5255
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x63

    aput-object p3, p2, p4

    const p3, 0x21401285

    .line 5256
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    aput-object p3, p2, p4

    const p3, 0x21601286

    .line 5257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x65

    aput-object p3, p2, p4

    const p3, 0x21601287

    .line 5258
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x66

    aput-object p3, p2, p4

    const p3, 0x21401288

    .line 5259
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x67

    aput-object p3, p2, p4

    const p3, 0x21401289

    .line 5260
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x68

    aput-object p3, p2, p4

    const p3, 0x2140128b

    .line 5261
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x69

    aput-object p3, p2, p4

    const p3, 0x2160128c

    .line 5262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6a

    aput-object p3, p2, p4

    const p3, 0x2160128d

    .line 5263
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6b

    aput-object p3, p2, p4

    const p3, 0x2160128e

    .line 5264
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6c

    aput-object p3, p2, p4

    const p3, 0x21601290

    .line 5265
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6d

    aput-object p3, p2, p4

    const p3, 0x21601291

    .line 5266
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6e

    aput-object p3, p2, p4

    const p3, 0x21601292

    .line 5267
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6f

    aput-object p3, p2, p4

    const p3, 0x21401293

    .line 5268
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x70

    aput-object p3, p2, p4

    const p3, 0x21401294

    .line 5269
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x71

    aput-object p3, p2, p4

    const p3, 0x21601295

    .line 5270
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x72

    aput-object p3, p2, p4

    const p3, 0x21601296

    .line 5271
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x73

    aput-object p3, p2, p4

    const p3, 0x21601297

    .line 5272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x74

    aput-object p3, p2, p4

    const p3, 0x21601298

    .line 5273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x75

    aput-object p3, p2, p4

    const p3, 0x21401299

    .line 5274
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x76

    aput-object p3, p2, p4

    const p3, 0x2140129a

    .line 5275
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x77

    aput-object p3, p2, p4

    const p3, 0x2140129b

    .line 5276
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x78

    aput-object p3, p2, p4

    const p3, 0x2140129c

    .line 5277
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x79

    aput-object p3, p2, p4

    const p3, 0x2140129d

    .line 5278
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7a

    aput-object p3, p2, p4

    const p3, 0x2140129e

    .line 5279
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7b

    aput-object p3, p2, p4

    const p3, 0x2140129f

    .line 5280
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7c

    aput-object p3, p2, p4

    const p3, 0x214012a0

    .line 5281
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7d

    aput-object p3, p2, p4

    const p3, 0x214012a1

    .line 5282
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7e

    aput-object p3, p2, p4

    const p3, 0x214012a2

    .line 5283
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7f

    aput-object p3, p2, p4

    const p3, 0x214012a3

    .line 5284
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x80

    aput-object p3, p2, p4

    const p3, 0x214012a4

    .line 5285
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x81

    aput-object p3, p2, p4

    const p3, 0x216012a5

    .line 5286
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x82

    aput-object p3, p2, p4

    const p3, 0x214012a6

    .line 5287
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x83

    aput-object p3, p2, p4

    const p3, 0x214012a7

    .line 5288
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x84

    aput-object p3, p2, p4

    const p3, 0x214012a8

    .line 5289
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x85

    aput-object p3, p2, p4

    const p3, 0x214012a9

    .line 5290
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x86

    aput-object p3, p2, p4

    const p3, 0x216112b4

    .line 5291
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x87

    aput-object p3, p2, p4

    const p3, 0x214012ac

    .line 5292
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x88

    aput-object p3, p2, p4

    const p3, 0x214012ab

    .line 5293
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x89

    aput-object p3, p2, p4

    const p3, 0x2140242d    # 6.510001E-19f

    .line 5294
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8a

    aput-object p3, p2, p4

    const p3, 0x214012ad

    .line 5295
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8b

    aput-object p3, p2, p4

    const p3, 0x214012ae

    .line 5296
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8c

    aput-object p3, p2, p4

    const p3, 0x214012af

    .line 5297
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8d

    aput-object p3, p2, p4

    const p3, 0x214012b0

    .line 5298
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8e

    aput-object p3, p2, p4

    const p3, 0x214012b1

    .line 5299
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8f

    aput-object p3, p2, p4

    const p3, 0x214012b2

    .line 5300
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x90

    aput-object p3, p2, p4

    const p3, 0x216112b3

    .line 5301
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x91

    aput-object p3, p2, p4

    const p3, 0x214012b5

    .line 5302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x92

    aput-object p3, p2, p4

    const p3, 0x214012b7

    .line 5303
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x93

    aput-object p3, p2, p4

    const p3, 0x214012b8

    .line 5304
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x94

    aput-object p3, p2, p4

    const p3, 0x214090d3

    .line 5305
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x95

    aput-object p3, p2, p4

    const p3, 0x214012b9

    .line 5306
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x96

    aput-object p3, p2, p4

    const p3, 0x214012ba

    .line 5307
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x97

    aput-object p3, p2, p4

    const p3, 0x214012bb

    .line 5308
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x98

    aput-object p3, p2, p4

    const p3, 0x214012bc

    .line 5309
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x99

    aput-object p3, p2, p4

    const p3, 0x214012bf

    .line 5310
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9a

    aput-object p3, p2, p4

    const p3, 0x214012be

    .line 5311
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9b

    aput-object p3, p2, p4

    const p3, 0x216012c1

    .line 5312
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9c

    aput-object p3, p2, p4

    const p3, 0x214012bd

    .line 5313
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9d

    aput-object p3, p2, p4

    const p3, 0x216012c0

    .line 5314
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9e

    aput-object p3, p2, p4

    const p3, 0x216012c2

    .line 5315
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9f

    aput-object p3, p2, p4

    const p3, 0x216012c3

    .line 5316
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa0

    aput-object p3, p2, p4

    const p3, 0x216012c4

    .line 5317
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa1

    aput-object p3, p2, p4

    const p3, 0x216012c5

    .line 5318
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa2

    aput-object p3, p2, p4

    const p3, 0x216012c6

    .line 5319
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa3

    aput-object p3, p2, p4

    const p3, 0x216012c7

    .line 5320
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa4

    aput-object p3, p2, p4

    const p3, 0x216012c8

    .line 5321
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa5

    aput-object p3, p2, p4

    const p3, 0x216012c9

    .line 5322
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa6

    aput-object p3, p2, p4

    const p3, 0x216012ca

    .line 5323
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa7

    aput-object p3, p2, p4

    const p3, 0x214012cd

    .line 5324
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa8

    aput-object p3, p2, p4

    const p3, 0x214012ce

    .line 5325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa9

    aput-object p3, p2, p4

    const p3, 0x214012cf

    .line 5326
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaa

    aput-object p3, p2, p4

    const p3, 0x214012d1

    .line 5327
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xab

    aput-object p3, p2, p4

    const p3, 0x216012cb

    .line 5328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xac

    aput-object p3, p2, p4

    const p3, 0x216012cc

    .line 5329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xad

    aput-object p3, p2, p4

    const p3, 0x211012d2

    .line 5330
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xae

    aput-object p3, p2, p4

    const p3, 0x214012d3

    .line 5331
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaf

    aput-object p3, p2, p4

    const p3, 0x214012d4

    .line 5332
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb0

    aput-object p3, p2, p4

    const p3, 0x214012d5

    .line 5333
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb1

    aput-object p3, p2, p4

    const p3, 0x214012d6

    .line 5334
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb2

    aput-object p3, p2, p4

    const p3, 0x214012d7

    .line 5335
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb3

    aput-object p3, p2, p4

    const p3, 0x214012d8

    .line 5336
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb4

    aput-object p3, p2, p4

    const p3, 0x214012d9

    .line 5337
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb5

    aput-object p3, p2, p4

    const p3, 0x216012da

    .line 5338
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb6

    aput-object p3, p2, p4

    const p3, 0x216012db

    .line 5339
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb7

    aput-object p3, p2, p4

    const p3, 0x216012dc

    .line 5340
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb8

    aput-object p3, p2, p4

    const p3, 0x216012dd

    .line 5341
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb9

    aput-object p3, p2, p4

    const p3, 0x216012de

    .line 5342
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xba

    aput-object p3, p2, p4

    const p3, 0x214012df

    .line 5343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbb

    aput-object p3, p2, p4

    const p3, 0x214012e0

    .line 5344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbc

    aput-object p3, p2, p4

    const p3, 0x214012e1

    .line 5345
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbd

    aput-object p3, p2, p4

    const p3, 0x214012e2

    .line 5346
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbe

    aput-object p3, p2, p4

    const p3, 0x214012e3

    .line 5347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbf

    aput-object p3, p2, p4

    const p3, 0x214012e4

    .line 5348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc0

    aput-object p3, p2, p4

    const p3, 0x214012e5

    .line 5349
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc1

    aput-object p3, p2, p4

    const p3, 0x214012e6

    .line 5350
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc2

    aput-object p3, p2, p4

    const p3, 0x214012e7

    .line 5351
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc3

    aput-object p3, p2, p4

    const p3, 0x214012e8

    .line 5352
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc4

    aput-object p3, p2, p4

    const p3, 0x216012e9

    .line 5353
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc5

    aput-object p3, p2, p4

    const p3, 0x214012ea

    .line 5354
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc6

    aput-object p3, p2, p4

    const p3, 0x214012eb

    .line 5355
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc7

    aput-object p3, p2, p4

    const p3, 0x214112ec

    .line 5356
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc8

    aput-object p3, p2, p4

    const p3, 0x214012ed

    .line 5357
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc9

    aput-object p3, p2, p4

    const p3, 0x214012ee

    .line 5358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xca

    aput-object p3, p2, p4

    const p3, 0x216012ef

    .line 5359
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcb

    aput-object p3, p2, p4

    const p3, 0x216012f0

    .line 5360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcc

    aput-object p3, p2, p4

    const p3, 0x214012f1

    .line 5361
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcd

    aput-object p3, p2, p4

    const p3, 0x214012f2

    .line 5362
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xce

    aput-object p3, p2, p4

    const p3, 0x214012f3

    .line 5363
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcf

    aput-object p3, p2, p4

    const p3, 0x214012f5

    .line 5364
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd0

    aput-object p3, p2, p4

    const p3, 0x214012f4

    .line 5365
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd1

    aput-object p3, p2, p4

    const p3, 0x214012f6

    .line 5366
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd2

    aput-object p3, p2, p4

    const p3, 0x214012f7

    .line 5367
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd3

    aput-object p3, p2, p4

    const p3, 0x214012f9

    .line 5368
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd4

    aput-object p3, p2, p4

    const p3, 0x214012f8

    .line 5369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd5

    aput-object p3, p2, p4

    const p3, 0x214012fa

    .line 5370
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd6

    aput-object p3, p2, p4

    .line 5155
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/vcu/CarVcuManager;->mVcuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method private getChargeMaxSoc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5632
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeMode()I

    move-result v0

    return v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_vcu"

    return-object v0
.end method

.method private getSocLimitMaxMileage(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setBestCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5447
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuBestCharge()V

    return-void
.end method

.method private setChargeLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5463
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuChargeLimit(I)V

    return-void
.end method

.method private setFullyCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5455
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuFullyCharge()V

    return-void
.end method

.method private startCharge(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5423
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startVcuCharge(I)V

    return-void
.end method

.method private stopAcCharge(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5431
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopVcuAcCharge(I)V

    return-void
.end method

.method private stopDcCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5439
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopVcuDcCharge()V

    return-void
.end method


# virtual methods
.method public getAWDModeSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8269
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVCUAWDModeSw()I

    move-result v0

    return v0
.end method

.method public getAcChargCurrentMaxLimitedValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8297
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcChargCurrentMaxLimitedValue()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getAcInputStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5608
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcInputStatus()I

    move-result v0

    return v0
.end method

.method public getAccGValues()[F
    .locals 2

    const v0, 0x216112b3

    const/4 v1, 0x0

    .line 8868
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatVectorProperty(II)[F

    move-result-object v0

    return-object v0
.end method

.method public getAccPedalPercentage()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012eb

    const/4 v1, 0x0

    .line 6407
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAccPedalStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6393
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAccPedalStatus()I

    move-result v0

    return v0
.end method

.method public getAntitheftIntrudeDetectActSt()[I
    .locals 2

    const v0, 0x214112ec

    const/4 v1, 0x0

    .line 9731
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAntitheftIntrudeSt()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/ValueUnavailableException;
        }
    .end annotation

    const v0, 0x214112ec

    const/4 v1, 0x0

    .line 9822
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntVectorProperty(II)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9823
    array-length v2, v0

    if-lez v2, :cond_2

    .line 9827
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    const/4 v5, 0x1

    if-ne v5, v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 9824
    :cond_2
    new-instance v0, Landroid/car/ValueUnavailableException;

    invoke-direct {v0}, Landroid/car/ValueUnavailableException;-><init>()V

    throw v0
.end method

.method public getAsDriveModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7563
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAsDriveModeStatus()I

    move-result v0

    return v0
.end method

.method public getAutoEasyLoadingSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8219
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAutoEasyLoadingSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAvalibleDrivingDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5890
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAvalibleDrivingDistance()I

    move-result v0

    return v0
.end method

.method public getAvalibleDrivingDistanceFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5925
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAvalibleDrivingDistanceFloat()F

    move-result v0

    return v0
.end method

.method public getAverageVehConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5622
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAvgVehiclePowerConsume()F

    move-result v0

    return v0
.end method

.method public getAverageVehFuelConsume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012da

    const/4 v1, 0x0

    .line 9438
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getBatBumpRecrdRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7611
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatBumpRecrdRequest()I

    move-result v0

    return v0
.end method

.method public getBatTooCold()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6454
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isVcuBatteryCold()I

    move-result v0

    return v0
.end method

.method public getBattPulseHeatRemTim()I
    .locals 2

    const v0, 0x214012fa

    const/4 v1, 0x0

    .line 9845
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBattPulseHeatWorkSt()I
    .locals 2

    const v0, 0x214012f2

    const/4 v1, 0x0

    .line 9859
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBatteryCurr()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6296
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryCur()F

    move-result v0

    return v0
.end method

.method public getBatteryKeepTempMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401253

    const/4 v1, 0x0

    .line 6720
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBatteryMaxTemperature()I
    .locals 4

    const v0, 0x214012d1

    const/4 v1, 0x0

    .line 9264
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 9266
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

    const-string v2, "CarVcuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getBatteryMinTemperature()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5670
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryMinTemperature()F

    move-result v0

    return v0
.end method

.method public getBatteryOverheatingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6569
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEvErrMsgDsp()I

    move-result v0

    return v0
.end method

.method public getBatteryPercent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6268
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryLevelPercent()I

    move-result v0

    return v0
.end method

.method public getBatteryVolt()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6282
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryVolt()F

    move-result v0

    return v0
.end method

.method public getBatteryWarmingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5575
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryWarmingStatus()I

    move-result v0

    return v0
.end method

.method public getBmsActualSocValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8012
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsActualSocValue()F

    move-result v0

    return v0
.end method

.method public getBmsBatteryAverageTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7929
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsBatteryAverageTemperature()I

    move-result v0

    return v0
.end method

.method public getBmsBatteryCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7901
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsBatteryCurrent()F

    move-result v0

    return v0
.end method

.method public getBmsBatteryVoltage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7915
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsBatteryVoltage()I

    move-result v0

    return v0
.end method

.method public getBmsChargeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7956
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsChargeStatus()I

    move-result v0

    return v0
.end method

.method public getBmsCurrentBatterySocDisp()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8054
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsCurrentBatterySocDisp()F

    move-result v0

    return v0
.end method

.method public getBmsIsErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6676
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsIsErrorStatus()I

    move-result v0

    return v0
.end method

.method public getBmsMaximumAvailChargePower()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8026
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsMaximumAvailChargePower()F

    move-result v0

    return v0
.end method

.method public getBmsMaximumAvailDischargePower()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8040
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBmsMaximumAvailDischargePower()F

    move-result v0

    return v0
.end method

.method public getBmsReadyForChargeStatus()I
    .locals 3

    .line 8470
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsReadyForChargeStatus()I

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

    .line 8472
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBmsReadyForChargeStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getBmsScoIsLowStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6664
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsScoIsLowStatus()I

    move-result v0

    return v0
.end method

.method public getBoostActiveStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012cf

    const/4 v1, 0x0

    .line 9234
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBoostNotAvlReason()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d8

    const/4 v1, 0x0

    .line 9251
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBrakeLightOnOff()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6351
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBrakeLightOnOffStatus()I

    move-result v0

    return v0
.end method

.method public getBreakPedalPercentage()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012ea

    const/4 v1, 0x0

    .line 6379
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

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

    .line 6365
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBreakPedalStatus()I

    move-result v0

    return v0
.end method

.method public getButtPreWarmSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012b8

    const/4 v1, 0x0

    .line 7393
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCarStationaryStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6946
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuCarStationaryStatus()I

    move-result v0

    return v0
.end method

.method public getCdcDumpDetectSt()I
    .locals 2

    const v0, 0x214012ab

    const/4 v1, 0x0

    .line 8760
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCdcPotholeDetectSt()I
    .locals 2

    const v0, 0x214012ac

    const/4 v1, 0x0

    .line 8746
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCdcuChargeGunStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7260
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuCdcuChargeGunStatus()I

    move-result v0

    return v0
.end method

.method public getChargeCompleteTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5589
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeRemainingTime()I

    move-result v0

    return v0
.end method

.method public getChargeDischargePower()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8068
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeDischargePower()F

    move-result v0

    return v0
.end method

.method public getChargeHighVoltageLoadPower()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8082
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeHighVoltageLoadPower()F

    move-result v0

    return v0
.end method

.method public getChargeLockType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d3

    const/4 v1, 0x0

    .line 9295
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getChargeSoc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6237
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeSocQuantity()I

    move-result v0

    return v0
.end method

.method public getChargeSocFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7421
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeSocQuantityFloat()F

    move-result v0

    return v0
.end method

.method public getChargeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6209
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeStatus()I

    move-result v0

    return v0
.end method

.method public getChargeStopReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6317
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuStopChargeReason()I

    move-result v0

    return v0
.end method

.method public getChargerLowVolSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8113
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargerLowVolSt()I

    move-result v0

    return v0
.end method

.method public getChargingError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5479
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargeError()I

    move-result v0

    return v0
.end method

.method public getChargingGunHalfLinkStatus()I
    .locals 3

    .line 8512
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChargingGunHalfLinkStatus()I

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

    .line 8514
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChargingGunHalfLinkStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getChargingGunLockFault()I
    .locals 3

    .line 8492
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChargingGunLockFault()I

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

    .line 8494
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChargingGunLockFault throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getChargingGunStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5513
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuChargingPlugStatus()I

    move-result v0

    return v0
.end method

.method public getChgSpeedSlow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6470
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isVcuChargeSpeedSlow()I

    move-result v0

    return v0
.end method

.method public getCltcAvailableDrivingDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6856
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuCltcAvailableDrivingDistance()I

    move-result v0

    return v0
.end method

.method public getCltcAvailableDrivingDistanceFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6870
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuCltcAvailableDrivingDistanceFloat()F

    move-result v0

    return v0
.end method

.method public getColdWarningTips()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5543
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryCoolingState()I

    move-result v0

    return v0
.end method

.method public getConEnergyRegen()I
    .locals 2

    const v0, 0x214012b5

    const/4 v1, 0x0

    .line 8898
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCruiseControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6652
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuCruiseControlStatus()I

    move-result v0

    return v0
.end method

.method public getDCV2GWorkSt()I
    .locals 2

    const v0, 0x214012f3

    const/4 v1, 0x0

    .line 9777
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDcPreWarmInStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7362
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDcPreWarmInStatus()I

    move-result v0

    return v0
.end method

.method public getDcPreWarmRequestStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDcPreWarmSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7292
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDcPreWarmSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getDepolarizeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7580
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDepolarizeStatus()I

    move-result v0

    return v0
.end method

.method public getDisCargeLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6140
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDisCargeLimit()I

    move-result v0

    return v0
.end method

.method public getDisChargeInCarError()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012bb

    const/4 v1, 0x0

    .line 8993
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDischargeSoc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6223
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDischargeQuantity()I

    move-result v0

    return v0
.end method

.method public getDischargeSocFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7407
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDischargeQuantityFloat()F

    move-result v0

    return v0
.end method

.method public getDisplayGearLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5855
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuGearState()I

    move-result v0

    return v0
.end method

.method public getDriveMileIncreaseStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6774
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDriveMileIncreaseStatus()I

    move-result v0

    return v0
.end method

.method public getDriverOverRideSt()I
    .locals 2

    const v0, 0x214012e2

    const/4 v1, 0x0

    .line 9559
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrivingMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5702
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDrivingMode()I

    move-result v0

    return v0
.end method

.method public getDynamicAvailableDrivingDistance()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6884
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDynamicAvailableDrivingDistance()F

    move-result v0

    return v0
.end method

.method public getEbsBatterySoc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5953
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEbsBatterySoc()I

    move-result v0

    return v0
.end method

.method public getElectricityPercent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5527
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuElectricQuantityPercent()I

    move-result v0

    return v0
.end method

.method public getEmissionTestMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d6

    const/4 v1, 0x0

    .line 9360
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEmsStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012be

    const/4 v1, 0x0

    .line 9028
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEnduranceMileageMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6810
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEnduranceMileageMode()I

    move-result v0

    return v0
.end method

.method public getEnergyMode()I
    .locals 2

    const v0, 0x214012af

    const/4 v1, 0x0

    .line 8813
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEnergyRecycleLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5759
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEnergyRecycleLevel()I

    move-result v0

    return v0
.end method

.method public getEnergyRegenMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5778
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEnergyRecycleLevel()I

    move-result v0

    return v0
.end method

.method public getEngineCoolantTemp()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d5

    const/4 v1, 0x0

    .line 9325
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEngineRunningRequest()I
    .locals 2

    const v0, 0x214012f1

    const/4 v1, 0x0

    .line 9792
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEngineStartMileage()F
    .locals 2

    const v0, 0x216012c1

    const/4 v1, 0x0

    .line 9052
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getEvSysReady()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6254
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEvsysReadyState()I

    move-result v0

    return v0
.end method

.method public getEvSystemErrorLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6553
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuEvErrLampDsp()I

    move-result v0

    return v0
.end method

.method public getExhibModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7117
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuExhibModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getExtremeFastChargingSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6602
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuExtremeFastChargingSt()I

    move-result v0

    return v0
.end method

.method public getFWheelCurTorq()I
    .locals 2

    const v0, 0x214012f8

    const/4 v1, 0x0

    .line 9889
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFastChargeDcCur()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6056
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDcChargeCur()F

    move-result v0

    return v0
.end method

.method public getFastChargeDcVolt()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6084
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuDcChargeVolt()F

    move-result v0

    return v0
.end method

.method public getFlashChargeFlag()I
    .locals 2

    const v0, 0x214012b2

    const/4 v1, 0x0

    .line 8853
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFuelCltcDistanceFloat()F
    .locals 2

    const v0, 0x216012c3

    const/4 v1, 0x0

    .line 9085
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelDistanceFloat()F
    .locals 2

    const v0, 0x216012c0

    const/4 v1, 0x0

    .line 9063
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelDynamicDistanceFloat()F
    .locals 2

    const v0, 0x216012c5

    const/4 v1, 0x0

    .line 9107
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelNedcDistanceFloat()F
    .locals 2

    const v0, 0x216012c4

    const/4 v1, 0x0

    .line 9096
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelRemainAmount()F
    .locals 2

    const v0, 0x216012e9

    const/4 v1, 0x0

    .line 9716
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelWltpDistanceFloat()F
    .locals 2

    const v0, 0x216012c2

    const/4 v1, 0x0

    .line 9074
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getHvacConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5559
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcPowerConsume()F

    move-result v0

    return v0
.end method

.method public getIpbBrkFldWarn()I
    .locals 2

    const v0, 0x214090d3

    const/4 v1, 0x0

    .line 8933
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIsHvCutOffStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6688
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIsHvCutOffStatus()I

    move-result v0

    return v0
.end method

.method public getKeyBatteryStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7888
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuKeyBatteryStatus()I

    move-result v0

    return v0
.end method

.method public getLastHundredKmAverageVehConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8172
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuLastHundredKmAverageVehConsume()F

    move-result v0

    return v0
.end method

.method public getLastTwentyKmAverageVehConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8157
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuLastTwentyKmAverageVehConsume()F

    move-result v0

    return v0
.end method

.method public getLastTwoPointFiveKmAverageVehConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8143
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuLastTwoPointFiveKmAverageVehConsume()F

    move-result v0

    return v0
.end method

.method public getLaunchActiveStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012cd

    const/4 v1, 0x0

    .line 9204
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLaunchExitTip()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012ce

    const/4 v1, 0x0

    .line 9219
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLongDistanceBattTempSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d7

    const/4 v1, 0x0

    .line 9394
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMotorPowerMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7045
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuMotorPowerMode()I

    move-result v0

    return v0
.end method

.method public getNGearMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012e0

    const/4 v1, 0x0

    .line 9527
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getNGearModeTip()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012e1

    const/4 v1, 0x0

    .line 9543
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getNGearWarningSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6634
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuNGearWarningSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getNedcAvalibleDrivingDistanceFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5939
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuNedcAvalibleDrivingDistanceFloat()F

    move-result v0

    return v0
.end method

.method public getObcAcCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6912
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuObcAcCurrent()F

    move-result v0

    return v0
.end method

.method public getObcAcVoltage()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6898
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuObcAcVoltage()F

    move-result v0

    return v0
.end method

.method public getObcAcVoltageStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6930
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuObcAcVoltageStatus()I

    move-result v0

    return v0
.end method

.method public getObcFaultPhaseLossStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7133
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuObcFaultPhaseLossStatus()I

    move-result v0

    return v0
.end method

.method public getPGearValid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6424
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isVcuParkingGearValid()I

    move-result v0

    return v0
.end method

.method public getPowerResponseMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7006
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuPowerResponseMode()I

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

    .line 5410
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mVcuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPureDriveModeFeedback()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6505
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuPureDriveModeFeedback()I

    move-result v0

    return v0
.end method

.method public getREEVStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012f7

    const/4 v1, 0x0

    .line 9041
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRWSFaultWarning()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140242d    # 6.510001E-19f

    const/4 v1, 0x0

    .line 8397
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8399
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

    const-string v2, "CarVcuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getRWheelCurTorq()I
    .locals 2

    const v0, 0x214012f9

    const/4 v1, 0x0

    .line 9904
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRawCarSpeed()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6484
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuRawCarSpeed()F

    move-result v0

    return v0
.end method

.method public getRealGearLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5874
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuRealGearLevel()I

    move-result v0

    return v0
.end method

.method public getRearWheelAngel()F
    .locals 3

    .line 8530
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearWheelAngel()F

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

    .line 8532
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearWheelAngel throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getResHeatManaTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5997
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuResHeatManaTime()I

    move-result v0

    return v0
.end method

.method public getRetentionSoc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012bf

    const/4 v1, 0x0

    .line 9015
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSOCKpModeTargetSOCFB()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012df

    const/4 v1, 0x0

    .line 8837
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecondaryPowerOffResponce()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7213
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSecondaryPowerOffResponce()I

    move-result v0

    return v0
.end method

.method public getSlowChargeAcCur()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6042
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcChargeCur()F

    move-result v0

    return v0
.end method

.method public getSlowChargeAcCurAfterVoltBoosted()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6070
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcChargeCurAfterVoltBoosted()F

    move-result v0

    return v0
.end method

.method public getSlowChargeAcVolt()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6011
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcChargeVolt()F

    move-result v0

    return v0
.end method

.method public getSlowChargeAcVoltAfterVoltBoosted()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6025
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuAcChargeVoltAfterVoltBoosted()F

    move-result v0

    return v0
.end method

.method public getSmartChassisCDCActiveSt()I
    .locals 2

    const v0, 0x214012b1

    const/4 v1, 0x0

    .line 8731
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSmartChassisDataReport()[F
    .locals 3

    .line 8677
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSmartChassisDataReport()[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8679
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

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    new-array v0, v0, [F

    return-object v0
.end method

.method public getSmartChassisSwitch()I
    .locals 2

    const v0, 0x214012b0

    const/4 v1, 0x0

    .line 8715
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSoh()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5646
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuBatteryWastageStatus()F

    move-result v0

    return v0
.end method

.method public getSpecialDrivingMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6966
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSpecialDrivingMode()I

    move-result v0

    return v0
.end method

.method public getSpeedUpChargeMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401252

    const/4 v1, 0x0

    .line 6742
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSsaSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7644
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSsaSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getStallState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5836
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuGearState()I

    move-result v0

    return v0
.end method

.method public getSuperChargeDiffIncreaseRange()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8096
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSuperChargeDiffIncreaseRange()I

    move-result v0

    return v0
.end method

.method public getSuperChargeFlag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7676
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSuperChargeFlag()I

    move-result v0

    return v0
.end method

.method public getThermMngOverclockSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d9

    const/4 v1, 0x0

    .line 9424
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrailerModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7165
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuTrailerModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getV2LDischargeErrorReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8419
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getV2LDischargeErrorReason()I

    move-result v0

    return v0
.end method

.method public getV2LInCarSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012bc

    const/4 v1, 0x0

    .line 8977
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getV2VStartPrompt()I
    .locals 2

    const v0, 0x214012ee

    const/4 v1, 0x0

    .line 9762
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVMCRwsSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8329
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVMCRwsSwitchState()I

    move-result v0

    return v0
.end method

.method public getVMCSystemState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8377
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVMCSystemState()I

    move-result v0

    return v0
.end method

.method public getVMCZWalkModeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8361
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVMCZWalkModeState()I

    move-result v0

    return v0
.end method

.method public getVcuErhDebugInfo()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5983
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuErhDebugInfo()I

    move-result v0

    return v0
.end method

.method public getVcuSnowMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6521
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSnowMode()I

    move-result v0

    return v0
.end method

.method public getVcuSupDebugInfo()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5968
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuSupDebugInfo()I

    move-result v0

    return v0
.end method

.method public getVcuUseSwsControlState()I
    .locals 4

    const v0, 0x214012a8

    const/4 v1, 0x0

    .line 8569
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8571
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

    const-string v2, "CarVcuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getVehFuelLast100KmConsume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012de

    const/4 v1, 0x0

    .line 9494
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehFuelLast100mConsume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012db

    const/4 v1, 0x0

    .line 9452
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehFuelLast20KmConsume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012dd

    const/4 v1, 0x0

    .line 9480
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehFuelLast2_5KmConsume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012dc

    const/4 v1, 0x0

    .line 9466
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehLast100mConsume()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6438
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuVehLast100mConsume()F

    move-result v0

    return v0
.end method

.method public getVehicleCltcDistanceFloat()F
    .locals 2

    const v0, 0x216012c8

    const/4 v1, 0x0

    .line 9141
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehicleDistanceFloat()F
    .locals 2

    const v0, 0x216012c6

    const/4 v1, 0x0

    .line 9118
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehicleDynamicDistanceFloat()F
    .locals 2

    const v0, 0x216012ca

    const/4 v1, 0x0

    .line 9163
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehicleNedcDistanceFloat()F
    .locals 2

    const v0, 0x216012c9

    const/4 v1, 0x0

    .line 9152
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVehicleSOCE()I
    .locals 3

    .line 8548
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVehicleSOCE()I

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

    .line 8550
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearWheelAngel throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarVcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleWltpDistanceFloat()F
    .locals 2

    const v0, 0x216012c7

    const/4 v1, 0x0

    .line 9130
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getVirtualAccPedalStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7539
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuVirtualAccPedalStatus()I

    move-result v0

    return v0
.end method

.method public getWUssFaultTips()I
    .locals 2

    const v0, 0x214012f6

    const/4 v1, 0x0

    .line 9703
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWadingLeftSensorSt()I
    .locals 2

    const v0, 0x214012f5

    const/4 v1, 0x0

    .line 9672
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWadingRadarActiveStatus()I
    .locals 2

    const v0, 0x214012e3

    const/4 v1, 0x0

    .line 9578
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWadingRadarWaterDepth()I
    .locals 2

    const v0, 0x214012e4

    const/4 v1, 0x0

    .line 9591
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWadingRightSensorSt()I
    .locals 2

    const v0, 0x214012f4

    const/4 v1, 0x0

    .line 9688
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWirelessChargeCur()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012f0

    const/4 v1, 0x0

    .line 6098
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getWirelessChargeVolt()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216012ef

    const/4 v1, 0x0

    .line 6112
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getWltpAvailableDrivingDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6826
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuWltpAvailableDrivingDistance()I

    move-result v0

    return v0
.end method

.method public getWltpAvailableDrivingDistanceFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6840
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuWltpAvailableDrivingDistanceFloat()F

    move-result v0

    return v0
.end method

.method public getXPortIntellCalcCfg()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7818
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXPortIntellCalcCfg()[F

    move-result-object v0

    return-object v0
.end method

.method public getXPortIntellCalcCfg20Hz()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7853
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXPortIntellCalcCfg20Hz()[F

    move-result-object v0

    return-object v0
.end method

.method public getXPortIntellCalcCfg50Hz()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7872
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXPortIntellCalcCfg50Hz()[F

    move-result-object v0

    return-object v0
.end method

.method public getXpedalCtrlMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7712
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXpedalCtrlMode()I

    move-result v0

    return v0
.end method

.method public getXpedalForbiddenSt()I
    .locals 2

    const v0, 0x214012b7

    const/4 v1, 0x0

    .line 8918
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getXpedalModeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7083
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXpedalModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getXsportMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7998
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVcuXsportMode()I

    move-result v0

    return v0
.end method

.method public setAIWadingMode(I)V
    .locals 2

    const v0, 0x214012e8

    const/4 v1, 0x0

    .line 9656
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setAWDModeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8244
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVCUAWDModeSw(I)V

    return-void
.end method

.method public setAcChargCurrentMaxLimitedValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8283
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuAcChargCurrentMaxLimitedValue(I)V

    return-void
.end method

.method public setAntitheftIntrudeSt(I)V
    .locals 2

    const v0, 0x214012ed

    const/4 v1, 0x0

    .line 9747
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setAutoEasyLoadingSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8203
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuAutoEasyLoadingSwitchStatus(I)V

    return-void
.end method

.method public setBatBumpRecrdStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7597
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuBatBumpRecrdStatus(I)V

    return-void
.end method

.method public setBattPulseHeatWorkSw(I)V
    .locals 2

    const v0, 0x214012f2

    const/4 v1, 0x0

    .line 9874
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setBattTempReq(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012ae

    const/4 v1, 0x0

    .line 8776
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 8778
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

    const-string v0, "CarVcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setBatteryKeepTempSwitch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401254

    const/4 v1, 0x0

    .line 6699
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setBrakeLightOnOff(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6335
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuBrakeLightOn(I)V

    return-void
.end method

.method public setCdcuChargeGunCommand(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7244
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuCdcuChargeGunCommand(I)V

    return-void
.end method

.method public setChargeStartTime(F)V
    .locals 2

    const v0, 0x216012cc

    const/4 v1, 0x0

    .line 9174
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setFloatProperty(IIF)V

    return-void
.end method

.method public setChargingAddSoc(F)V
    .locals 2

    const v0, 0x216012cb

    const/4 v1, 0x0

    .line 9185
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setFloatProperty(IIF)V

    return-void
.end method

.method public setChrgGunEmerUnlock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7228
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChrgGunEmergencyUnlock(I)V

    return-void
.end method

.method public setConEnergyRegen(I)V
    .locals 2

    const v0, 0x214012b5

    const/4 v1, 0x0

    .line 8883
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setDCChargerLowVolDiag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8129
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuChargerLowVolDiag(I)V

    return-void
.end method

.method public setDcPreWarmRequestStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDcPreWarmSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7276
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuDcPreWarmSwitchStatus(I)V

    return-void
.end method

.method public setDisChargeLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6126
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuDisChargeLimit(I)V

    return-void
.end method

.method public setDisChargeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6156
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuDisChargeEnabled(I)V

    return-void
.end method

.method public setDriveMileIncreaseSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6758
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuDriveMileIncreaseSwitch(I)V

    return-void
.end method

.method public setDrivingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5738
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDrivingMode(I)V

    return-void
.end method

.method public setEmissionTestMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d6

    const/4 v1, 0x0

    .line 9343
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setEnduranceMileageMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6792
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuEnduranceMileageMode(I)V

    return-void
.end method

.method public setEnergyMode(I)V
    .locals 2

    const v0, 0x214012af

    const/4 v1, 0x0

    .line 8797
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setEnergyRecycleLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5798
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuEnergyRecycleLevel(I)V

    return-void
.end method

.method public setEnergyRegenMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5816
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuEnergyRecycleLevel(I)V

    return-void
.end method

.method public setEngineStartRunningFeedbackCheck(I)V
    .locals 2

    const v0, 0x214012f1

    const/4 v1, 0x0

    .line 9807
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setExternalAirPm25(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8453
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setExternalAirPm25(I)V

    return-void
.end method

.method public setExtremeFastChargingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6584
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuExtremeFastChargingMode(I)V

    return-void
.end method

.method public setExtremeSavingEnerygMode(I)V
    .locals 2

    const v0, 0x214012b9

    const/4 v1, 0x0

    .line 8950
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setLongDistanceBattTempCtrl(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d7

    const/4 v1, 0x0

    .line 9375
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setMotorPowerMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7064
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuMotorPowerMode(I)V

    return-void
.end method

.method public setNGearMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012e0

    const/4 v1, 0x0

    .line 9509
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setNGearWarningSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6618
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNGearWarningSwitch(I)V

    return-void
.end method

.method public setNaviDestInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7435
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviDestInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setNaviDestType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7452
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviDestType(I)V

    return-void
.end method

.method public setNaviKValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7525
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviKValue(F)V

    return-void
.end method

.method public setNaviPathId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7494
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviPathId(I)V

    return-void
.end method

.method public setNaviRemainDistance(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7466
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviRemainDistance(I)V

    return-void
.end method

.method public setNaviRemainTime(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7480
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviRemainTime(I)V

    return-void
.end method

.method public setNaviType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7511
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuNaviType(I)V

    return-void
.end method

.method public setNavigRoutInfoIntelligtSOC(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x211012d2

    const/4 v1, 0x0

    .line 9282
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setStringProperty(IILjava/lang/String;)V

    return-void
.end method

.method public setNoFullChrgForAftSaleRemd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d4

    const/4 v1, 0x0

    .line 9312
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setPGearLimOffSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7660
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuPGearLimOffSwitchStatus(I)V

    return-void
.end method

.method public setPowerResponseMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7026
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuPowerResponseMode(I)V

    return-void
.end method

.method public setRetentionSoc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012bf

    const/4 v1, 0x0

    .line 9004
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setSOCKpModeTargetSOCReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012df

    const/4 v1, 0x0

    .line 8825
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setSecondaryPowerOffRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7197
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuSecondaryPowerOffRequest(I)V

    return-void
.end method

.method public setSmartChassisData([F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x216112b4

    const/4 v1, 0x0

    .line 8620
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setFloatVectorProperty(II[F)V

    return-void
.end method

.method public setSmartChassisSwitch(I)V
    .locals 2

    const v0, 0x214012b0

    const/4 v1, 0x0

    .line 8698
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setSpecialCarbinModeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7181
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuSpecialCarbinModeSwitch(I)V

    return-void
.end method

.method public setSpecialDrivingMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6986
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuSpecialDrivingMode(I)V

    return-void
.end method

.method public setSpeedUnit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012ad

    const/4 v1, 0x0

    .line 8186
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return v1
.end method

.method public setSpeedUpChargeSwitch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401255

    const/4 v1, 0x0

    .line 6731
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setSsaSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7628
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuSsaSwitchStatus(I)V

    return-void
.end method

.method public setTgtChargeStationPwr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012ba

    const/4 v1, 0x0

    .line 8961
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setThermMngOverclockReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012d9

    const/4 v1, 0x0

    .line 9409
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setTrafficJamStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8437
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrafficJamStatus(I)V

    return-void
.end method

.method public setTrailerModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7149
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuTrailerModeSwitchStatus(I)V

    return-void
.end method

.method public setUserLFPFullChrgSt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8589
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setUserLFPFullChrgSt(I)V

    return-void
.end method

.method public setV2VDisChargeSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012bd

    const/4 v1, 0x0

    .line 6172
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setVMCRwsSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8313
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVMCRwsSwitch(I)V

    return-void
.end method

.method public setVMCZWalkModeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8345
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVMCZWalkModeSwitch(I)V

    return-void
.end method

.method public setVcuSnowMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6537
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuSnowMode(I)V

    return-void
.end method

.method public setWadingModeActiveStatus(I)V
    .locals 2

    const v0, 0x214012e5

    const/4 v1, 0x0

    .line 9607
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setWadingModeEngineStartReq(I)V
    .locals 2

    const v0, 0x214012e7

    const/4 v1, 0x0

    .line 9641
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setWadingModeUserConfirm(I)V
    .locals 2

    const v0, 0x214012e6

    const/4 v1, 0x0

    .line 9623
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/vcu/CarVcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setXPortIntellCalcCfg([F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7755
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuXPortIntellCalcCfg([F)V

    return-void
.end method

.method public setXpedalCtrlMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7694
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuXpedalCtrlMode(I)V

    return-void
.end method

.method public setXpedalModeSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7101
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuXpedalModeSwitchStatus(I)V

    return-void
.end method

.method public setXsportMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7977
    iget-object v0, p0, Landroid/car/hardware/vcu/CarVcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setVcuXsportMode(I)V

    return-void
.end method
