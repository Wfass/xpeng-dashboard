.class public final Landroid/car/hardware/mcu/CarMcuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarMcuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;,
        Landroid/car/hardware/mcu/CarMcuManager$PropertyId;
    }
.end annotation


# static fields
.field public static final ACTION_POWER_OFF_COUNTDOWN_CANCLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_POWER_OFF_COUNTDOWN_END:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_START_WIFI_HOTSPOT:I = 0x1

.field public static final ANDROID_OTA_STATUS_ANDROID_RESET:I = 0x1

.field public static final BACKLIGHT_IC_DRIVER_ST_ERROR:I = 0x1

.field public static final BACKLIGHT_IC_DRIVER_ST_NORMAL:I = 0x0

.field public static final BLE_START_FAILED:I = 0x2

.field public static final BOOT_REASON_USER_LOCAL_IGON:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_A1:Ljava/lang/String; = "A1"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_A2:Ljava/lang/String; = "A2"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_A3:Ljava/lang/String; = "A3"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_Q1:Ljava/lang/String; = "Q1"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_Q2:Ljava/lang/String; = "Q2"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_Q3:Ljava/lang/String; = "Q3"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_Q5:Ljava/lang/String; = "Q5"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_CDU_Q6:Ljava/lang/String; = "Q6"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_A:Ljava/lang/String; = "A"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_B:Ljava/lang/String; = "B"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_C:Ljava/lang/String; = "C"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_D:Ljava/lang/String; = "D"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_E:Ljava/lang/String; = "E"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_F:Ljava/lang/String; = "F"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_P:Ljava/lang/String; = "P"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_V:Ljava/lang/String; = "V"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_STAGE_X:Ljava/lang/String; = "X"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D10:Ljava/lang/String; = "D10"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D20:Ljava/lang/String; = "D20"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D20P:Ljava/lang/String; = "D20P"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D20X:Ljava/lang/String; = "D20X"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D21:Ljava/lang/String; = "D21"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D21A:Ljava/lang/String; = "D21A"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D21B:Ljava/lang/String; = "D21B"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D21V:Ljava/lang/String; = "D21V"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D22:Ljava/lang/String; = "D22"

.field public static final CAR_TYPE_D22V:Ljava/lang/String; = "D22V"

.field public static final CAR_TYPE_D25:Ljava/lang/String; = "D25"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_D55:Ljava/lang/String; = "D55"

.field public static final CAR_TYPE_D55V:Ljava/lang/String; = "D55V"

.field public static final CAR_TYPE_E28:Ljava/lang/String; = "E28"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAR_TYPE_E36:Ljava/lang/String; = "E36"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CID_STATE_ERROR:I = 0x1

.field public static final CID_STATE_OK:I = 0x0

.field public static final CIU_EXIST:I = 0x1

.field public static final CIU_EXSIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CIU_NOT_EXIST:I = 0x2

.field public static final CIU_NOT_EXSIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final EMMC_FUNCTION_REMOTE_LOG_MCU:I = 0x0

.field public static final EMMC_FUNCTION_REMOTE_LOG_STOP:I = 0x2

.field public static final EMMC_FUNCTION_REMOTE_LOG_TBOX:I = 0x1

.field public static final ENTER_DV_TEST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENTER_GEOFENCE:I = 0x1

.field public static final ENTER_REPAIR_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXIT_DV_TEST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXIT_GEOFENCE:I = 0x0

.field public static final EXIT_REPAIR_MODE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HORN_STATE_NORMAL:I = 0x3

.field public static final HORN_STATE_OPEN_CIRCUIT:I = 0x1

.field public static final HORN_STATE_SHORT_CIRCUIT:I = 0x2

.field public static final ID_ANDROID_CPU_TEMPERATURE:I = 0x21601461

.field public static final ID_MCU_2ND_LEFT_BELT_WARNING:I = 0x2140148a

.field public static final ID_MCU_2ND_MID_BELT_WARNING:I = 0x2140148b

.field public static final ID_MCU_2ND_RIGHT_BELT_WARNING:I = 0x2140148c

.field public static final ID_MCU_3RD_LEFT_BELT_WARNING:I = 0x2140148d

.field public static final ID_MCU_3RD_MID_BELT_WARNING:I = 0x2140148e

.field public static final ID_MCU_3RD_RIGHT_BELT_WARNING:I = 0x2140148f

.field public static final ID_MCU_3S_REPORT_EV:I = 0x1540010a

.field public static final ID_MCU_ACK_PWR_DEBUG:I = 0x1540010a

.field public static final ID_MCU_ACK_TEST:I = 0x1540010a

.field public static final ID_MCU_APPOINT_KEEP_12VPWR:I = 0x21411493

.field public static final ID_MCU_ATLS_STATUS:I = 0x2140143e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BATCHARG_STATUS:I = 0x2170140c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BATTERY_STATUS:I = 0x21701408
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BATTERY_VOLT:I = 0x21401498
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BLE_DISCONNECT_REQ:I = 0x21401489

.field public static final ID_MCU_BLE_ID_DATA:I = 0x2170145f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BLE_ID_DATA_RSP:I = 0x21401460
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BL_IC_DRIVER_ST:I = 0x21401464
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BL_TEMP:I = 0x21401463
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_BMS_INFO:I = 0x1540010a

.field public static final ID_MCU_BURN_MCU_DONE:I = 0x1540010a

.field public static final ID_MCU_BURN_MCU_ERROR:I = 0x1540010a

.field public static final ID_MCU_BURN_MCU_PROCESS:I = 0x1540010a

.field public static final ID_MCU_CAN_DEBUG_RAW_DATA:I = 0x1540010a

.field public static final ID_MCU_CHAIR_WELCOME_MODE:I = 0x21401c7c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_CHARGE_MODE:I = 0x1540010a

.field public static final ID_MCU_CID_FB:I = 0x2140144d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_CMD_BMS:I = 0x1540010a

.field public static final ID_MCU_CMD_DIAGNOSE:I = 0x1540010a

.field public static final ID_MCU_CMD_DISPLAY:I = 0x1540010a

.field public static final ID_MCU_CMD_DUG_REQ:I = 0x1540010a

.field public static final ID_MCU_CMD_GPS_INFO:I = 0x1540010a

.field public static final ID_MCU_CMD_IRDETO_KEY:I = 0x1540010a

.field public static final ID_MCU_CMD_OTA1:I = 0x1540010a

.field public static final ID_MCU_CMD_PM_SILENT:I = 0x1540010a

.field public static final ID_MCU_CMD_POWER_DEBUG:I = 0x1540010a

.field public static final ID_MCU_CMD_PSU_OTA:I = 0x21701431

.field public static final ID_MCU_CMD_RESET_4G:I = 0x1540010a

.field public static final ID_MCU_CMD_TEST:I = 0x1540010a

.field public static final ID_MCU_CPU_TEMPERATURE:I = 0x21601461
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MCU_DELAY_SLEEP:I = 0x2141145e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DIAG_HORN_INFO:I = 0x21411455
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DIAG_SCREEN_SN:I = 0x2110149f

.field public static final ID_MCU_DISPLAY:I = 0x2110141e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DTC_REPORT_EV:I = 0x21701420
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_BAT_TM:I = 0x21601435
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_BBAT:I = 0x21701433
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_MCU_TM:I = 0x21601434
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_PCB_TM:I = 0x21601436
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_SW:I = 0x21401438
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_DVTEST_TMP_CYCLE:I = 0x21401439
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_EMMC_FUNCTION:I = 0x214014a1

.field public static final ID_MCU_ENTER_REPAIR_MODE:I = 0x21401430
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_EXT_VOICE_HB_STS_CMD:I = 0x2140149b

.field public static final ID_MCU_FACE_ID_MODE:I = 0x21401c80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_FACE_ID_SW:I = 0x21401c7f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_FACTORY_MODE:I = 0x2140146a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_FAILED_POP_UP_ALARM:I = 0x2140146d

.field public static final ID_MCU_FAULT_INFO:I = 0x21701407
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_FM_RADIO_STATUS:I = 0x214014ad

.field public static final ID_MCU_GET_INFO:I = 0x1540010a

.field public static final ID_MCU_GET_INFO_MSG:I = 0x21401456
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_G_SENSOR_EV:I = 0x2170141f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_HIGH_VOLT_REQ:I = 0x214114b1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_HUD_NAVI_TIPS:I = 0x2140149a

.field public static final ID_MCU_ICM_GEOFENCE:I = 0x21401668

.field public static final ID_MCU_IG_STATE:I = 0x1540010a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MCU_IG_STATUS:I = 0x21401409
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_IG_THEFT_HEART_BEAT:I = 0x1540010a

.field public static final ID_MCU_MANUAL_DRIVING_TIPS:I = 0x21401497

.field public static final ID_MCU_MAP_INF_SYNC:I = 0x21701475

.field public static final ID_MCU_MONITOR_ST:I = 0x2140145b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_MQTT_LOGIN_INFO_CLIENT:I = 0x1540010a

.field public static final ID_MCU_MQTT_LOGIN_INFO_USER_NAME:I = 0x1540010a

.field public static final ID_MCU_MQTT_LOGIN_INFO_USER_PASSWORD:I = 0x1540010a

.field public static final ID_MCU_MQTT_LOGIN_INFO_USER_SSL_ADDR:I = 0x1540010a

.field public static final ID_MCU_NET_DIAG_STATUS:I = 0x2140149e

.field public static final ID_MCU_OTA_1:I = 0x1540010a

.field public static final ID_MCU_OTA_RESP_VER:I = 0x21101454
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_PHY_DISPLAY_SCREEN_SN:I = 0x211014a0

.field public static final ID_MCU_PM_STATUS:I = 0x21701403

.field public static final ID_MCU_POWERDOWN_ACTION:I = 0x21401453
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_POWERDOWN_SWITCH:I = 0x21401452
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_POWER_REQ:I = 0x1540010a

.field public static final ID_MCU_PSU_OTA_EV:I = 0x2141143f

.field public static final ID_MCU_PSU_TEST:I = 0x21401437
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_REAR_BELT_WARNING_ST:I = 0x21411492

.field public static final ID_MCU_REAR_BLET_WARNING_POPUP_SW:I = 0x21401491

.field public static final ID_MCU_REMIND_WARNING:I = 0x21401480

.field public static final ID_MCU_REMIND_WARNING_SW:I = 0x21401496

.field public static final ID_MCU_REMOTE_FLAG:I = 0x2170141d

.field public static final ID_MCU_REPORT_CIU_ST:I = 0x2140143d

.field public static final ID_MCU_REPORT_OCU_ST:I = 0x2140143c

.field public static final ID_MCU_REQ_TRKP_MODE:I = 0x21401467
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_REQ_TRKP_TIMEON:I = 0x21401468
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_RESET_4G_EV:I = 0x1540010a

.field public static final ID_MCU_RTC:I = 0x1540010a

.field public static final ID_MCU_RVC_EN:I = 0x21401476

.field public static final ID_MCU_RVC_EN_CONTROL:I = 0x21401462
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_RVC_VERSION:I = 0x21401477

.field public static final ID_MCU_R_CAMERA_STATUS:I = 0x2170140a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_R_LIGHT_STATUS:I = 0x2170140b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_SHOCK_VALUE:I = 0x1540010a

.field public static final ID_MCU_SOC_RESP_DTC_INFO:I = 0x21411482

.field public static final ID_MCU_SOC_RST_REASON:I = 0x214014a5

.field public static final ID_MCU_SPEED_PWM:I = 0x1540010a

.field public static final ID_MCU_STOP_MONITOR:I = 0x2141142c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_TBOX_USB_VBUS_CTRL:I = 0x21401474

.field public static final ID_MCU_TEMP_FACTORY:I = 0x2140146b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_THEFT_STATE:I = 0x1540010a

.field public static final ID_MCU_TIME_TO_COMPLETE_CHARGE:I = 0x21401457
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_MCU_TIME_ZONE:I = 0x1540010a

.field public static final ID_MCU_TOW_MODE_SW:I = 0x2140149d

.field public static final ID_MCU_TRUNK_POWERON_TO_APP:I = 0x2140146e

.field public static final ID_MCU_VECH_MODE:I = 0x2141145a

.field public static final ID_MCU_VENTILATION_STATE:I = 0x1540010a

.field public static final ID_MCU_WAKE_UP_BY_PHONE:I = 0x1540010a

.field public static final ID_MCU_WIFI_HOTSPOT_REQ:I = 0x2140146c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OS_OTA_STATUS:I = 0x21401441
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OTA_MCU_REQ_STATUS:I = 0x21401428
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OTA_MCU_REQ_UPDATEFILE:I = 0x21401429
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OTA_MCU_SEND_UPDATEFILE:I = 0x2110142a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OTA_MCU_UPDATE_STATUS:I = 0x2140142b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OTA_SEND_UPDATE_FILE:I = 0x21101483

.field public static final ID_QNX_CRASH_INFO:I = 0x21101485

.field public static final MCU_ATLS_STATUS_FINISH:I = 0x3

.field public static final MCU_ATLS_STATUS_PENDING:I = 0x2

.field public static final MCU_ATLS_STATUS_START:I = 0x1

.field public static final MCU_DELAY_SLEEP_AUTO_WAKE:I = 0x2

.field public static final MCU_DELAY_SLEEP_DATA_DOWNLOAD:I = 0x1

.field public static final MCU_DRIVING_MODE_COMFORT:I = 0x1

.field public static final MCU_DRIVING_MODE_ECO:I = 0x2

.field public static final MCU_DRIVING_MODE_ECO_PLUS:I = 0x3

.field public static final MCU_DRIVING_MODE_SHOW:I = 0x5

.field public static final MCU_DRIVING_MODE_SPORT:I = 0x4

.field public static final MCU_FACE_ID_MODE_FACE_ACTIVE:I = 0x1

.field public static final MCU_FACE_ID_MODE_FACE_ID_FAIL:I = 0x2

.field public static final MCU_FACE_ID_MODE_FACE_ID_PENDING:I = 0x3

.field public static final MCU_FACE_ID_MODE_INACTIVE_ALL:I = 0x0

.field public static final MCU_FACE_ID_MODE_PIN_ACTIVE:I = 0x2

.field public static final MCU_FACE_ID_MODE_PIN_FAIL:I = 0x5

.field public static final MCU_FACE_ID_MODE_PIN_PENDING:I = 0x6

.field public static final MCU_FACE_ID_STATE_FACE_ID_PASS:I = 0x1

.field public static final MCU_FACE_ID_STATE_PIN_PASS:I = 0x4

.field public static final MCU_FAILED_POP_UP_ALARM_4G:I = 0x5

.field public static final MCU_FAILED_POP_UP_ALARM_BLE_WATCH:I = 0x4

.field public static final MCU_FAILED_POP_UP_ALARM_NO_REQUEST:I = 0xa

.field private static final MCU_HARDWARE_ID_PROPERTY:Ljava/lang/String; = "persist.sys.mcu.hardwareId"

.field public static final MCU_HIGH_VOLT_REQ_AUTO_WAKE:I = 0x1

.field public static final MCU_HIGH_VOLT_REQ_GUARD:I = 0x2

.field public static final MCU_IG_STATUS_IG_OFF:I = 0x0

.field public static final MCU_IG_STATUS_LOCAL_IG_ON:I = 0x1

.field public static final MCU_IG_STATUS_REMOTE_IG_ON:I = 0x2

.field public static final MCU_IS_NOT_WAKE_UP_BY_PHONE:I = 0x0

.field public static final MCU_IS_WAKE_UP_BY_PHONE:I = 0x1

.field public static final MCU_MONITOR_ACTIVE:I = 0x0

.field public static final MCU_MONITOR_INACTIVE:I = 0x1

.field public static final MCU_MONITOR_MODE_PERMANENT_OFF:I = 0x1

.field public static final MCU_MONITOR_MODE_PERMANENT_ON:I = 0x0

.field public static final MCU_MONITOR_MODE_TEMPORARY_OFF:I = 0x2

.field public static final MCU_MONITOR_TEMPORARY_INACTIVE:I = 0x2

.field public static final MCU_REMIND_WARNING_LONETERM_DISABLE:I = 0x2

.field public static final MCU_REMIND_WARNING_TEMPORARILY_DELAYED:I = 0x3

.field public static final MCU_REQUEST_GET_ACCOUNT_INFO:I = 0x2

.field public static final MCU_REQUEST_GET_CHARGE_COMPLETE_TIME:I = 0x3

.field public static final MCU_REQUEST_GET_GPS_INFO:I = 0x1

.field public static final MCU_STATUS_OFF:I = 0x0

.field public static final MCU_STATUS_ON:I = 0x1

.field private static final MCU_VIN_CODE_PROPERTY:Ljava/lang/String; = "persist.sys.xiaopeng.vin"

.field public static final NET_DIAG_STATU_NORMAL_OTA:I = 0x5

.field public static final NET_DIAG_STATU_NO_DIAG:I = 0x0

.field public static final NET_DIAG_STATU_OBD_CAN:I = 0x1

.field public static final NET_DIAG_STATU_OBD_ETHERNET:I = 0x2

.field public static final NET_DIAG_STATU_REMOTE_DIAG:I = 0x6

.field public static final NET_DIAG_STATU_SILENT_OTA:I = 0x4

.field public static final NET_DIAG_STATU_T1_DIAG:I = 0x3

.field public static final NFC_START_FAILED:I = 0x3

.field public static final NOTICE_POWER_OFF_COUNTDOWN_END:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NOTICE_POWER_OFF_COUNTDOWN_START:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NO_ACTION:I = 0x0

.field public static final OCU_EXIST:I = 0x1

.field public static final OCU_EXSIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OCU_NOT_EXIST:I = 0x2

.field public static final OCU_NOT_EXSIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPEN_WIFI_HOTSPOT_RESULT_FAILED:I = 0x0

.field public static final OPEN_WIFI_HOTSPOT_RESULT_SUCCESSFUL:I = 0x1

.field public static final OTAM_4G_REQ_FIRMWARE_ROLLBACK:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_4G_REQ_FIRMWARE_SWITCH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_4G_REQ_MCU_RESET:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_4G_REQ_MCU_VERSION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RESP_UPDATE_BUSY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_DRIVER_ADDR_ERR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_DRIVER_CHECK_ERR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_DRIVER_CHECK_OK:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_FIRMWARE_ADDR_ERR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_FIRMWARE_CHECK_ERR:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_FIRMWARE_CHECK_OK:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_FIRMWARE_SWITCH_FINISH:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_NOK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTAM_MCU_RSPD_WRITE_FLAG_ERR:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_4G_ACK_NOK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_4G_ACK_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_4G_NO_REQ:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_4G_REQ_RESULT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_4G_REQ_UPDATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_MCU_ACK_NOK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_MCU_ACK_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_MCU_FAIL_CC_ERR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_MCU_FAIL_DATA_TIMEOUT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_MCU_FAIL_REPROMGRAM_ERR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_MCU_REQ_FIRMWARE_A:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_MCU_REQ_FIRMWARE_B:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_MCU_REQ_FLASH_DRIVER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OTA_MCU_RSPD_UPDATE_SUCCESS_FINISH:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PSU_TEST_FAIL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PSU_TEST_OK:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RECEIVE_BLE_ACCOUNT_DATA_FAIL:I = 0x1

.field public static final RECEIVE_BLE_ACCOUNT_DATA_SUCCESS:I = 0x0

.field public static final REMIND_WARNING_NO:I = 0x0

.field public static final REMIND_WARNING_YES:I = 0x1

.field public static final REMOTE_CONTROL_COMPLETED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REMOTE_CONTROL_KEY_START_FAILED:I = 0x1

.field public static final REMOTE_CONTROL_PROCESSING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUEST_TRUNK_POWER_OFF:I = 0x1

.field public static final REQUEST_TRUNK_POWER_ON:I = 0x0

.field public static final RESET_REASON_BACKUP_BATTERY_NOT_WORK:I = 0xb

.field public static final RESET_REASON_BATTERY_DEPLETED:I = 0x5

.field public static final RESET_REASON_BATTERY_VOLT_TOO_HIGH:I = 0x6

.field public static final RESET_REASON_COLD_START_TIMEOUT:I = 0x2

.field public static final RESET_REASON_DIAG_CF11:I = 0x9

.field public static final RESET_REASON_EXIT_DIAG_CF11:I = 0xa

.field public static final RESET_REASON_HEARTBEAT_TIMEOUT:I = 0x1

.field public static final RESET_REASON_SLEEP_TIMEOUT:I = 0x4

.field public static final RESET_REASON_SWS_KEY:I = 0x7

.field public static final RESET_REASON_SWS_KEY_INTO_RECOVERY:I = 0x8

.field public static final RESET_REASON_WAKE_UP_TIMEOUT:I = 0x3

.field public static final RESET_TBOX_USB_VBUS:I = 0x1

.field public static final RVC_STATE_ERROR:I = 0x1

.field public static final RVC_STATE_OK:I = 0x0

.field public static final SEAT_BLET_NO_WARNING:I = 0x0

.field public static final SEAT_BLET_WARNING:I = 0x1

.field public static final SEAT_BLET_WARNING_LEVEL2:I = 0x2

.field public static final SHUTDOWN_PARAM_SLEEP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final START_PSU_TEST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final START_SUCCESSFUL:I = 0x0

.field public static final STATE_ON_FULL:I = 0x1

.field public static final STATE_ON_SLEEP:I = 0x2

.field public static final STATE_SHUTDOWN_PREPARE:I = 0x3

.field public static final STOP_PSU_TEST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarMcuManager"

.field public static final TRUNK_POWER_APPOINT_NOCOMMAND:I = 0x0

.field public static final TRUNK_POWER_APPOINT_ONCE:I = 0x1

.field public static final TRUNK_POWER_APPOINT_PERMANENT:I = 0x2

.field public static final TRUNK_POWER_STATUS_FAULT:I = 0x3

.field public static final TRUNK_POWER_STATUS_OFF:I = 0x0

.field public static final TRUNK_POWER_STATUS_ON:I = 0x1

.field public static final TRUNK_POWER_STATUS_WORKING:I = 0x2


# instance fields
.field private final mMcuPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarMcuManager"

    .line 2964
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 2865
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x4f

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21601461

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21701407

    .line 2866
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x2110141e

    .line 2867
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21701403

    .line 2868
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x2141143f

    .line 2869
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21701431

    .line 2870
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x2170141f

    .line 2871
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21401428

    .line 2872
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21401429

    .line 2873
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2110142a

    .line 2874
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140142b

    .line 2875
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21401430

    .line 2876
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21701433

    .line 2877
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21601434

    .line 2878
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21601435

    .line 2879
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21601436

    .line 2880
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21401437

    .line 2881
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21401409

    .line 2882
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21401c7c

    .line 2883
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2170141d

    .line 2884
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x2140143c

    .line 2885
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x2140143d

    .line 2886
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x2140143e

    .line 2887
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21401c7f

    .line 2888
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21401c80

    .line 2889
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21401452

    .line 2890
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21401453

    .line 2891
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21101454

    .line 2892
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21411455

    .line 2893
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21401456

    .line 2894
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21401457

    .line 2895
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x2141142c

    .line 2896
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x2140145b

    .line 2897
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x2141145e

    .line 2898
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x214114b1

    .line 2899
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x2170145f

    .line 2900
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21401460

    .line 2901
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x2140144d

    .line 2902
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x21401462

    .line 2903
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x21401463

    .line 2904
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21401464

    .line 2905
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x21401467

    .line 2906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x21401468

    .line 2907
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x2140146a

    .line 2908
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x2140146b

    .line 2909
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x2140146c

    .line 2910
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x2140146d

    .line 2911
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x2140146e

    .line 2912
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x21701475

    .line 2913
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x21401474

    .line 2914
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21401476

    .line 2915
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x21401477

    .line 2916
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x21401480

    .line 2917
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x21411482

    .line 2918
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21401668

    .line 2919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21101483

    .line 2920
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21101485

    .line 2921
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x21401489

    .line 2922
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x2140148a

    .line 2923
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x2140148b

    .line 2924
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x2140148c

    .line 2925
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x2140148d

    .line 2926
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x2140148e

    .line 2927
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x2140148f

    .line 2928
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x21401491

    .line 2929
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x21411492

    .line 2930
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x21411493

    .line 2931
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21401496

    .line 2932
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x21401497

    .line 2933
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21401498

    .line 2934
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x2140149a

    .line 2935
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x2140149b

    .line 2936
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x2140149d

    .line 2937
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x2140149e

    .line 2938
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x2110149f

    .line 2939
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x211014a0

    .line 2940
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x214014a1

    .line 2941
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x214014a5

    .line 2942
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x214014ad

    .line 2943
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    .line 2865
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/mcu/CarMcuManager;->mMcuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_mcu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAppointKeep12VPwr1TempStatusAndTime()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4720
    fill-array-data v0, :array_0

    .line 4722
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAppointKeep12VPwr1TempStatusAndTime()[I

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

    .line 4724
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppointKeep12VPwr1TempStatusAndTime failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarMcuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getAutoPowerOffSwitchState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4335
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuAutoPowerOffSwitchState()I

    move-result v0

    return v0
.end method

.method public getBacklightIcDriverState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4613
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuBacklightIcDriverState()I

    move-result v0

    return v0
.end method

.method public getBacklightTemperature()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4595
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuBacklightTemperature()I

    move-result v0

    return v0
.end method

.method public getBatteryStatusFromMcu()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3646
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuBatteryStatus()I

    move-result v0

    return v0
.end method

.method public getBatteryVoltFromMcu()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const v0, 0x21401498

    const/4 v1, 0x0

    .line 3661
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBleAccountData()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4525
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuBleAccountData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCameraStatusFromMcu()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3703
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuCameraStatus()I

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

    .line 4098
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuChairWelcomeMode()I

    move-result v0

    return v0
.end method

.method public getChargeStatusFromMcu()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3739
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuChargeStatus()I

    move-result v0

    return v0
.end method

.method public getCidState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4561
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuCidState()I

    move-result v0

    return v0
.end method

.method public getCiuState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4164
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuCiuState()I

    move-result v0

    return v0
.end method

.method public getCpuTemperature()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3156
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCpuTemperature()F

    move-result v0

    return v0
.end method

.method public getDiagScreenSN()Ljava/lang/String;
    .locals 2

    const v0, 0x2110149f

    const/4 v1, 0x0

    .line 5432
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtcReportEv()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3910
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuDtcReportEv()[I

    move-result-object v0

    return-object v0
.end method

.method public getDvBatTemp()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4022
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDvTestBatTemp()F

    move-result v0

    return v0
.end method

.method public getDvBattMsg()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4052
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuDvBattMsg()[B

    move-result-object v0

    return-object v0
.end method

.method public getDvMcuTemp()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4007
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDvTestMcuTemp()F

    move-result v0

    return v0
.end method

.method public getDvPcbTemp()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4037
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDvTestPcbTemp()F

    move-result v0

    return v0
.end method

.method public getEmmcFunction()I
    .locals 2

    const v0, 0x214014a1

    const/4 v1, 0x0

    .line 5070
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFMRadioStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214014ad

    const/4 v1, 0x0

    .line 5503
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFaceIdMode()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4256
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuFaceIdMode()I

    move-result v0

    return v0
.end method

.method public getFaceIdSwitchState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4237
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuFaceIdSwState()I

    move-result v0

    return v0
.end method

.method public getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3276
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuFactoryDisplayTypeMsgToMcu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMcuBmsMsgToMcu()I
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

.method public getFactoryModeSwitchStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4761
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuFactoryModeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getGSensorOffset()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3609
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getGSensorOffset()[I

    move-result-object v0

    return-object v0
.end method

.method public getHardwareCarStage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3567
    invoke-static {}, Landroid/car/Car;->getHardwareCarStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareCarType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3544
    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareCarTypeExt()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3534
    invoke-static {}, Landroid/car/Car;->getHardwareCarTypeExt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareVersion()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3496
    invoke-static {}, Landroid/car/Car;->getHardwareVersion()I

    move-result v0

    return v0
.end method

.method public getIgStatus()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    return-object v0
.end method

.method public getIgStatusFromMcu()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3681
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuIgState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeyStartStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4837
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuKeyStartStatus()I

    move-result v0

    return v0
.end method

.method public getLampStatusFromMcu()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3721
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLampStatus()I

    move-result v0

    return v0
.end method

.method public getMcu4gErrorStatus()I
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

.method public getMcuAtlsStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4183
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuAtlsState()I

    move-result v0

    return v0
.end method

.method public getMcuFaultInfo()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3869
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuFaultInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public getMcuHardwareId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "persist.sys.mcu.hardwareId"

    const-string v1, ""

    .line 3113
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcuMonitorState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4468
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuMonitorState()I

    move-result v0

    return v0
.end method

.method public getMcuRequestedMessage()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4429
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuRequestedMessage()I

    move-result v0

    return v0
.end method

.method public getMcuRtcTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMcuTheftState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3005
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuBurglarAlarmState()I

    move-result v0

    return v0
.end method

.method public getMcuVentilateState()I
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

.method public getMcuVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4387
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetDiagStatus()I
    .locals 2

    const v0, 0x2140149e

    const/4 v1, 0x0

    .line 5420
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getOcuState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4148
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuOcuState()I

    move-result v0

    return v0
.end method

.method public getOtaMcuReqStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3754
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuUpdateReqStatus()I

    move-result v0

    return v0
.end method

.method public getOtaMcuReqUpdatefile()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3780
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getOtaMcuReqUpdatefile()I

    move-result v0

    return v0
.end method

.method public getOtaMcuUpdateStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3819
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getOtaMcuUpdateStatus()I

    move-result v0

    return v0
.end method

.method public getPhyDisplayScreenSN()Ljava/lang/String;
    .locals 2

    const v0, 0x211014a0

    const/4 v1, 0x0

    .line 5444
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getStringProperty(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPmStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3483
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPmStatus()I

    move-result v0

    return v0
.end method

.method public getPmStatusWithParameter()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3469
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPmStatusWithParameter()[B

    move-result-object v0

    return-object v0
.end method

.method public getPowerOffCountdownNotice()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4371
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuPowerOffCountdownNotice()I

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

    .line 2983
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mMcuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPsuOtaFeedbackMsg()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4201
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuPsuOtaFeedbackMsg()[I

    move-result-object v0

    return-object v0
.end method

.method public getPsuTestResult()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3992
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuPsuTestResult()I

    move-result v0

    return v0
.end method

.method public getRearSeatBeltWarningState()[I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 5306
    fill-array-data v0, :array_0

    .line 5308
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearSeatBeltWarningState()[I

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

    .line 5310
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRearSeatBeltWarningState throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarMcuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getRemindWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4950
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuRemindWarningStatus()I

    move-result v0

    return v0
.end method

.method public getRvcEnable()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4902
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuRvcEnable()I

    move-result v0

    return v0
.end method

.method public getScreenTempValue()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3625
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScreenTempValue()[I

    move-result-object v0

    return-object v0
.end method

.method public getSecRowLeftSeatBeltWarning()I
    .locals 3

    .line 5050
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatBeltWarning()I

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

    .line 5052
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowLeftSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowMiddleSeatBeltWarning()I
    .locals 3

    .line 5107
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowMiddleSeatBeltWarning()I

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

    .line 5109
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowMiddleSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowRightSeatBeltWarning()I
    .locals 3

    .line 5146
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatBeltWarning()I

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

    .line 5148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowRightSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSocResetReason()I
    .locals 3

    const v0, 0x214014a5

    const/4 v1, 0x0

    .line 5483
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSocResetReason failed ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTemporaryFactoryStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4779
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuTemporaryFactoryStatus()I

    move-result v0

    return v0
.end method

.method public getTrdRowLeftSeatBeltWarning()I
    .locals 3

    .line 5186
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLeftSeatBeltWarning()I

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

    .line 5188
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowLeftSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowMiddleSeatBeltWarning()I
    .locals 3

    .line 5226
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowMiddleSeatBeltWarning()I

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

    .line 5228
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowMiddleSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowRightSeatBeltWarning()I
    .locals 3

    .line 5265
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRightSeatBeltWarning()I

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

    .line 5267
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowRightSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrunkPowerOffDelay()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4683
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuTrunkPowerOffDelay()I

    move-result v0

    return v0
.end method

.method public getTrunkPowerOnRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4853
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuTrunkPowerOnRequest()I

    move-result v0

    return v0
.end method

.method public getTrunkPowerStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4651
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuTrunkPowerStatus()I

    move-result v0

    return v0
.end method

.method public getUuidCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3580
    invoke-static {}, Landroid/car/Car;->getUuidCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionInCountryCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3524
    invoke-static {}, Landroid/car/Car;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVinCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "persist.sys.xiaopeng.vin"

    const-string v1, ""

    .line 3125
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiHotspotRequest()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4797
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuWifiHotspotRequest()I

    move-result v0

    return v0
.end method

.method public getXpCduType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3554
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExportVersion()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3510
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    return v0
.end method

.method public isSystemFirstBoot()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3593
    invoke-static {}, Landroid/car/Car;->isSystemFirstBoot()Z

    move-result v0

    return v0
.end method

.method public sendBleAccountDataFeedback(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4543
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuBleAccountDataFeedback(I)V

    return-void
.end method

.method public sendChargeCompleteTime2Mcu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3836
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendChargeCompleteTimeToMcu(I)V

    return-void
.end method

.method public sendChargeCompleteTimeToMcu(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3852
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendChargeCompleteTimeToMcu(I)V

    return-void
.end method

.method public sendDiagnoseMsgToMcu([I)V
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

.method public sendFactoryDisplayTypeMsgToMcu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3261
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendDisplayTypeMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryDugReqMsgToMcu([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3248
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendDugReqMsgToMcu([I)V

    return-void
.end method

.method public sendFactoryMcuBmsMsgToMcu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3302
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuBmsMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryPmSilentMsgToMcu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3289
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendPmSilentMsgToMcu(I)V

    return-void
.end method

.method public sendFactoryPwrDebugMsgToMcu([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3235
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendPwrDebugMsgToMcu([I)V

    return-void
.end method

.method public sendFactorySecretKeyToMcu([B)V
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

.method public sendFactoryTestMsgToMcu([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3222
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendTestMsgToMcu([I)V

    return-void
.end method

.method public sendGpsInfoMsgToMcu([I)V
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

.method public sendMapVersion(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4869
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuMapVersion(Ljava/lang/String;)V

    return-void
.end method

.method public sendOpenWifiHotspotResponse(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4815
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuOpenWifiHotspotResponse(I)V

    return-void
.end method

.method public sendOta1MsgToMcu([I)V
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

.method public sendOtaUpdateFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4996
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuOtaUpdateFile(Ljava/lang/String;)V

    return-void
.end method

.method public sendPsuOtaMsgToMcu([I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3341
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendPsuOtaMsgToMcu([I)V

    return-void
.end method

.method public sendRequestWakeToMcu(I)V
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

.method public sendReset4gMsgToMcu([I)V
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

.method public sendResetModemMsgToMcu(I)V
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

.method public sendTboxVBusControlCommand(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4886
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuTboxVBusControlCommand(I)V

    return-void
.end method

.method public setActExtVoiceInteractHeartBeatStatus(I)V
    .locals 2

    const v0, 0x2140149b

    const/4 v1, 0x0

    .line 5382
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V

    return-void
.end method

.method public setAndroidOtaStatus(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4295
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuAndroidOtaStatus(I)V

    return-void
.end method

.method public setAppointKeep12VPwr1TempCfgAndTime([I)V
    .locals 2

    .line 4700
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAppointKeep12VPwr1TempCfgAndTime([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4702
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppointKeep12VPwr1TempCfgAndTime failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setAutoPowerOffSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4315
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuAutoPowerOffSw(I)V

    return-void
.end method

.method public setBleDisconnectRequest(I)V
    .locals 2

    .line 5011
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBleDisconnectRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5013
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBleDisconnectRequest throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setChairWelcomeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4114
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuChairWelcomeMode(I)V

    return-void
.end method

.method public setDriveMode(I)V
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

.method public setDvTempSamplingPeriod(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4082
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuDvTempSamplingPeriod(I)V

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

    .line 4067
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuDvTestReq(I)V

    return-void
.end method

.method public setFaceIdModeState(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4278
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFaceIdModeState(I)V

    return-void
.end method

.method public setFaceIdSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4219
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuFaceIdSw(I)V

    return-void
.end method

.method public setFactoryModeSwitch(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4743
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuFactoryModeSwitch(I)V

    return-void
.end method

.method public setFlash(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3194
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuFlash(I)V

    return-void
.end method

.method public setGeofenceStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4982
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendMcuGeofenceStatus(I)V

    return-void
.end method

.method public setHighVoltReq(I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v3, 0x1

    aput v3, v0, v3

    aput p1, v0, v1

    const p1, 0x214114b1

    .line 4506
    invoke-virtual {p0, p1, v2, v0}, Landroid/car/hardware/mcu/CarMcuManager;->setIntVectorProperty(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHighVoltReq failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHorn(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3175
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuHorn(I)V

    return-void
.end method

.method public setHornsStates(IIII)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4410
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuHornsStates(IIII)V

    return-void
.end method

.method public setIgHeartBeat()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3054
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIgHeartBeat()V

    return-void
.end method

.method public setIgOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3038
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuIgOff()V

    return-void
.end method

.method public setIgOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3022
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuIgOn()V

    return-void
.end method

.method public setManualDrivingTips(I)V
    .locals 2

    const v0, 0x21401497

    const/4 v1, 0x0

    .line 5345
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5347
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

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMcuDelaySleep(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4486
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuDelaySleep(II)V

    return-void
.end method

.method public setMcuIsWakeUpByPhone(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3102
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuIsWakeUpByPhone(I)V

    return-void
.end method

.method public setMcuMonitorSwitch(II)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4449
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuMonitorSwitch(II)V

    return-void
.end method

.method public setMcuRtcTime(J)V
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

.method public setMcuTimeZone(I)V
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

.method public setMqttLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3142
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMqttLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNavigationTips(I)I
    .locals 2

    const v0, 0x2140149a

    const/4 v1, 0x0

    .line 5362
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 5364
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

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setOtaMcuReqStatus(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3767
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuUpdateReqStatus(I)V

    return-void
.end method

.method public setOtaMcuReqUpdatefile(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3793
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setOtaMcuReqUpdatefile(I)V

    return-void
.end method

.method public setOtaMcuSendUpdatefile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3806
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setOtaMcuSendUpdatefile(Ljava/lang/String;)V

    return-void
.end method

.method public setPowerOffCountdownAction(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4353
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuPowerOffCountdownAction(I)V

    return-void
.end method

.method public setPsuTestReq(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3974
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuPsuTestReq(I)V

    return-void
.end method

.method public setRearSeatBeltWarningPopUpSw(I)V
    .locals 2

    .line 5286
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearSeatBeltWarningPopUpSw(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5288
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearSeatBeltWarningPopUpSw throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setRemindWarningSwitch(I)I
    .locals 2

    const v0, 0x21401496

    const/4 v1, 0x0

    .line 5329
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V

    return v1
.end method

.method public setRemoteControlFeedback(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4132
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuRemoteControlFeedback(I)V

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

    .line 3957
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuRepairMode(I)V

    return-void
.end method

.method public setRvcEnable(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4918
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuRvcEnable(I)V

    return-void
.end method

.method public setRvcState(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4579
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuRvcState(I)V

    return-void
.end method

.method public setRvcVersion(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4934
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuRvcVersion(I)V

    return-void
.end method

.method public setSecRowLeftSeatBeltWarning(I)V
    .locals 2

    .line 5030
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5032
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecRowLeftSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setSecRowMiddleSeatBeltWarning(I)V
    .locals 2

    .line 5087
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowMiddleSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5089
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecRowMiddleSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setSecRowRightSeatBeltWarning(I)V
    .locals 2

    .line 5127
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecRowRightSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setShockValue2Mcu(I)V
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

.method public setSocResetReasonQueryReq()I
    .locals 3

    const v0, 0x214014a5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5455
    :try_start_0
    invoke-virtual {p0, v0, v2, v1}, Landroid/car/hardware/mcu/CarMcuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 5458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSocResetReasonQueryReq failed ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMcuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public setSocRespDTCInfo(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4966
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuSocRespDTCInfo(III)V

    return-void
.end method

.method public setTheftHeartBeatOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3086
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTheftHeartBeatOff()V

    return-void
.end method

.method public setTheftHeartBeatOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3070
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTheftHeartBeatOn()V

    return-void
.end method

.method public setTowModeSw(I)V
    .locals 2

    .line 5399
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTowModeSw(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTowModeSw throw Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTrdRowLeftSeatBeltWarning(I)V
    .locals 2

    .line 5166
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowLeftSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5168
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTrdRowLeftSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setTrdRowMiddleSeatBeltWarning(I)V
    .locals 2

    .line 5206
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowMiddleSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5208
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTrdRowMiddleSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setTrdRowRightSeatBeltWarning(I)V
    .locals 2

    .line 5246
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowRightSeatBeltWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5248
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTrdRowRightSeatBeltWarning throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMcuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setTrunkPowerOffDelay(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4667
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuTrunkPowerOffDelay(I)V

    return-void
.end method

.method public setTrunkPowerSw(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4631
    iget-object v0, p0, Landroid/car/hardware/mcu/CarMcuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuTrunkPowerSw(I)V

    return-void
.end method

.method public updateMcuBin(Ljava/lang/String;)V
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
