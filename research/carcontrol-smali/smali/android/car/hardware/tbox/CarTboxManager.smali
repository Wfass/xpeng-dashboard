.class public final Landroid/car/hardware/tbox/CarTboxManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarTboxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;,
        Landroid/car/hardware/tbox/CarTboxManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AI_CHARGE_REQ_OFF:I = 0x1

.field public static final AI_CHARGE_REQ_ON:I = 0x2

.field public static final BLE_ACCOUNT_FB_NO_CODE_DATA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BLE_ACCOUNT_FB_REGISTER_FAILURE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BLE_ACCOUNT_FB_REGISTER_SUCCESS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BLE_KEY_AUTH_FAILED:I = 0x1

.field public static final BLE_KEY_AUTH_SUCCESS:I = 0x2

.field public static final BLE_KEY_CONNETED:I = 0x2

.field public static final BLE_KEY_SEARCH_ACTIVE:I = 0x2

.field public static final BLE_KEY_SEARCH_NO_ACTIVE:I = 0x1

.field public static final BLE_KEY_SEARCH_NO_COMMAND:I = 0x0

.field public static final BLE_NOT_CONNETED:I = 0x0

.field public static final BLE_PHONE_CONNETED:I = 0x1

.field public static final BLE_PHONE_KEY_CONNETED:I = 0x3

.field public static final CAP_MODEM_OFF:I = 0x0

.field public static final CAP_MODEM_ON:I = 0x1

.field public static final CAP_MODEM_QUERY:I = 0x2

.field public static final CDU_TBOX_OTA_WOKING_ST_ACTIVE:I = 0x1

.field public static final CDU_TBOX_OTA_WOKING_ST_INACTIVE:I = 0x0

.field public static final CERF_VERIFY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_FAILED_GET_ICCID:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_FAILED_PARSE_CERF:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_FAILED_REQUEST_CERF:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_FAILED_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_FAILED_VERIFY_CERF:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CERT_INSTALL_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECT_AVP_WIFI_NOT_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECT_AVP_WIFI_STARTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final ECALL_CANCEL:I = 0x1

.field public static final ECALL_START_PROMPT:I = 0x0

.field public static final ECALL_STATE_ECALL_CALLBACK_WAIT:I = 0x4

.field public static final ECALL_STATE_ECALL_ESTABLISHED:I = 0x5

.field public static final ECALL_STATE_ECALL_ESTABLISHMENT:I = 0x2

.field public static final ECALL_STATE_ECALL_FAILURE:I = 0x3

.field public static final ECALL_STATE_IDLE:I = 0x1

.field public static final ECALL_STATE_NO_CALL:I = 0x0

.field public static final ECALL_STOP_PROMPT:I = 0x1

.field public static final ECALL_TRIGGER:I = 0x0

.field public static final ECALL_TRIGGER_IMMEDIATE:I = 0x2

.field public static final ENTER_DV_TEST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXIT_DV_TEST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_ADR_OFF:I = 0x1

.field public static final GPS_ADR_ON:I = 0x0

.field public static final GPS_ANT_STATE_NORMAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_ANT_STATE_OPEN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_ANT_STATE_SHORT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_ANT_STATE_UNKNOWN:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_DEBUG_FUNCTION_CLOSE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_DEBUG_FUNCTION_OPEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_POLLING_NOT_WRITEABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_POLLING_WRITEABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_POWER_STATE_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_POWER_STATE_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_RESET_COLD:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_RESET_FAILED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_RESET_HOT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_RESET_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GPS_RESET_WARM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_NET_ST:I = 0x21401025
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_REMOTE_DIAG_CAPTURE_RESP:I = 0x21101006
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_REMOTE_DIAG_PARK_LOC:I = 0x21101004
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_TBOX_APN_TRAFFIC:I = 0x21511060

.field public static final ID_CDU_TBOX_BAND_MODEM_REQ:I = 0x21401014
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_TBOX_MODEM_STATUS_REQ:I = 0x21401010
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_TBOX_OTA_WOKING_ST:I = 0x2140105d

.field public static final ID_CDU_WIFI_GW:I = 0x21101003
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_CDU_WIFI_STATE:I = 0x21401002
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_RESET_TBOX:I = 0x21401458
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MQTT_BACKEND_AND_PIGEONAPP:I = 0x21101052
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_AC_CHARGE_UNLOCK_ST:I = 0x2140105a

.field public static final ID_TBOX_AI_CHARGE_SET:I = 0x21411083

.field public static final ID_TBOX_AI_CHARGE_VALLY_TIME:I = 0x21411084

.field public static final ID_TBOX_AI_CHG_START_TIME:I = 0x21411085

.field public static final ID_TBOX_ANDROID_GPS_LOCATION:I = 0x21101048
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_APN_NETM_CONFIG:I = 0x21101061

.field public static final ID_TBOX_APPOINT_CHG_SET:I = 0x21411023

.field public static final ID_TBOX_APPOINT_CHG_SET_ONLY:I = 0x21701026
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TBOX_APPOINT_KEEP_TEMP:I = 0x2141104a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_APP_ACCOUNT_FB:I = 0x21401047
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_AUTO_POWER_OFF_SW:I = 0x2140102f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_AVP_START:I = 0x21401018
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_BAND_MODEM:I = 0x21101015
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_BLE_CONNECTEDST:I = 0x21401036

.field public static final ID_TBOX_BLE_KEY_AUTH_STATE:I = 0x21401072

.field public static final ID_TBOX_BLE_KEY_SEARCH_REQ:I = 0x21401066

.field public static final ID_TBOX_CAMERA_REMOTE_CTRL:I = 0x21101019
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CANCEL_POWER_OFF_SW:I = 0x21401030
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CAN_CONTROLLER:I = 0x21101016
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CARE_MODE_CLOUD_TIPS:I = 0x21401080

.field public static final ID_TBOX_CARE_MODE_HVAC_CONTROL:I = 0x21601079

.field public static final ID_TBOX_CARE_MODE_REMOTE_STRING:I = 0x21101081

.field public static final ID_TBOX_CARE_MODE_TRMOTE_SW:I = 0x21401077

.field public static final ID_TBOX_CDU_APN:I = 0x21101011
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CDU_BATTERY_KEEP_TEMP_REQ:I = 0x21401254
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CDU_MODEM_STATUS_RESP:I = 0x21101013
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CDU_SELF_MODE:I = 0x21401045
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CDU_SET_BAND_MODEM_RESP:I = 0x21401017
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CDU_TTMSW_REQUEST:I = 0x2140106f

.field public static final ID_TBOX_CDU_TTM_RESET_REQUEST:I = 0x21401070

.field public static final ID_TBOX_CDU_WIFI_BLE_EMER:I = 0x2110104e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CERT_INSTALL:I = 0x2140100a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CERT_VERIFY:I = 0x2140100b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_CHARGEGUN_UNLOCK_CMD:I = 0x21401024

.field public static final ID_TBOX_CHARGER_REQ:I = 0x21401022

.field public static final ID_TBOX_CHARGE_STOP_SOC:I = 0x21401021

.field public static final ID_TBOX_CHRG_GUN_LOCK_REQ:I = 0x21401027

.field public static final ID_TBOX_CONNECT_STATE:I = 0x2140100f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_DIGITAL_KEY_DELETE_RESULT:I = 0x2110106d

.field public static final ID_TBOX_DIGITAL_KEY_DISTANCE:I = 0x21401076

.field public static final ID_TBOX_DIGITAL_KEY_EXIST_STATUS:I = 0x2110106c

.field public static final ID_TBOX_DIGITAL_KEY_LIST:I = 0x2110106b

.field public static final ID_TBOX_DIGITAL_KEY_LOGIN:I = 0x2110106a

.field public static final ID_TBOX_DIGITAL_KEY_OPT_CMD:I = 0x21101069

.field public static final ID_TBOX_DV_BATT:I = 0x2110100c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_DV_ON_OFF:I = 0x2140102a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_DV_TEMP:I = 0x21101028
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_DV_TEMP_REQ:I = 0x21401029
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_ECALL_LOCALE:I = 0x21101082

.field public static final ID_TBOX_ECALL_MUTE_REQ:I = 0x21401053

.field public static final ID_TBOX_ECALL_PROMPT_CMD:I = 0x21411065

.field public static final ID_TBOX_ECALL_STATE:I = 0x21401054

.field public static final ID_TBOX_ECALL_STATE_REQ:I = 0x2140106e

.field public static final ID_TBOX_ECALL_STATUS_CMD:I = 0x21411063

.field public static final ID_TBOX_ECALL_TRIGGER_CMD:I = 0x21411064

.field public static final ID_TBOX_ECALL_WAIT_COUNT_DOWN:I = 0x2140107b

.field public static final ID_TBOX_ERA_ECALL_MUTE_REQ:I = 0x2140107a

.field public static final ID_TBOX_FACTORY_PRE_CERT:I = 0x21101050
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GENERAL_ORDER_RTC:I = 0x21101071

.field public static final ID_TBOX_GPS_ADR_CMD:I = 0x21401086

.field public static final ID_TBOX_GPS_ANT_POWER:I = 0x2141103c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GPS_DEBUG:I = 0x2140103f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GPS_HW_RESET:I = 0x2140103d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GPS_MGA:I = 0x21401040
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GPS_POLLING_CTRL:I = 0x2140103e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GPS_RESET:I = 0x21401020
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GUARD:I = 0x21411035
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_GUARD_TICK:I = 0x2140105c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_IOT_BUS_TYPE:I = 0x2140105b

.field public static final ID_TBOX_LOG_DOWNLOAD_FINISH:I = 0x21401058

.field public static final ID_TBOX_LOG_DOWNLOAD_START:I = 0x21401057

.field public static final ID_TBOX_MODEM_CAPTURE_CTRL:I = 0x21401056

.field public static final ID_TBOX_MODEM_INFO:I = 0x2110100e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_MUL_BLE_REPLACE:I = 0x2110104f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_OTA_COMMIT:I = 0x21101009
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_OTA_PROGRESS:I = 0x2140100d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_OTA_UDISK:I = 0x2110102d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_OTA_UPDATE:I = 0x21101008
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_PHONE_KEY_SECURE_ST:I = 0x21411073

.field public static final ID_TBOX_PHONE_LOCATION:I = 0x21401062

.field public static final ID_TBOX_POWER_OFF_COUNTDOWN:I = 0x21411031
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_PSU_MSG:I = 0x2110101f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_REMOTE_BATTERY_KEEP_TEMP_REQ:I = 0x2140104b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_REMOTE_DIAG_CAPTURE_REQ:I = 0x21401005
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_REPAIR_MODE:I = 0x21401041
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_REPLACE_REQ:I = 0x21101046
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_RTC:I = 0x21501001
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SIM_ST:I = 0x21401012
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SLOW_CHARGE_REQ:I = 0x2140102e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SOLDIER_CAMERASW:I = 0x21401042
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SOLDIER_ENABLE:I = 0x21401044
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SOLDIER_REMOTE_SW:I = 0x21401067

.field public static final ID_TBOX_SOLDIER_SW:I = 0x21401032
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_SOLDIER_WORK_ST:I = 0x21401033
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_THRESHOLD:I = 0x21411043
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_TIMEZONE_REQ:I = 0x21411059

.field public static final ID_TBOX_TIME_UPDATE_REASON:I = 0x21101068

.field public static final ID_TBOX_UBLOX_LOG:I = 0x2140104c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_UPGRADE_4G:I = 0x2140102c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_UPGRADE_PREPARE:I = 0x2110104d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_UPGRADE_TMCU:I = 0x2140102b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_VERSION:I = 0x21101007
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TBOX_WAKE_ORDER_RTC:I = 0x2110105f

.field public static final ID_TBOX_WIFI_DEBUG_CTRL:I = 0x21401055

.field public static final MGA_RESPONSE_FAIL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MGA_RESPONSE_SUCCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NETWORK_TYPE_4G:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NETWORK_TYPE_WIFI:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PHONE_KEY_ILLEGAL:I = 0x0

.field public static final PHONE_KEY_LEGAL:I = 0x1

.field public static final PHONE_LOCATION_INSIDE:I = 0x2

.field public static final PHONE_LOCATION_NO_COMMAND:I = 0x0

.field public static final PHONE_LOCATION_OUTSIDE:I = 0x1

.field public static final POWER_OFF_COUNTDOWN_INVALID_VALUE:I = 0x3f

.field public static final REQUEST_GET_GPS_ANT_STATE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUEST_SET_GPS_ANT_POWER_OFF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUEST_SET_GPS_ANT_POWER_ON:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_MODE_DISABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_MODE_ENABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_SW_LEVEL_1:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_SW_LEVEL_2:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_SW_LEVEL_3:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SOLDIER_SW_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final START_BATTERY_KEEP_TEMP:I = 0x1

.field public static final START_SLOW_CHARGE:I = 0x0

.field public static final STOP_BATTERY_KEEP_TEMP:I = 0x2

.field public static final STOP_SLOW_CHARGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarTboxManager"

.field public static final TBOX_AC_CHARGE_UNLOCK_ST_APPOINTMENT:I = 0x2

.field public static final TBOX_AC_CHARGE_UNLOCK_ST_UNLOCK:I = 0x1

.field public static final TBOX_AI_CHARGE_FLAG_OFF:I = 0x0

.field public static final TBOX_AI_CHARGE_FLAG_ON:I = 0x1

.field public static final TBOX_BATTERY_KEEP_TEMP_APPOINT_CANCEL:I = 0x3

.field public static final TBOX_BATTERY_KEEP_TEMP_APPOINT_EVERYDAY:I = 0x2

.field public static final TBOX_BATTERY_KEEP_TEMP_APPOINT_NO_COMMAND:I = 0x0

.field public static final TBOX_BATTERY_KEEP_TEMP_APPOINT_ONCE:I = 0x1

.field public static final TBOX_CARE_MODE_SW_CLOSE:I = 0x1

.field public static final TBOX_CARE_MODE_SW_OPEN:I = 0x2

.field public static final TBOX_CARE_MODE_TIPS_AC_ABNORMAL_CLOSE:I = 0x3

.field public static final TBOX_CARE_MODE_TIPS_AC_ABNORMAL_EXIT:I = 0x4

.field public static final TBOX_CARE_MODE_TIPS_DEFAULT:I = 0x0

.field public static final TBOX_CARE_MODE_TIPS_HV_SHUTDOWN:I = 0x6

.field public static final TBOX_CARE_MODE_TIPS_NOT_P_GEAR:I = 0x7

.field public static final TBOX_CARE_MODE_TIPS_SOC_10_PERCENT:I = 0x2

.field public static final TBOX_CARE_MODE_TIPS_SOC_15_PERCENT:I = 0x1

.field public static final TBOX_CARE_MODE_TIPS_SOC_5_PERCENT:I = 0x8

.field public static final TBOX_CARE_MODE_TIPS_USER_CLOSED:I = 0x9

.field public static final TBOX_CARE_MODE_TIPS_WINDOW_CLOSE_FAIL:I = 0x5

.field public static final TBOX_CHARGE_APPOINT_EVERYDAY:I = 0x2

.field public static final TBOX_CHARGE_APPOINT_ONCE:I = 0x1

.field public static final TBOX_CHARGE_CANCEL:I = 0x3

.field public static final TBOX_CHARGE_GUN_UNLOCK_ACTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_CHARGE_GUN_UNLOCK_INACTIVE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_CHARGE_HOUR_INVAL:I = 0x1f

.field public static final TBOX_CHARGE_MIN_INVAL:I = 0x3f

.field public static final TBOX_CHARGE_NOCOMMAND:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_COMMAND_NO_REQUEST:I = 0x0

.field public static final TBOX_COMMAND_REQUEST:I = 0x1

.field public static final TBOX_CONNECTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_DLT_LOG:I = 0x0

.field public static final TBOX_DLT_MODEM_LOG:I = 0x1

.field public static final TBOX_IOT_BUS_TYPE_AC_CHARGER:I = 0x1

.field public static final TBOX_LOG_RESP_OK:I = 0xc8

.field public static final TBOX_NOT_CONNECTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_ROUTE_OFF:I = 0x0

.field public static final TBOX_ROUTE_ON:I = 0x1

.field public static final TBOX_ROUTE_QUERY:I = 0x2

.field public static final TBOX_START_CHARGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TBOX_STATUS_ACTIVE:I = 0x1

.field public static final TBOX_STATUS_FAILURE:I = 0x1

.field public static final TBOX_STATUS_INACTIVE:I = 0x0

.field public static final TBOX_STATUS_OFF:I = 0x0

.field public static final TBOX_STATUS_ON:I = 0x1

.field public static final TBOX_STATUS_SUCCESS:I = 0x0

.field public static final TBOX_STOP_CHARGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TOGGLE_GPS_LOG_SWITCH_FAIL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TOGGLE_GPS_LOG_SWITCH_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TTMSW_CLOSE_REQUEST:I = 0x1

.field public static final TTMSW_NO_REQUEST:I = 0x0

.field public static final TTMSW_OPEN_REQUEST:I = 0x2

.field public static final TTMSW_STOP_REQUEST:I = 0x3

.field public static final TTM_RESET_REQUEST_NO_ACTION:I = 0x0

.field public static final TTM_RESET_REQUEST_RESET:I = 0x1

.field public static final WIFI_STATUS_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_STATUS_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mCarTimeService:Landroid/car/hardware/tbox/ICarTime;

.field private final mTboxPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p5, "CarTboxManager"

    .line 2603
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 2470
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x70

    new-array p2, p2, [Ljava/lang/Integer;

    const p5, 0x21501001

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, p3

    const p3, 0x21401002

    .line 2471
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x1

    aput-object p3, p2, p5

    const p3, 0x21101003

    .line 2472
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x2

    aput-object p3, p2, p5

    const p3, 0x21101004

    .line 2473
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x3

    aput-object p3, p2, p5

    const p3, 0x21401005

    .line 2474
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x4

    aput-object p3, p2, p5

    const p3, 0x21101006

    .line 2475
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x5

    aput-object p3, p2, p5

    const p3, 0x21101007

    .line 2476
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x6

    aput-object p3, p2, p5

    const p3, 0x21101008

    .line 2477
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p5, 0x7

    aput-object p3, p2, p5

    const p3, 0x21101009

    .line 2478
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x8

    aput-object p3, p2, p5

    const p3, 0x2140100d

    .line 2479
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x9

    aput-object p3, p2, p5

    const p3, 0x2110100e

    .line 2480
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xa

    aput-object p3, p2, p5

    const p3, 0x2140100f

    .line 2481
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xb

    aput-object p3, p2, p5

    const p3, 0x21401021

    .line 2482
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xc

    aput-object p3, p2, p5

    const p3, 0x21401022

    .line 2483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xd

    aput-object p3, p2, p5

    const p3, 0x21401010

    .line 2484
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xe

    aput-object p3, p2, p5

    const p3, 0x21101011

    .line 2485
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0xf

    aput-object p3, p2, p5

    const p3, 0x21101013

    .line 2486
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x10

    aput-object p3, p2, p5

    const p3, 0x21401014

    .line 2487
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x11

    aput-object p3, p2, p5

    const p3, 0x21101015

    .line 2488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x12

    aput-object p3, p2, p5

    const p3, 0x21401017

    .line 2489
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x13

    aput-object p3, p2, p5

    const p3, 0x21401025

    .line 2490
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x14

    aput-object p3, p2, p5

    const p3, 0x21401012

    .line 2491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x15

    aput-object p3, p2, p5

    const p3, 0x21401020

    .line 2492
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x16

    aput-object p3, p2, p5

    const p3, 0x2110101f

    .line 2493
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x17

    aput-object p3, p2, p5

    const p3, 0x21401024

    .line 2494
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x18

    aput-object p3, p2, p5

    const p3, 0x21411023

    .line 2495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x19

    aput-object p3, p2, p5

    const p3, 0x21701026

    .line 2496
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1a

    aput-object p3, p2, p5

    const p3, 0x21101016

    .line 2497
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1b

    aput-object p3, p2, p5

    const p3, 0x21401018

    .line 2498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1c

    aput-object p3, p2, p5

    const p3, 0x2140100a

    .line 2499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1d

    aput-object p3, p2, p5

    const p3, 0x2140100b

    .line 2500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1e

    aput-object p3, p2, p5

    const p3, 0x2110100c

    .line 2501
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x1f

    aput-object p3, p2, p5

    const p3, 0x21401027

    .line 2502
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x20

    aput-object p3, p2, p5

    const p3, 0x2140102a

    .line 2503
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x21

    aput-object p3, p2, p5

    const p3, 0x21401029

    .line 2504
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x22

    aput-object p3, p2, p5

    const p3, 0x21101028

    .line 2505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x23

    aput-object p3, p2, p5

    const p3, 0x2140102b

    .line 2506
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x24

    aput-object p3, p2, p5

    const p3, 0x2140102c

    .line 2507
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x25

    aput-object p3, p2, p5

    const p3, 0x21101019

    .line 2508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x26

    aput-object p3, p2, p5

    const p3, 0x2110102d

    .line 2509
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x27

    aput-object p3, p2, p5

    const p3, 0x2140102e

    .line 2510
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x28

    aput-object p3, p2, p5

    const p3, 0x2140102f

    .line 2511
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x29

    aput-object p3, p2, p5

    const p3, 0x21401030

    .line 2512
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2a

    aput-object p3, p2, p5

    const p3, 0x21411031

    .line 2513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2b

    aput-object p3, p2, p5

    const p3, 0x21401032

    .line 2514
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2c

    aput-object p3, p2, p5

    const p3, 0x21401033

    .line 2515
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2d

    aput-object p3, p2, p5

    const p3, 0x21411035

    .line 2516
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2e

    aput-object p3, p2, p5

    const p3, 0x2140105c

    .line 2517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x2f

    aput-object p3, p2, p5

    const p3, 0x2141103c

    .line 2518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x30

    aput-object p3, p2, p5

    const p3, 0x21401040

    .line 2519
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x31

    aput-object p3, p2, p5

    const p3, 0x21401458

    .line 2520
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x32

    aput-object p3, p2, p5

    const p3, 0x21401041

    .line 2521
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x33

    aput-object p3, p2, p5

    const p3, 0x21401042

    .line 2522
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x34

    aput-object p3, p2, p5

    const p3, 0x21411043

    .line 2523
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x35

    aput-object p3, p2, p5

    const p3, 0x21401044

    .line 2524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x36

    aput-object p3, p2, p5

    const p3, 0x21101046

    .line 2525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x37

    aput-object p3, p2, p5

    const p3, 0x21401045

    .line 2526
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x38

    aput-object p3, p2, p5

    const p3, 0x21401047

    .line 2527
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x39

    aput-object p3, p2, p5

    const p3, 0x21101048

    .line 2528
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3a

    aput-object p3, p2, p5

    const p3, 0x21401254

    .line 2529
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3b

    aput-object p3, p2, p5

    const p3, 0x2140104b

    .line 2530
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3c

    aput-object p3, p2, p5

    const p3, 0x2141104a

    .line 2531
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3d

    aput-object p3, p2, p5

    const p3, 0x2140104c

    .line 2532
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3e

    aput-object p3, p2, p5

    const p3, 0x2110104d

    .line 2533
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x3f

    aput-object p3, p2, p5

    const p3, 0x2110104e

    .line 2534
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x40

    aput-object p3, p2, p5

    const p3, 0x2110104f

    .line 2535
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x41

    aput-object p3, p2, p5

    const p3, 0x21101050

    .line 2536
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x42

    aput-object p3, p2, p5

    const p3, 0x21101052

    .line 2537
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x43

    aput-object p3, p2, p5

    const p3, 0x21401053

    .line 2538
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x44

    aput-object p3, p2, p5

    const p3, 0x2140107a

    .line 2539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x45

    aput-object p3, p2, p5

    const p3, 0x21401054

    .line 2540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x46

    aput-object p3, p2, p5

    const p3, 0x21401055

    .line 2541
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x47

    aput-object p3, p2, p5

    const p3, 0x21401056

    .line 2542
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x48

    aput-object p3, p2, p5

    const p3, 0x21401057

    .line 2543
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x49

    aput-object p3, p2, p5

    const p3, 0x21401058

    .line 2544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4a

    aput-object p3, p2, p5

    const p3, 0x21411059

    .line 2545
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4b

    aput-object p3, p2, p5

    const p3, 0x2140105b

    .line 2546
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4c

    aput-object p3, p2, p5

    const p3, 0x2140105a

    .line 2547
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4d

    aput-object p3, p2, p5

    const p3, 0x2140105d

    .line 2548
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4e

    aput-object p3, p2, p5

    const p3, 0x2110105f

    .line 2549
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x4f

    aput-object p3, p2, p5

    const p3, 0x21511060

    .line 2550
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x50

    aput-object p3, p2, p5

    const p3, 0x21101061

    .line 2551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x51

    aput-object p3, p2, p5

    const p3, 0x21401036

    .line 2552
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x52

    aput-object p3, p2, p5

    const p3, 0x21401072

    .line 2553
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x53

    aput-object p3, p2, p5

    const p3, 0x21401062

    .line 2554
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x54

    aput-object p3, p2, p5

    const p3, 0x21411063

    .line 2555
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x55

    aput-object p3, p2, p5

    const p3, 0x21411064

    .line 2556
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x56

    aput-object p3, p2, p5

    const p3, 0x21411065

    .line 2557
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x57

    aput-object p3, p2, p5

    const p3, 0x2140107b

    .line 2558
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x58

    aput-object p3, p2, p5

    const p3, 0x2140106e

    .line 2559
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x59

    aput-object p3, p2, p5

    const p3, 0x21401066

    .line 2560
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5a

    aput-object p3, p2, p5

    const p3, 0x21401067

    .line 2561
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5b

    aput-object p3, p2, p5

    const p3, 0x21101068

    .line 2562
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5c

    aput-object p3, p2, p5

    const p3, 0x2110106d

    .line 2563
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5d

    aput-object p3, p2, p5

    const p3, 0x2110106c

    .line 2564
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5e

    aput-object p3, p2, p5

    const p3, 0x2110106b

    .line 2565
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x5f

    aput-object p3, p2, p5

    const p3, 0x2110106a

    .line 2566
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x60

    aput-object p3, p2, p5

    const p3, 0x21101069

    .line 2567
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x61

    aput-object p3, p2, p5

    const p3, 0x2140106f

    .line 2568
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x62

    aput-object p3, p2, p5

    const p3, 0x21401070

    .line 2569
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x63

    aput-object p3, p2, p5

    const p3, 0x21101071

    .line 2570
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x64

    aput-object p3, p2, p5

    const p3, 0x21411073

    .line 2571
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x65

    aput-object p3, p2, p5

    const p3, 0x21401076

    .line 2572
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x66

    aput-object p3, p2, p5

    const p3, 0x21401077

    .line 2573
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x67

    aput-object p3, p2, p5

    const p3, 0x21601079

    .line 2574
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x68

    aput-object p3, p2, p5

    const p3, 0x21401080

    .line 2575
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x69

    aput-object p3, p2, p5

    const p3, 0x21101081

    .line 2576
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6a

    aput-object p3, p2, p5

    const p3, 0x21411083

    .line 2577
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6b

    aput-object p3, p2, p5

    const p3, 0x21411084

    .line 2578
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6c

    aput-object p3, p2, p5

    const p3, 0x21411085

    .line 2579
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6d

    aput-object p3, p2, p5

    const p3, 0x21101082

    .line 2580
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6e

    aput-object p3, p2, p5

    const p3, 0x21401086

    .line 2581
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p5, 0x6f

    aput-object p3, p2, p5

    .line 2470
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/tbox/CarTboxManager;->mTboxPropertyIds:Landroid/util/ArraySet;

    .line 2604
    invoke-static {p4}, Landroid/car/hardware/tbox/ICarTime$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/tbox/ICarTime;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/tbox/CarTboxManager;->mCarTimeService:Landroid/car/hardware/tbox/ICarTime;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_tbox"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public get4GUpgradingProgress()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3487
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTbox4GUpgradingProgress()I

    move-result v0

    return v0
.end method

.method public getACChargeUnlockST()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4731
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxACChargeUnlockST()I

    move-result v0

    return v0
.end method

.method public getAIchargeFlagAndTravelTime()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411083

    const/4 v1, 0x0

    .line 5290
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAIchargeStartAndEndTime()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411085

    const/4 v1, 0x0

    .line 5324
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoPowerOffSt()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3573
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxAutoPowerOffSt()I

    move-result v0

    return v0
.end method

.method public getAvpStartStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3335
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxAvpStartStatus()I

    move-result v0

    return v0
.end method

.method public getBLEKeySearchReq()I
    .locals 3

    .line 4892
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBLEKeySearchReq()I

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

    .line 4894
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBLEKeySearchReq throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryKeepTempAppointTime()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4173
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxBatteryKeepTempAppointTime()[I

    move-result-object v0

    return-object v0
.end method

.method public getBleConnectedSt()I
    .locals 3

    .line 4837
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBleConnectedSt()I

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

    .line 4839
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBleConnectedSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getBleKeyAuthSt()I
    .locals 2

    const v0, 0x21401072

    const/4 v1, 0x0

    .line 4856
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCancelPowerOffSt()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3610
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxCancelPowerOffSt()I

    move-result v0

    return v0
.end method

.method public getChargeAppointTime()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3087
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChargeAppointTime()[I

    move-result-object v0

    return-object v0
.end method

.method public getCopyTboxLogResponse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4648
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getStartCopyTboxLogResponse()I

    move-result v0

    return v0
.end method

.method public getDvBattMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3380
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxDvBattMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDvTempMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3425
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxDvTempMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEcallMuteRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4316
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxEcallMuteRequest()I

    move-result v0

    return v0
.end method

.method public getEcallPromptReq()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4482
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEcallPromptReq()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4484
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEcallPromptReq throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4486
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getEcallState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4352
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxEcallState()I

    move-result v0

    return v0
.end method

.method public getEcallStatusReq()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4379
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEcallStatusReq()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4381
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEcallStatusReq throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 4383
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getEcallTriggerResp()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4457
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEcallTriggerResp()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4459
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEcallTriggerResp throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4461
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getEcallWaitCountDown()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140107b

    const/4 v1, 0x0

    .line 4502
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEraEcallMuteRequest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140107a

    const/4 v1, 0x0

    .line 4332
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFactoryPreCert()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4270
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxFactoryPreCert()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinishTboxLogResponse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4678
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFinishCopyTboxLogResponse()I

    move-result v0

    return v0
.end method

.method public getGpsAntPowerControlResponse()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3781
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getGpsAntPowerControlResponse()[I

    move-result-object v0

    return-object v0
.end method

.method public getGpsMgaResponse()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3866
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxGpsMgaResponse()I

    move-result v0

    return v0
.end method

.method public getGpsResetResp()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3235
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getGpsResetResp()I

    move-result v0

    return v0
.end method

.method public getIOTBusinessType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4716
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxIOTBusinessType()I

    move-result v0

    return v0
.end method

.method public getMultiBleRenewalResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4055
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxMultiBleRenewalResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtaProgress()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2755
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getOTAProgress()I

    move-result v0

    return v0
.end method

.method public getPhoneKeySecureSt()[I
    .locals 2

    const v0, 0x21411073

    const/4 v1, 0x0

    .line 5112
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntVectorProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getPhoneLocation()I
    .locals 3

    .line 4873
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPhoneLocation()I

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

    .line 4875
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneLocation throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPigeonNotification()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4300
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxPigeonNotification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerOffCountdown()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3628
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxPowerOffCountdown()[I

    move-result-object v0

    return-object v0
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

    .line 2633
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mTboxPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRemoteBatteryKeepTempReq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4137
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxRemoteBatteryKeepTempReq()I

    move-result v0

    return v0
.end method

.method public getRemoteDiagCaptureRequest()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2710
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRemoteDiagCaptureRequest()I

    move-result v0

    return v0
.end method

.method public getRemoteLluSelfMode()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4070
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxRemoteLluMode()I

    move-result v0

    return v0
.end method

.method public getRemoteTboxCareModeSwitchStatus()I
    .locals 3

    const v0, 0x21401077

    const/4 v1, 0x0

    .line 5159
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRemoteTboxCareModeSwitchStatus failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getRemoteTboxCareModeTempSet()F
    .locals 3

    const v0, 0x21601079

    const/4 v1, 0x0

    .line 5178
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getFloatProperty(II)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRemoteTboxCareModeTempSet failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_0
    return v0
.end method

.method public getRenewalPartsResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4025
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxRenewalPartsResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepairModeState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3922
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxRepairModeState()I

    move-result v0

    return v0
.end method

.method public getRoutingForTbox()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4580
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRoutingForTboxResponse()I

    move-result v0

    return v0
.end method

.method public getRtcFromTbox()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2649
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxRtcTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSimStatusAsync()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3100
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSimStatusAsync()V

    return-void
.end method

.method public getSoldierGsensorData()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3707
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxSoldierGsensorData()[I

    move-result-object v0

    return-object v0
.end method

.method public getSoldierSwState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3669
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxSoldierSwState()I

    move-result v0

    return v0
.end method

.method public getSoldierWorkState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3687
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxSoldierWorkState()I

    move-result v0

    return v0
.end method

.method public getSoliderEnableState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3995
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxSoliderEnableState()I

    move-result v0

    return v0
.end method

.method public getStartTboxOtaResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3182
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getStartTboxOTAResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStopTboxOtaResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3198
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getStopTboxOTAResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTMResetRequest()I
    .locals 2

    const v0, 0x21401070

    const/4 v1, 0x0

    .line 5098
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTTMSwRequest()I
    .locals 2

    const v0, 0x2140106f

    const/4 v1, 0x0

    .line 5084
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTboxBandModem()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxBandModem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxCanControlMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3320
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxCanControlMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxCanControlMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3303
    iget-object p1, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxCanControlMsg()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTboxCareModeRemoteControlString()Ljava/lang/String;
    .locals 2

    const v0, 0x21101081

    const/4 v1, 0x0

    .line 5222
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxChargeLimitValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2831
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxChargeLimitValue()I

    move-result v0

    return v0
.end method

.method public getTboxChargeLimiteValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2801
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxChargeLimitValue()I

    move-result v0

    return v0
.end method

.method public getTboxConnectionStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxConnectionStatus()I

    move-result v0

    return v0
.end method

.method public getTboxDigitalKeyDeleteResult()Ljava/lang/String;
    .locals 2

    const v0, 0x2110106d

    const/4 v1, 0x0

    .line 5069
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxDigitalKeyDistance()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401076

    const/4 v1, 0x0

    .line 5124
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTboxDigitalKeyExistSt()Ljava/lang/String;
    .locals 2

    const v0, 0x2110106c

    const/4 v1, 0x0

    .line 5052
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxDigitalKeyList()Ljava/lang/String;
    .locals 2

    const v0, 0x2110106b

    const/4 v1, 0x0

    .line 5035
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxDigitalKeyLoginSt()Ljava/lang/String;
    .locals 2

    const v0, 0x2110106a

    const/4 v1, 0x0

    .line 5007
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxGeneralOrderRTCResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4789
    iget-object p1, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxGeneralOrderRTCResponse()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTboxGpsAdrSt()I
    .locals 4

    const v0, 0x21401086

    const/4 v1, 0x0

    .line 5361
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getTboxGpsAdrSt failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarTboxManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getTboxLastApnMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2942
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxLastApnMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxLastBandModemMsg()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2987
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxLastBandModemMsg()I

    move-result v0

    return v0
.end method

.method public getTboxLastModemMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2957
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxLastModemMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxModemCapture()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4615
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxModemCaptureResponse()I

    move-result v0

    return v0
.end method

.method public getTboxModemInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2770
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTBoxModemInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxNetmConfInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4819
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxNetmConfInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxPsuMsg()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3269
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxPsuMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTboxSoldierRemoteSw()I
    .locals 2

    const v0, 0x21401067

    const/4 v1, 0x0

    .line 4913
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTboxSoliderCameraState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3961
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxSoliderCameraState()I

    move-result v0

    return v0
.end method

.method public getTboxTimeUpdateReason()Ljava/lang/String;
    .locals 3

    .line 4943
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxTimeUpdateReason()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4945
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTboxTimeUpdateReason throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTboxManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    return-object v0
.end method

.method public getTboxVersionInfoResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3150
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxVersionInfoResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTmcuUpgradingProgress()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3456
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxTmcuUpgradingProgress()I

    move-result v0

    return v0
.end method

.method public getToggleGpsLogSwitchResult()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4209
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxToggleGpsLogSwitchResult()I

    move-result v0

    return v0
.end method

.method public getUpgradePrepareResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4240
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTboxUpgradePrepareResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradingTboxByUdiskResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3535
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getUpgradingTboxByUdiskResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConnected()V
    .locals 2

    .line 2609
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onConnected()V

    .line 2611
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/tbox/CarTboxManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_time"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/tbox/ICarTime$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/tbox/ICarTime;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mCarTimeService:Landroid/car/hardware/tbox/ICarTime;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2613
    invoke-virtual {p0, v0}, Landroid/car/hardware/tbox/CarTboxManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public requestTboxBandModemStatus()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2972
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->requestTBoxBandModemStatus()V

    return-void
.end method

.method public requestTboxModemStatus()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2927
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->requestTBoxModemStatus()V

    return-void
.end method

.method public resetTbox()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3885
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->resetTbox()V

    return-void
.end method

.method public sendBleAccountLoginFeedback(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4089
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxBleAccountLoginFeedback(I)V

    return-void
.end method

.method public sendCareModeRunningTipsToCloud(I)V
    .locals 2

    const v0, 0x21401080

    const/4 v1, 0x0

    .line 5205
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendCareModeRunningTipsToCloud failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendCareModeStatusAndRespToTbox(II)I
    .locals 1

    .line 5137
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendCareModeStatusAndRespToTbox(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 5139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calling sendCareModeStatusAndRespToTbox failed due to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarTboxManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public sendCopyTboxLogRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4632
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendStartCopyTboxLogRequest(I)V

    return-void
.end method

.method public sendEcallPromptResp(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4523
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendEcallPromptResp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4525
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendEcallPromptResp throw RemoteException | RuntimeException e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarTboxManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendEcallStateReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140106e

    const/4 v1, 0x0

    .line 4542
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEcallStateReq throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendEcallStatusResp(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4408
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendEcallStatusResp(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4410
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendEcallStatusResp throw RemoteException | RuntimeException e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarTboxManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendEcallTriggerReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4433
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendEcallTriggerReq(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4435
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendEcallTriggerReq throw RemoteException | RuntimeException e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarTboxManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendEmergencyWifiBleMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4255
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxEmergencyWifiBleMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendFactoryPreCert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4285
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxFactoryPreCert(Ljava/lang/String;)V

    return-void
.end method

.method public sendFinishTboxLogRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4662
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendFinishCopyTboxLogRequest()V

    return-void
.end method

.method public sendGpsAntPowerControlReq(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3757
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxGpsAntPowerControlReq(I)V

    return-void
.end method

.method public sendGpsHwResetRequest()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3796
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxGpsHwResetRequest()V

    return-void
.end method

.method public sendGpsMgaRequest()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3847
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxGpsMgaRequest()V

    return-void
.end method

.method public sendLocationInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4105
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxLocationInfo(Ljava/lang/String;)V

    return-void
.end method

.method public sendMultiBleRenewalRequest(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4040
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxMultiBleRenewalRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendRemoteDiagInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3738
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxRemoteDiagInfo(Ljava/lang/String;)V

    return-void
.end method

.method public sendRenewalPartsRequest(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4010
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxRenewalPartsRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendSoldierTickMsg()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3722
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxSoldierTick()V

    return-void
.end method

.method public sendTboxApnTrafficInfo(JJJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 4806
    iget-object v1, v0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxApnTrafficInfo(JJJJ)V

    return-void
.end method

.method public sendTboxEcallLocale(Ljava/lang/String;)V
    .locals 2

    const v0, 0x21101082

    const/4 v1, 0x0

    .line 5252
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setStringProperty(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendTboxLocale failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendTboxGeneralOrderRTC(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4775
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxGeneralOrderRTC(Ljava/lang/String;)V

    return-void
.end method

.method public sendTboxGpsAdrCmd(I)I
    .locals 2

    const v0, 0x21401086

    const/4 v1, 0x0

    .line 5340
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendTboxGpsAdrCmd failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendTboxOtaWorkingStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4747
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxOtaWorkingStatus(I)V

    return-void
.end method

.method public sendTboxWakeOrderRTC(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4761
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxWakeOrderRTC(Ljava/lang/String;)V

    return-void
.end method

.method public sendUpgradePrepareRequest(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4225
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxUpgradePrepareRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3519
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V

    return-void
.end method

.method public setAIchargeFlagAndTravelTime([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411083

    const/4 v1, 0x0

    .line 5273
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setAIchargeValleyElectrTime([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21411084

    const/4 v1, 0x0

    .line 5307
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setAutoPowerOffConfig(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3554
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxAutoPowerOffConfig(I)V

    return-void
.end method

.method public setBatteryKeepTempAppointTime(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4156
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxBatteryKeepTempAppointTime(III)V

    return-void
.end method

.method public setBatteryKeepTempSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4121
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxBatteryKeepTempSwitch(I)V

    return-void
.end method

.method public setCameraRemoteControlFeedback(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3503
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxCameraRemoteControlFeedback(Ljava/lang/String;)V

    return-void
.end method

.method public setCancelPowerOffConfig(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3592
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxCancelPowerOffConfig(I)V

    return-void
.end method

.method public setChargeAppointTime([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3064
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChargeAppointTime([I)V

    return-void
.end method

.method public setChargeGunLock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3045
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxChargeGunLock()V

    return-void
.end method

.method public setChargeGunUnlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3032
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setChargeGunUnlock()V

    return-void
.end method

.method public setDvTempSamplingPeriod(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3410
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxDvTempSamplingPeriod(I)V

    return-void
.end method

.method public setDvTestReq(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3395
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxDvTestReq(I)V

    return-void
.end method

.method public setGpsDebugSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3832
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxGpsDebugSwitch(I)V

    return-void
.end method

.method public setGpsLogSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4191
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxGpsLogSwitch(I)V

    return-void
.end method

.method public setGpsPollingType(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3814
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setGpsPollingType(I)V

    return-void
.end method

.method public setGpsReset(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3217
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setGpsReset(I)V

    return-void
.end method

.method public setNetWorkType(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3118
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNetWorkType(I)V

    return-void
.end method

.method public setNitzTimezone(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4701
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mCarTimeService:Landroid/car/hardware/tbox/ICarTime;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/tbox/ICarTime;->setCarTimezone(ILjava/lang/String;)V

    return-void

    .line 4699
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timezoneArea can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4696
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "type must be larger than zero or equal to zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteDiagCaptureResponse(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRemoteDiagCaptureResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setRemoteDiagParkLocationInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2695
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxRemoteDiagInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setRepairMode(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3904
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxRepairMode(I)V

    return-void
.end method

.method public setRoutingForTbox(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4563
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendRoutingForTboxRequest(I)V

    return-void
.end method

.method public setSoldierSw(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3648
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxSoldierSw(I)V

    return-void
.end method

.method public setTboxBandModem(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3002
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTBoxBandModem(Ljava/lang/String;)V

    return-void
.end method

.method public setTboxCanControlMsg(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3286
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxCanControlMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setTboxCareModeRemoteControlStringFeedBack(Ljava/lang/String;)V
    .locals 2

    const v0, 0x21101081

    const/4 v1, 0x0

    .line 5235
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setStringProperty(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setTboxCareModeRemoteControlStringFeedBack failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTboxChargeLimitValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2845
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTBoxChargeLimitValue(I)V

    return-void
.end method

.method public setTboxChargeLimiteValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2817
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTBoxChargeLimitValue(I)V

    return-void
.end method

.method public setTboxDigitalKeyAllDelete()I
    .locals 3

    const v0, 0x21101069

    const/4 v1, 0x0

    const-string v2, "DeleteAllDigtalKeys"

    .line 4961
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/tbox/CarTboxManager;->setStringProperty(IILjava/lang/String;)V

    return v1
.end method

.method public setTboxDigitalKeyExistQuery()I
    .locals 3

    const v0, 0x21101069

    const/4 v1, 0x0

    const-string v2, "CheckIfDkeyExist"

    .line 4991
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/tbox/CarTboxManager;->setStringProperty(IILjava/lang/String;)V

    return v1
.end method

.method public setTboxDigitalKeyListReq()I
    .locals 3

    const v0, 0x21101069

    const/4 v1, 0x0

    const-string v2, "ReqKeyList"

    .line 4976
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/tbox/CarTboxManager;->setStringProperty(IILjava/lang/String;)V

    return v1
.end method

.method public setTboxModemCapture(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4598
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTboxModemCaptureRequest(I)V

    return-void
.end method

.method public setTboxPsuMsg(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3252
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxPsuMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setTboxSoldierRemoteSw(I)I
    .locals 2

    const v0, 0x21401067

    const/4 v1, 0x0

    .line 4928
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setIntProperty(III)V

    return v1
.end method

.method public setTboxSoliderCameraSwitch(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3942
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxSoliderCameraSwitch(I)I

    move-result p1

    return p1
.end method

.method public setTboxThresholdSwitch(III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3976
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxThresholdSwitch(III)V

    return-void
.end method

.method public setTboxVersionInfoRequest()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3134
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxVersionInfoRequest()V

    return-void
.end method

.method public setWifiGwInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2679
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxWifiGatewayInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiStatus(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2664
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTboxWifiStatus(I)V

    return-void
.end method

.method public startCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2858
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startCharge()V

    return-void
.end method

.method public startSlowCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2899
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxSlowCharge()V

    return-void
.end method

.method public startTboxCertInstall()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3350
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxCertInstall()V

    return-void
.end method

.method public startTboxCertVerify()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3365
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxCertVerify()V

    return-void
.end method

.method public startTboxOta(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3166
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxOTA(Ljava/lang/String;)V

    return-void
.end method

.method public startUpgrading4G()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3471
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxUpgrading4G()V

    return-void
.end method

.method public startUpgradingTmcu()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3440
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->startTboxUpgradingTmcu()V

    return-void
.end method

.method public stopCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2871
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopCharge()V

    return-void
.end method

.method public stopFastCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2886
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopCharge()V

    return-void
.end method

.method public stopSlowCharge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2912
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopTboxSlowCharge()V

    return-void
.end method

.method public stopTboxOta()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2740
    iget-object v0, p0, Landroid/car/hardware/tbox/CarTboxManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopTboxOTA()V

    return-void
.end method
