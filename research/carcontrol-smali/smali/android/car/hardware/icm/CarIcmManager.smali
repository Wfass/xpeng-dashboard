.class public final Landroid/car/hardware/icm/CarIcmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarIcmManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/icm/CarIcmManager$Icm_BtPhone_25;,
        Landroid/car/hardware/icm/CarIcmManager$Icm_NaviInfo_30;,
        Landroid/car/hardware/icm/CarIcmManager$Icm_TimeInfo_24;,
        Landroid/car/hardware/icm/CarIcmManager$IcmAccount_23;,
        Landroid/car/hardware/icm/CarIcmManager$Icm_Wheelkey_22;,
        Landroid/car/hardware/icm/CarIcmManager$Icm_WeatherInfo_21;,
        Landroid/car/hardware/icm/CarIcmManager$CarControl_20;,
        Landroid/car/hardware/icm/CarIcmManager$CarCtl_msgData;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_C02;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_C01;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_04;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_06;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_07_msgList;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_05_cmd;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_msgData;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_03;,
        Landroid/car/hardware/icm/CarIcmManager$InfoCard_A1;,
        Landroid/car/hardware/icm/CarIcmManager$OsdShow;,
        Landroid/car/hardware/icm/CarIcmManager$SyncSinal;,
        Landroid/car/hardware/icm/CarIcmManager$FeedBack_Msg;,
        Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;,
        Landroid/car/hardware/icm/CarIcmManager$PropertyId;
    }
.end annotation


# static fields
.field public static final BRAKE_FLUID_LEVEL_LOW:I = 0x1

.field public static final BRAKE_FLUID_LEVEL_NORMAL:I = 0x0

.field public static final CARSETTING_ICM_ALARMVOLUMEL:Ljava/lang/String; = "setIcmAlarmVolume"

.field public static final CARSETTING_ICM_BIRGHTNESS:Ljava/lang/String; = "setIcmBrightness"

.field public static final CARSETTING_ICM_HVAC_BLOW_MODE:Ljava/lang/String; = "setHvacWindBlowMode"

.field public static final CARSETTING_ICM_HVAC_DRIVER_TEMPVALUE:Ljava/lang/String; = "setHvacTempDriverValue"

.field public static final CARSETTING_ICM_HVAC_FRONT_DEFROST:Ljava/lang/String; = "setHvacFrontDefrostMode"

.field public static final CARSETTING_ICM_HVAC_SWEEP_WIND:Ljava/lang/String; = "setSweepWindStatus"

.field public static final CARSETTING_ICM_HVAC_WIND_SPEED:Ljava/lang/String; = "setHvacWindSpeedLevel"

.field public static final CARSETTING_ICM_RESETMETERMILEAGEA:Ljava/lang/String; = "resetMeterMileageA"

.field public static final CARSETTING_ICM_RESETMETERMILEAGEB:Ljava/lang/String; = "resetMeterMileageB"

.field public static final CARSETTING_ICM_SEAT_BLOW_LEVEL:Ljava/lang/String; = "setBCMSeatBlowLevel"

.field public static final CARSETTING_ICM_SEAT_HEAT_LEVEL:Ljava/lang/String; = "setBCMSeatHeatLevel"

.field public static final CARSETTING_ICM_TIMEFORMAT:Ljava/lang/String; = "setIcmTimeFormat"

.field public static final CARSETTING_SPEEDLIMIT_WARNINGSWITCH:Ljava/lang/String; = "setSpeedLimitWarningSwitch"

.field public static final CARSETTING_SPEEDLIMIT_WARNINGVALUE:Ljava/lang/String; = "setSpeedLimitWarningValue"

.field public static final CHARGING_SCENARIO:F = 0.0f

.field private static final DBG:Z = false

.field public static final DISCHARGE_SCENARIO:F = 1.0f

.field public static final DISTRACTION_LEVEL_L1:I = 0x1

.field public static final DISTRACTION_LEVEL_NONE:I = 0x0

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final FATIGUE_LEVEL_L1:I = 0x1

.field public static final FATIGUE_LEVEL_L2:I = 0x2

.field public static final FATIGUE_LEVEL_NONE:I = 0x0

.field public static final FILE_TRANSFER_FAILURE:I = 0x1

.field public static final FILE_TRANSFER_FINISHED:I = 0x0

.field public static final ICM_AC_TEMPERATURE_HI:I = 0x2

.field public static final ICM_AC_TEMPERATURE_LO:I = 0x1

.field public static final ICM_AC_TEMPERATURE_VALUE:I = 0x0

.field public static final ICM_ALARM_STATUS_VOLUME_POWER:I = 0x2

.field public static final ICM_ALARM_STATUS_VOLUME_SOFT:I = 0x0

.field public static final ICM_ALARM_STATUS_VOLUME_STANDARD:I = 0x1

.field public static final ICM_ALART_VOLUME_HIGH:I = 0x3

.field public static final ICM_ALART_VOLUME_LOW:I = 0x1

.field public static final ICM_ALART_VOLUME_MEDIUM:I = 0x2

.field public static final ICM_CONNECTED:I = 0x1

.field public static final ICM_DAY_NIGHT_MODE_DAY:I = 0x0

.field public static final ICM_DAY_NIGHT_MODE_NIGHT:I = 0x1

.field public static final ICM_METER_ALARM_VOLUME_POWER:I = 0x2

.field public static final ICM_METER_ALARM_VOLUME_SOFT:I = 0x0

.field public static final ICM_METER_ALARM_VOLUME_STANDARD:I = 0x1

.field public static final ICM_METER_SOUND_STREAM_COMMUNICATION:I = 0x0

.field public static final ICM_METER_SOUND_STREAM_MEDIA:I = 0x3

.field public static final ICM_METER_SOUND_STREAM_SYSTEM:I = 0x1

.field public static final ICM_METER_SOUND_STREAM_VOICE:I = 0x4

.field public static final ICM_METER_TIME_FORMAT_12_HOUR:I = 0x1

.field public static final ICM_METER_TIME_FORMAT_24_HOUR:I = 0x0

.field public static final ICM_NOT_CONNECTED:I = 0x0

.field public static final ICM_ODOMETER_INVALID:I = 0x0

.field public static final ICM_ODOMETER_VALID:I = 0x1

.field public static final ICM_SWITCH_CLOSE:I = 0x0

.field public static final ICM_SWITCH_OFF:I = 0x0

.field public static final ICM_SWITCH_ON:I = 0x1

.field public static final ICM_SWITCH_OPEN:I = 0x1

.field public static final ICM_SWS_HEAT_STATUS_LEVEL_1:I = 0x1

.field public static final ICM_SWS_HEAT_STATUS_LEVEL_2:I = 0x2

.field public static final ICM_SWS_HEAT_STATUS_LEVEL_3:I = 0x3

.field public static final ICM_SWS_HEAT_STATUS_OFF:I = 0x0

.field public static final ICM_UPDATE_FAILED_DUE_TO_SOFTWARE_VERSION_MISMATCH:I = 0x1

.field public static final ICM_UPDATE_SUCCESS:I = 0x0

.field public static final ID_ICM_ACCOUNT:I = 0x2110161b

.field public static final ID_ICM_ACCOUT_EVENT:I = 0x2170160c

.field public static final ID_ICM_ACK_EVENT:I = 0x2141160a

.field public static final ID_ICM_AC_OSDSHOW:I = 0x2140167e

.field public static final ID_ICM_AC_TEMPERATURE:I = 0x2161168a

.field public static final ID_ICM_ALARM_VOLUME:I = 0x21401605

.field public static final ID_ICM_ALARM_VOLUME_SP:I = 0x2140163d

.field public static final ID_ICM_ALLCARD_REFRSH:I = 0x21101616

.field public static final ID_ICM_ALL_LAMP_STATE_INFO:I = 0x21101661

.field public static final ID_ICM_ALL_LAMP_STATE_REQ:I = 0x21401660

.field public static final ID_ICM_APA_STATUS:I = 0x21401671

.field public static final ID_ICM_BFLWARNING:I = 0x21401649

.field public static final ID_ICM_BRIGHTNESS_SP:I = 0x2140163c

.field public static final ID_ICM_BTPHONE_CALL:I = 0x21101640

.field public static final ID_ICM_BT_EVENT:I = 0x2170160b

.field public static final ID_ICM_CARSETTING:I = 0x21101618

.field public static final ID_ICM_CHANGE_MILEAGE:I = 0x21611672

.field public static final ID_ICM_CHARGING_DURATION:I = 0x21401675

.field public static final ID_ICM_CONNECTED:I = 0x2140160e

.field public static final ID_ICM_CONTROL_EVENT:I = 0x2170160d

.field public static final ID_ICM_CRASH_INFO:I = 0x2110165d

.field public static final ID_ICM_DAYNIGHT_SWITCH:I = 0x2140162a

.field public static final ID_ICM_DIAGNOSIS_INFO:I = 0x2110165f

.field public static final ID_ICM_DISP_VEH_SPD:I = 0x21401686

.field public static final ID_ICM_DIST_LVL:I = 0x2140163a

.field public static final ID_ICM_DMS_MODE_ST:I = 0x21401638

.field public static final ID_ICM_DRIVER_TEMPERATURE:I = 0x21601635

.field public static final ID_ICM_EALARM_ID:I = 0x2140168e

.field public static final ID_ICM_ELCD_BLIGHT:I = 0x2140166f

.field public static final ID_ICM_FACE_INFO:I = 0x21101648

.field public static final ID_ICM_FACTORY_RESET:I = 0x2140162b

.field public static final ID_ICM_FATG_LVL:I = 0x21401639

.field public static final ID_ICM_FEEDBACK:I = 0x2140164e

.field public static final ID_ICM_FEEDBACK_SIGNAL:I = 0x21101610

.field public static final ID_ICM_FNGP_NAVI_PATH_RETAIN_TIME:I = 0x2150166d

.field public static final ID_ICM_FUSION_TRAFFIC_LIGHTS_COLOR:I = 0x21401674

.field public static final ID_ICM_FUSION_TRAFFIC_LIGHTS_COUNTER:I = 0x21401673

.field public static final ID_ICM_INFOCARD_ADD:I = 0x21101613

.field public static final ID_ICM_INFOCARD_REMOVE:I = 0x21101615

.field public static final ID_ICM_INFOCARD_UPDATE:I = 0x21101614

.field public static final ID_ICM_INFOFLOW_MSG:I = 0x21101617

.field public static final ID_ICM_INTERVAL_WIPER_SENSITIVITY:I = 0x2140168b

.field public static final ID_ICM_LEFT_MENU_CONTROL:I = 0x21401662

.field public static final ID_ICM_LIGHT_LEVER_ADJ:I = 0x21401628

.field public static final ID_ICM_LOCALE_LANGUAGE:I = 0x21101676

.field public static final ID_ICM_LOG_COMPRESS:I = 0x21101666

.field public static final ID_ICM_LYRICS_MSG:I = 0x2170166e

.field public static final ID_ICM_MCU_EAUTOPILOT_TIPS_ID:I = 0x2140168d

.field public static final ID_ICM_MEDIA_CONFIG_DEFINED_SOC:I = 0x2140167d

.field public static final ID_ICM_MEDIA_SOURCE:I = 0x21401636

.field public static final ID_ICM_METER_SOUND_STATE:I = 0x21411626

.field public static final ID_ICM_MUSIC_INFO:I = 0x21101643
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_ICM_MUSIC_TIME_INFO:I = 0x21101644

.field public static final ID_ICM_NAVIGATION:I = 0x2170161d

.field public static final ID_ICM_NAVIGATION_INFO:I = 0x21701601

.field public static final ID_ICM_NEEDNAVI:I = 0x21101645

.field public static final ID_ICM_OPTIONAL_BRIGHTNESS:I = 0x21401684

.field public static final ID_ICM_OPTIONAL_CONNECT_ST:I = 0x21401685

.field public static final ID_ICM_OPTIONAL_DAY_NIGHT_MODE:I = 0x21401683

.field public static final ID_ICM_OPTIONAL_DRIVING_TBT:I = 0x21401680

.field public static final ID_ICM_OPTIONAL_NEXT_DISTANCE:I = 0x21401681

.field public static final ID_ICM_OPTIONAL_NEXT_ROAD_TIME:I = 0x21401682

.field public static final ID_ICM_OSDSHOW:I = 0x21101612

.field public static final ID_ICM_PARKING_SCENE:I = 0x2140167a

.field public static final ID_ICM_RADIO_TYPE:I = 0x21401647

.field public static final ID_ICM_RAIN_DETEC_SENCFG:I = 0x21401665

.field public static final ID_ICM_RANDIS_DISPLAY_TYPE:I = 0x2110166c

.field public static final ID_ICM_RATE_ANIM_TYPE:I = 0x21401679

.field public static final ID_ICM_RATE_LIMIT_MSG:I = 0x21411678

.field public static final ID_ICM_RESET_MM_A:I = 0x21401633

.field public static final ID_ICM_RESET_MM_A_SP:I = 0x21401641

.field public static final ID_ICM_RESET_MM_B:I = 0x21401634

.field public static final ID_ICM_RESET_MM_B_SP:I = 0x21401642

.field public static final ID_ICM_RIGHT_MENU_CONTROL:I = 0x21401663

.field public static final ID_ICM_SCREEN_LIGHT:I = 0x21401637

.field public static final ID_ICM_SCREEN_SWITCH:I = 0x21401687

.field public static final ID_ICM_SEND_ACCOUNT_MSG:I = 0x21701604

.field public static final ID_ICM_SEND_BT_MSG:I = 0x21701602

.field public static final ID_ICM_SEND_MODE:I = 0x21411667

.field public static final ID_ICM_SEND_MUSIC_ICM:I = 0x21701608

.field public static final ID_ICM_SEND_NAVIGATION_ICM:I = 0x21701601

.field public static final ID_ICM_SEND_NET_RADIO_ICM:I = 0x21701607

.field public static final ID_ICM_SEND_NOTIFY_MSG:I = 0x21701606

.field public static final ID_ICM_SEND_RADIO_ICM:I = 0x2170160f

.field public static final ID_ICM_SEND_ROM_BIN:I = 0x21701609

.field public static final ID_ICM_SEND_WEATHER_ICM:I = 0x21701603

.field public static final ID_ICM_SET_TIME:I = 0x2141162c

.field public static final ID_ICM_SLIDE_DOOR_SOUND_SW:I = 0x2140167c

.field public static final ID_ICM_SOUND_THEME_TYPE:I = 0x21401669

.field public static final ID_ICM_SPEED_LIMIT_WARNING_SWITCH:I = 0x21401622

.field public static final ID_ICM_SPEED_LIMIT_WARNING_SWITCH_SP:I = 0x2140163f

.field public static final ID_ICM_SPEED_LIMIT_WARNING_VALUE:I = 0x2140162d

.field public static final ID_ICM_SPEED_LIMIT_WARNING_VALUE_SP:I = 0x2140163e

.field public static final ID_ICM_SUPER_ENERGY_STS:I = 0x2140168f

.field public static final ID_ICM_SWS_HEAT:I = 0x21401688

.field public static final ID_ICM_SYNC_DAY_NIGHT_MODE:I = 0x2140161e

.field public static final ID_ICM_SYNC_SIGNAL:I = 0x21101611

.field public static final ID_ICM_SYNC_TIME:I = 0x2110161c

.field public static final ID_ICM_TECHISLAND_THEME_SWITCH:I = 0x2140167f

.field public static final ID_ICM_TEMPERATURE:I = 0x21401625

.field public static final ID_ICM_TIME_FORMAT:I = 0x21401620

.field public static final ID_ICM_TIME_FORMAT_SP:I = 0x2140163b

.field public static final ID_ICM_TOTAL_ODO_METER:I = 0x2160162e

.field public static final ID_ICM_TRIPA:I = 0x21601631

.field public static final ID_ICM_TRIPB:I = 0x21601632

.field public static final ID_ICM_TRIP_SINCE_CHARGING:I = 0x21601630

.field public static final ID_ICM_TRIP_SINCE_IGON:I = 0x2160162f

.field public static final ID_ICM_TRIP_SINC_ENERGY_SUPPLY:I = 0x21601689

.field public static final ID_ICM_UNIT_FORMAT:I = 0x2110167b

.field public static final ID_ICM_UPDATE_PARTITION_PROGRESS:I = 0x2110165b

.field public static final ID_ICM_UPDATE_PARTITION_RESULT:I = 0x2110165c

.field public static final ID_ICM_UPDATE_PROGRESS:I = 0x2140164d

.field public static final ID_ICM_UPDATE_REQ:I = 0x2110164a

.field public static final ID_ICM_UPDATE_RESULT:I = 0x2140164b

.field public static final ID_ICM_UPDATE_TRANS:I = 0x2140164c

.field public static final ID_ICM_USER_SCENARIO_EXIT_DIALOG:I = 0x2140166b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_ICM_USER_SCENARIO_INFO:I = 0x2141166a

.field public static final ID_ICM_VPA_STATUS:I = 0x21401670

.field public static final ID_ICM_WEATHER:I = 0x21101619

.field public static final ID_ICM_WHEEL_KEY:I = 0x2110161a

.field public static final ID_ICM_WIND_BLOW_LEVEL:I = 0x2140161f

.field public static final ID_ICM_WIND_BLOW_MODE:I = 0x21401624

.field public static final ID_ICM_WIND_MODE:I = 0x21401621

.field public static final ID_ICM_WIND_POWER:I = 0x21401627

.field public static final INSTRUMENT_THEME:I = 0x0

.field public static final KEYCODE_BACK:I = 0xd

.field public static final KEYCODE_CAR_ENTER:I = 0xc

.field public static final KEYCODE_CAR_LONG_ENTER:I = 0x1a

.field public static final KEYCODE_CAR_LONG_MEDIA_NEXT:I = 0x19

.field public static final KEYCODE_CAR_LONG_MEDIA_PREVIOUS:I = 0x18

.field public static final KEYCODE_CAR_LONG_VOLUME_DOWN:I = 0x17

.field public static final KEYCODE_CAR_LONG_VOLUME_UP:I = 0x16

.field public static final KEYCODE_CAR_LT_CUSTOM:I = 0x31

.field public static final KEYCODE_CAR_LT_ENTER:I = 0x36

.field public static final KEYCODE_CAR_LT_MEDIA_NEXT:I = 0x35

.field public static final KEYCODE_CAR_LT_MEDIA_PREVIOUS:I = 0x34

.field public static final KEYCODE_CAR_LT_SPEECH:I = 0x30

.field public static final KEYCODE_CAR_LT_VOLUME_DOWN:I = 0x33

.field public static final KEYCODE_CAR_LT_VOLUME_UP:I = 0x32

.field public static final KEYCODE_CAR_MEDIA_NEXT:I = 0xb

.field public static final KEYCODE_CAR_MEDIA_PREVIOUS:I = 0xa

.field public static final KEYCODE_CAR_SLIDE_DOWN:I = 0x3c

.field public static final KEYCODE_CAR_SLIDE_UP:I = 0x3b

.field public static final KEYCODE_CAR_ST_CUSTOM:I = 0x23

.field public static final KEYCODE_CAR_ST_ENTER:I = 0x28

.field public static final KEYCODE_CAR_ST_MEDIA_NEXT:I = 0x27

.field public static final KEYCODE_CAR_ST_MEDIA_PREVIOUS:I = 0x26

.field public static final KEYCODE_CAR_ST_SPEECH:I = 0x22

.field public static final KEYCODE_CAR_ST_VOLUME_DOWN:I = 0x25

.field public static final KEYCODE_CAR_ST_VOLUME_UP:I = 0x24

.field public static final KEYCODE_CAR_VOLUME_DOWN:I = 0x9

.field public static final KEYCODE_CAR_VOLUME_UP:I = 0x8

.field public static final KEYCODE_CUSTOM:I = 0x7

.field public static final KEYCODE_ICM_DOWN:I = 0x2

.field public static final KEYCODE_ICM_ENTER:I = 0x5

.field public static final KEYCODE_ICM_LEFT:I = 0x3

.field public static final KEYCODE_ICM_LONG_DOWN:I = 0x10

.field public static final KEYCODE_ICM_LONG_ENTER:I = 0x13

.field public static final KEYCODE_ICM_LONG_LEFT:I = 0x11

.field public static final KEYCODE_ICM_LONG_RIGHT:I = 0x12

.field public static final KEYCODE_ICM_LONG_UP:I = 0xf

.field public static final KEYCODE_ICM_LT_DOWN:I = 0x2c

.field public static final KEYCODE_ICM_LT_ENTER:I = 0x2f

.field public static final KEYCODE_ICM_LT_LEFT:I = 0x2d

.field public static final KEYCODE_ICM_LT_RIGHT:I = 0x2e

.field public static final KEYCODE_ICM_LT_UP:I = 0x2b

.field public static final KEYCODE_ICM_RIGHT:I = 0x4

.field public static final KEYCODE_ICM_SLIDE_DOWN:I = 0x3a

.field public static final KEYCODE_ICM_SLIDE_UP:I = 0x39

.field public static final KEYCODE_ICM_ST_DOWN:I = 0x1e

.field public static final KEYCODE_ICM_ST_ENTER:I = 0x21

.field public static final KEYCODE_ICM_ST_LEFT:I = 0x1f

.field public static final KEYCODE_ICM_ST_RIGHT:I = 0x20

.field public static final KEYCODE_ICM_ST_UP:I = 0x1d

.field public static final KEYCODE_ICM_UP:I = 0x1

.field public static final KEYCODE_LONG_BACK:I = 0x1b

.field public static final KEYCODE_LONG_CUSTOM:I = 0x15

.field public static final KEYCODE_LONG_MUTE:I = 0x1c

.field public static final KEYCODE_LONG_SPEECH:I = 0x14

.field public static final KEYCODE_LT_BACK:I = 0x37

.field public static final KEYCODE_LT_MUTE:I = 0x38

.field public static final KEYCODE_MUTE:I = 0xe

.field public static final KEYCODE_SPEECH:I = 0x6

.field public static final KEYCODE_ST_BACK:I = 0x29

.field public static final KEYCODE_ST_MUTE:I = 0x2a

.field public static final LOCAL_RADIO:I = 0x1

.field public static final MAX_NAVI_BMP_SIZE:I = 0x500000

.field public static final MEDIA_CONFIG_CDCU_HIGH:I = 0x1

.field public static final MEDIA_CONFIG_CDCU_LOW:I = 0x0

.field public static final MSG_CONTENT_CONNECT:Ljava/lang/String; = "Connect"

.field public static final MSG_CONTENT_DIALOUT:Ljava/lang/String; = "Dialout"

.field public static final MSG_CONTENT_DISCONNECT:Ljava/lang/String; = "Disconnect"

.field public static final MSG_CONTENT_NEXT:Ljava/lang/String; = "Next"

.field public static final MSG_CONTENT_OPEN:Ljava/lang/String; = "Open"

.field public static final MSG_CONTENT_PAUSE:Ljava/lang/String; = "Pause"

.field public static final MSG_CONTENT_PLAY:Ljava/lang/String; = "Play"

.field public static final MSG_NONE:Ljava/lang/String; = "None"

.field public static final MSG_REQCARDSBACK:Ljava/lang/String; = "reqCardsBack"

.field public static final MUSIC_THEME:I = 0x1

.field public static final NAVBMPPAGESIZE:I = 0x30d40

.field public static final NET_RADIO:I = 0x2

.field public static final NONE_RADIO:I = 0x3

.field public static final OSDMODE_MEDIAVOLUME:Ljava/lang/String; = "Media Volume"

.field public static final OSDMODE_PHONEVOLUME:Ljava/lang/String; = "Phone Volume"

.field public static final OSDMODE_VOICEVOLUME:Ljava/lang/String; = "Voice Volume"

.field public static final PARKING_STAT_ACTIVE:I = 0x2

.field public static final PARKING_STAT_AVAILABLE:I = 0x1

.field public static final PARKING_STAT_UNAVAILABLE:I = 0x0

.field public static final SUPER_ENERGY_HIGH_SPD:I = 0x3

.field public static final SUPER_ENERGY_INVALID:I = 0x0

.field public static final SUPER_ENERGY_LOW_TEMP:I = 0x2

.field public static final SUPER_ENERGY_NAVIGATION:I = 0x1

.field public static final SUPER_ENERGY_RAMP:I = 0x4

.field public static final SYNCMODE_ANIMATIONREADY:Ljava/lang/String; = "AnimReady"

.field public static final SYNCMODE_DAYMODE:Ljava/lang/String; = "DayMode"

.field public static final SYNCMODE_NIGHTMODE:Ljava/lang/String; = "NightMode"

.field public static final SYNCMODE_OTA:Ljava/lang/String; = "OTA"

.field public static final SYNCMODE_SYSTEMREADY:Ljava/lang/String; = "SysReady"

.field private static final TAG:Ljava/lang/String; = "CarIcmManager"


# instance fields
.field private final mIcmPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

.field private mXpVehicle:Landroid/car/hardware/XpVehicle/IXpVehicle;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2178
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 p4, 0x0

    const-string p5, "CarIcmManager"

    .line 1688
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 1548
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x78

    new-array p2, p2, [Ljava/lang/Integer;

    const p5, 0x21401633

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, p4

    const p4, 0x21401634

    .line 1549
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    const p4, 0x21401605

    .line 1550
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x2

    aput-object p4, p2, p5

    const p4, 0x21401620

    .line 1551
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    aput-object p4, p2, p5

    const p4, 0x21401625

    .line 1552
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, p2, p5

    const p4, 0x21401627

    .line 1553
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, p2, p5

    const p4, 0x21401621

    .line 1554
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, p2, p5

    const p4, 0x21401636

    .line 1555
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    aput-object p4, p2, p5

    const p4, 0x21401637

    .line 1556
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x8

    aput-object p4, p2, p5

    const p4, 0x2170161d

    .line 1557
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x9

    aput-object p4, p2, p5

    const p5, 0x2140162a

    .line 1558
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xa

    aput-object p5, p2, v0

    const p5, 0x21401622

    .line 1559
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xb

    aput-object p5, p2, v0

    const p5, 0x2140162d

    .line 1560
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xc

    aput-object p5, p2, v0

    const p5, 0x21401624

    .line 1561
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xd

    aput-object p5, p2, v0

    const p5, 0x2140161f

    .line 1562
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xe

    aput-object p5, p2, v0

    const p5, 0x21601635

    .line 1563
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xf

    aput-object p5, p2, v0

    const p5, 0x21411626

    .line 1564
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x10

    aput-object p5, p2, v0

    const p5, 0x21701603

    .line 1565
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x11

    aput-object p5, p2, v0

    const p5, 0x21701601

    .line 1566
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x12

    aput-object p5, p2, v0

    const v0, 0x21701608

    .line 1567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p2, v1

    const v0, 0x21701607

    .line 1568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p2, v1

    const v0, 0x2170160f

    .line 1569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p2, v1

    const v0, 0x21701602

    .line 1570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p2, v1

    const v0, 0x2141162c

    .line 1571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p2, v1

    const v0, 0x2141160a

    .line 1572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p2, v1

    const v0, 0x2170160b

    .line 1573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p2, v1

    const v0, 0x2170160c

    .line 1574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p2, v1

    const v0, 0x2170160d

    .line 1575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p2, v1

    const v0, 0x21601632

    .line 1576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p2, v1

    const v0, 0x21601631

    .line 1577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p2, v1

    const v0, 0x2160162e

    .line 1578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p2, v1

    const v0, 0x21601630

    .line 1579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p2, v1

    const v0, 0x2160162f

    .line 1580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p2, v1

    const v0, 0x21401628

    .line 1581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p2, v1

    const v0, 0x21701606

    .line 1582
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p2, v1

    const v0, 0x2140162b

    .line 1583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p2, v1

    const v0, 0x21701604

    .line 1584
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p2, v1

    const v0, 0x2140160e

    .line 1585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p2, v1

    const v0, 0x21701609

    .line 1586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p2, v1

    const v0, 0x21101610

    .line 1587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p2, v1

    const v0, 0x21101611

    .line 1588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p2, v1

    const v0, 0x21101612

    .line 1589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p2, v1

    const v0, 0x21101613

    .line 1590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p2, v1

    const v0, 0x21101614

    .line 1591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p2, v1

    const v0, 0x21101615

    .line 1592
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p2, v1

    const v0, 0x21101616

    .line 1593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p2, v1

    const v0, 0x21101617

    .line 1594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p2, v1

    const v0, 0x21101618

    .line 1595
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p2, v1

    const v0, 0x21101619

    .line 1596
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p2, v1

    const v0, 0x2110161a

    .line 1597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p2, v1

    const v0, 0x2110161b

    .line 1598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p2, v1

    const v0, 0x2110161c

    .line 1599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p2, v1

    const/16 v0, 0x34

    aput-object p4, p2, v0

    const/16 p4, 0x35

    aput-object p5, p2, p4

    const p4, 0x2140163c

    .line 1602
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x36

    aput-object p4, p2, p5

    const p4, 0x2140163a

    .line 1603
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x37

    aput-object p4, p2, p5

    const p4, 0x21401639

    .line 1604
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x38

    aput-object p4, p2, p5

    const p4, 0x21401638

    .line 1605
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x39

    aput-object p4, p2, p5

    const p4, 0x2140163b

    .line 1606
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3a

    aput-object p4, p2, p5

    const p4, 0x2140163d

    .line 1607
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3b

    aput-object p4, p2, p5

    const p4, 0x2140163f

    .line 1608
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3c

    aput-object p4, p2, p5

    const p4, 0x2140163e

    .line 1609
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3d

    aput-object p4, p2, p5

    const p4, 0x21401641

    .line 1610
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3e

    aput-object p4, p2, p5

    const p4, 0x21401642

    .line 1611
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3f

    aput-object p4, p2, p5

    const p4, 0x21101645

    .line 1612
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x40

    aput-object p4, p2, p5

    const p4, 0x21401647

    .line 1613
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x41

    aput-object p4, p2, p5

    const p4, 0x21101648

    .line 1614
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x42

    aput-object p4, p2, p5

    const p4, 0x21401649

    .line 1615
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x43

    aput-object p4, p2, p5

    const p4, 0x2110164a

    .line 1616
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x44

    aput-object p4, p2, p5

    const p4, 0x2140164c

    .line 1617
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x45

    aput-object p4, p2, p5

    const p4, 0x2140164d

    .line 1618
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x46

    aput-object p4, p2, p5

    const p4, 0x2140164b

    .line 1619
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x47

    aput-object p4, p2, p5

    const p4, 0x2140164e

    .line 1620
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x48

    aput-object p4, p2, p5

    const p4, 0x2140161e

    .line 1621
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x49

    aput-object p4, p2, p5

    const p4, 0x2110165b

    .line 1622
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4a

    aput-object p4, p2, p5

    const p4, 0x2110165c

    .line 1623
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4b

    aput-object p4, p2, p5

    const p4, 0x2110165d

    .line 1624
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4c

    aput-object p4, p2, p5

    const p4, 0x2110165f

    .line 1625
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4d

    aput-object p4, p2, p5

    const p4, 0x21401660

    .line 1626
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4e

    aput-object p4, p2, p5

    const p4, 0x21101661

    .line 1627
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4f

    aput-object p4, p2, p5

    const p4, 0x21401662

    .line 1628
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x50

    aput-object p4, p2, p5

    const p4, 0x21401663

    .line 1629
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x51

    aput-object p4, p2, p5

    const p4, 0x21401665

    .line 1630
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x52

    aput-object p4, p2, p5

    const p4, 0x21101666

    .line 1631
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x53

    aput-object p4, p2, p5

    const p4, 0x21411667

    .line 1632
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x54

    aput-object p4, p2, p5

    const p4, 0x21401669

    .line 1633
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x55

    aput-object p4, p2, p5

    const p4, 0x2110166c

    .line 1634
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x56

    aput-object p4, p2, p5

    const p4, 0x2170166e

    .line 1635
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x57

    aput-object p4, p2, p5

    const p4, 0x2150166d

    .line 1636
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x58

    aput-object p4, p2, p5

    const p4, 0x2140166f

    .line 1637
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x59

    aput-object p4, p2, p5

    const p4, 0x21401670

    .line 1638
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5a

    aput-object p4, p2, p5

    const p4, 0x21401671

    .line 1639
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5b

    aput-object p4, p2, p5

    const p4, 0x21611672

    .line 1640
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5c

    aput-object p4, p2, p5

    const p4, 0x21401675

    .line 1641
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5d

    aput-object p4, p2, p5

    const p4, 0x21401673

    .line 1642
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5e

    aput-object p4, p2, p5

    const p4, 0x21401674

    .line 1643
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5f

    aput-object p4, p2, p5

    const p4, 0x21101676

    .line 1644
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x60

    aput-object p4, p2, p5

    const p4, 0x21411678

    .line 1645
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x61

    aput-object p4, p2, p5

    const p4, 0x21401679

    .line 1646
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x62

    aput-object p4, p2, p5

    const p4, 0x2140167a

    .line 1647
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x63

    aput-object p4, p2, p5

    const p4, 0x2110167b

    .line 1648
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x64

    aput-object p4, p2, p5

    const p4, 0x2140167c

    .line 1649
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x65

    aput-object p4, p2, p5

    const p4, 0x2140167d

    .line 1650
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x66

    aput-object p4, p2, p5

    const p4, 0x2140167e

    .line 1651
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x67

    aput-object p4, p2, p5

    const p4, 0x2140167f

    .line 1652
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x68

    aput-object p4, p2, p5

    const p4, 0x21401680

    .line 1653
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x69

    aput-object p4, p2, p5

    const p4, 0x21401681

    .line 1654
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6a

    aput-object p4, p2, p5

    const p4, 0x21401682

    .line 1655
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6b

    aput-object p4, p2, p5

    const p4, 0x21401684

    .line 1656
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6c

    aput-object p4, p2, p5

    const p4, 0x21401683

    .line 1657
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6d

    aput-object p4, p2, p5

    const p4, 0x21401685

    .line 1658
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6e

    aput-object p4, p2, p5

    const p4, 0x21401686

    .line 1659
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6f

    aput-object p4, p2, p5

    const p4, 0x21401687

    .line 1660
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x70

    aput-object p4, p2, p5

    const p4, 0x21601689

    .line 1661
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x71

    aput-object p4, p2, p5

    const p4, 0x2161168a

    .line 1662
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x72

    aput-object p4, p2, p5

    const p4, 0x21401688

    .line 1663
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x73

    aput-object p4, p2, p5

    const p4, 0x2140168b

    .line 1664
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x74

    aput-object p4, p2, p5

    const p4, 0x2140168e

    .line 1665
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x75

    aput-object p4, p2, p5

    const p4, 0x2140168d

    .line 1666
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x76

    aput-object p4, p2, p5

    const p4, 0x2140168f

    .line 1667
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x77

    aput-object p4, p2, p5

    .line 1548
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mIcmPropertyIds:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 1689
    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 1690
    invoke-static {p3}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mXpVehicle:Landroid/car/hardware/XpVehicle/IXpVehicle;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 p5, 0x0

    const-string p6, "CarIcmManager"

    .line 1694
    invoke-direct {p0, p1, p2, p5, p6}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 1548
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x78

    new-array p2, p2, [Ljava/lang/Integer;

    const p6, 0x21401633

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p2, p5

    const p5, 0x21401634

    .line 1549
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, p2, p6

    const p5, 0x21401605

    .line 1550
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x2

    aput-object p5, p2, p6

    const p5, 0x21401620

    .line 1551
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x3

    aput-object p5, p2, p6

    const p5, 0x21401625

    .line 1552
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x4

    aput-object p5, p2, p6

    const p5, 0x21401627

    .line 1553
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x5

    aput-object p5, p2, p6

    const p5, 0x21401621

    .line 1554
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x6

    aput-object p5, p2, p6

    const p5, 0x21401636

    .line 1555
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x7

    aput-object p5, p2, p6

    const p5, 0x21401637

    .line 1556
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x8

    aput-object p5, p2, p6

    const p5, 0x2170161d

    .line 1557
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x9

    aput-object p5, p2, p6

    const p6, 0x2140162a

    .line 1558
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xa

    aput-object p6, p2, v0

    const p6, 0x21401622

    .line 1559
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xb

    aput-object p6, p2, v0

    const p6, 0x2140162d

    .line 1560
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xc

    aput-object p6, p2, v0

    const p6, 0x21401624

    .line 1561
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xd

    aput-object p6, p2, v0

    const p6, 0x2140161f

    .line 1562
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xe

    aput-object p6, p2, v0

    const p6, 0x21601635

    .line 1563
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0xf

    aput-object p6, p2, v0

    const p6, 0x21411626

    .line 1564
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0x10

    aput-object p6, p2, v0

    const p6, 0x21701603

    .line 1565
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0x11

    aput-object p6, p2, v0

    const p6, 0x21701601

    .line 1566
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/16 v0, 0x12

    aput-object p6, p2, v0

    const v0, 0x21701608

    .line 1567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, p2, v1

    const v0, 0x21701607

    .line 1568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, p2, v1

    const v0, 0x2170160f

    .line 1569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p2, v1

    const v0, 0x21701602

    .line 1570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, p2, v1

    const v0, 0x2141162c

    .line 1571
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, p2, v1

    const v0, 0x2141160a

    .line 1572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, p2, v1

    const v0, 0x2170160b

    .line 1573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, p2, v1

    const v0, 0x2170160c

    .line 1574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, p2, v1

    const v0, 0x2170160d

    .line 1575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1b

    aput-object v0, p2, v1

    const v0, 0x21601632

    .line 1576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    aput-object v0, p2, v1

    const v0, 0x21601631

    .line 1577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, p2, v1

    const v0, 0x2160162e

    .line 1578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    aput-object v0, p2, v1

    const v0, 0x21601630

    .line 1579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1f

    aput-object v0, p2, v1

    const v0, 0x2160162f

    .line 1580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x20

    aput-object v0, p2, v1

    const v0, 0x21401628

    .line 1581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x21

    aput-object v0, p2, v1

    const v0, 0x21701606

    .line 1582
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, p2, v1

    const v0, 0x2140162b

    .line 1583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    aput-object v0, p2, v1

    const v0, 0x21701604

    .line 1584
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, p2, v1

    const v0, 0x2140160e

    .line 1585
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    aput-object v0, p2, v1

    const v0, 0x21701609

    .line 1586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, p2, v1

    const v0, 0x21101610

    .line 1587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, p2, v1

    const v0, 0x21101611

    .line 1588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    aput-object v0, p2, v1

    const v0, 0x21101612

    .line 1589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x29

    aput-object v0, p2, v1

    const v0, 0x21101613

    .line 1590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    aput-object v0, p2, v1

    const v0, 0x21101614

    .line 1591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b

    aput-object v0, p2, v1

    const v0, 0x21101615

    .line 1592
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2c

    aput-object v0, p2, v1

    const v0, 0x21101616

    .line 1593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2d

    aput-object v0, p2, v1

    const v0, 0x21101617

    .line 1594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2e

    aput-object v0, p2, v1

    const v0, 0x21101618

    .line 1595
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2f

    aput-object v0, p2, v1

    const v0, 0x21101619

    .line 1596
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x30

    aput-object v0, p2, v1

    const v0, 0x2110161a

    .line 1597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x31

    aput-object v0, p2, v1

    const v0, 0x2110161b

    .line 1598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    aput-object v0, p2, v1

    const v0, 0x2110161c

    .line 1599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    aput-object v0, p2, v1

    const/16 v0, 0x34

    aput-object p5, p2, v0

    const/16 p5, 0x35

    aput-object p6, p2, p5

    const p5, 0x2140163c

    .line 1602
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x36

    aput-object p5, p2, p6

    const p5, 0x2140163a

    .line 1603
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x37

    aput-object p5, p2, p6

    const p5, 0x21401639

    .line 1604
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x38

    aput-object p5, p2, p6

    const p5, 0x21401638

    .line 1605
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x39

    aput-object p5, p2, p6

    const p5, 0x2140163b

    .line 1606
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3a

    aput-object p5, p2, p6

    const p5, 0x2140163d

    .line 1607
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3b

    aput-object p5, p2, p6

    const p5, 0x2140163f

    .line 1608
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3c

    aput-object p5, p2, p6

    const p5, 0x2140163e

    .line 1609
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3d

    aput-object p5, p2, p6

    const p5, 0x21401641

    .line 1610
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3e

    aput-object p5, p2, p6

    const p5, 0x21401642

    .line 1611
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x3f

    aput-object p5, p2, p6

    const p5, 0x21101645

    .line 1612
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x40

    aput-object p5, p2, p6

    const p5, 0x21401647

    .line 1613
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x41

    aput-object p5, p2, p6

    const p5, 0x21101648

    .line 1614
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x42

    aput-object p5, p2, p6

    const p5, 0x21401649

    .line 1615
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x43

    aput-object p5, p2, p6

    const p5, 0x2110164a

    .line 1616
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x44

    aput-object p5, p2, p6

    const p5, 0x2140164c

    .line 1617
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x45

    aput-object p5, p2, p6

    const p5, 0x2140164d

    .line 1618
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x46

    aput-object p5, p2, p6

    const p5, 0x2140164b

    .line 1619
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x47

    aput-object p5, p2, p6

    const p5, 0x2140164e

    .line 1620
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x48

    aput-object p5, p2, p6

    const p5, 0x2140161e

    .line 1621
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x49

    aput-object p5, p2, p6

    const p5, 0x2110165b

    .line 1622
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4a

    aput-object p5, p2, p6

    const p5, 0x2110165c

    .line 1623
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4b

    aput-object p5, p2, p6

    const p5, 0x2110165d

    .line 1624
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4c

    aput-object p5, p2, p6

    const p5, 0x2110165f

    .line 1625
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4d

    aput-object p5, p2, p6

    const p5, 0x21401660

    .line 1626
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4e

    aput-object p5, p2, p6

    const p5, 0x21101661

    .line 1627
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x4f

    aput-object p5, p2, p6

    const p5, 0x21401662

    .line 1628
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x50

    aput-object p5, p2, p6

    const p5, 0x21401663

    .line 1629
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x51

    aput-object p5, p2, p6

    const p5, 0x21401665

    .line 1630
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x52

    aput-object p5, p2, p6

    const p5, 0x21101666

    .line 1631
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x53

    aput-object p5, p2, p6

    const p5, 0x21411667

    .line 1632
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x54

    aput-object p5, p2, p6

    const p5, 0x21401669

    .line 1633
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x55

    aput-object p5, p2, p6

    const p5, 0x2110166c

    .line 1634
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x56

    aput-object p5, p2, p6

    const p5, 0x2170166e

    .line 1635
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x57

    aput-object p5, p2, p6

    const p5, 0x2150166d

    .line 1636
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x58

    aput-object p5, p2, p6

    const p5, 0x2140166f

    .line 1637
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x59

    aput-object p5, p2, p6

    const p5, 0x21401670

    .line 1638
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5a

    aput-object p5, p2, p6

    const p5, 0x21401671

    .line 1639
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5b

    aput-object p5, p2, p6

    const p5, 0x21611672

    .line 1640
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5c

    aput-object p5, p2, p6

    const p5, 0x21401675

    .line 1641
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5d

    aput-object p5, p2, p6

    const p5, 0x21401673

    .line 1642
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5e

    aput-object p5, p2, p6

    const p5, 0x21401674

    .line 1643
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x5f

    aput-object p5, p2, p6

    const p5, 0x21101676

    .line 1644
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x60

    aput-object p5, p2, p6

    const p5, 0x21411678

    .line 1645
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x61

    aput-object p5, p2, p6

    const p5, 0x21401679

    .line 1646
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x62

    aput-object p5, p2, p6

    const p5, 0x2140167a

    .line 1647
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x63

    aput-object p5, p2, p6

    const p5, 0x2110167b

    .line 1648
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x64

    aput-object p5, p2, p6

    const p5, 0x2140167c

    .line 1649
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x65

    aput-object p5, p2, p6

    const p5, 0x2140167d

    .line 1650
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x66

    aput-object p5, p2, p6

    const p5, 0x2140167e

    .line 1651
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x67

    aput-object p5, p2, p6

    const p5, 0x2140167f

    .line 1652
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x68

    aput-object p5, p2, p6

    const p5, 0x21401680

    .line 1653
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x69

    aput-object p5, p2, p6

    const p5, 0x21401681

    .line 1654
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6a

    aput-object p5, p2, p6

    const p5, 0x21401682

    .line 1655
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6b

    aput-object p5, p2, p6

    const p5, 0x21401684

    .line 1656
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6c

    aput-object p5, p2, p6

    const p5, 0x21401683

    .line 1657
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6d

    aput-object p5, p2, p6

    const p5, 0x21401685

    .line 1658
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6e

    aput-object p5, p2, p6

    const p5, 0x21401686

    .line 1659
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x6f

    aput-object p5, p2, p6

    const p5, 0x21401687

    .line 1660
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x70

    aput-object p5, p2, p6

    const p5, 0x21601689

    .line 1661
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x71

    aput-object p5, p2, p6

    const p5, 0x2161168a

    .line 1662
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x72

    aput-object p5, p2, p6

    const p5, 0x21401688

    .line 1663
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x73

    aput-object p5, p2, p6

    const p5, 0x2140168b

    .line 1664
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x74

    aput-object p5, p2, p6

    const p5, 0x2140168e

    .line 1665
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x75

    aput-object p5, p2, p6

    const p5, 0x2140168d

    .line 1666
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x76

    aput-object p5, p2, p6

    const p5, 0x2140168f

    .line 1667
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 p6, 0x77

    aput-object p5, p2, p6

    .line 1548
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mIcmPropertyIds:Landroid/util/ArraySet;

    .line 1695
    invoke-static {p4}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 1696
    invoke-static {p3}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/icm/CarIcmManager;->mXpVehicle:Landroid/car/hardware/XpVehicle/IXpVehicle;

    return-void
.end method

.method private byteMerge([B[B)[B
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2289
    invoke-direct {p0, v0}, Landroid/car/hardware/icm/CarIcmManager;->intToByteArray(I)[B

    move-result-object p1

    .line 2290
    array-length v1, p2

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2291
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2292
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    .line 2295
    array-length p2, p1

    invoke-direct {p0, p2}, Landroid/car/hardware/icm/CarIcmManager;->intToByteArray(I)[B

    move-result-object p2

    .line 2296
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2297
    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2298
    array-length p2, p2

    array-length v2, p1

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 2301
    :cond_2
    array-length v1, p1

    invoke-direct {p0, v1}, Landroid/car/hardware/icm/CarIcmManager;->intToByteArray(I)[B

    move-result-object v1

    .line 2302
    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 2303
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2304
    array-length v3, v1

    array-length v4, p1

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2305
    array-length v1, v1

    array-length p1, p1

    add-int/2addr v1, p1

    array-length p1, p2

    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private getIcmNavigation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1941
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmNavigation()I

    move-result v0

    return v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_icm"

    return-object v0
.end method

.method private intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private mergeData([B[B)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 2184
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 2185
    :cond_1
    array-length v0, p2

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 2190
    new-array v0, v0, [B

    .line 2191
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2192
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2193
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 2195
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    if-eqz p2, :cond_4

    .line 2198
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_4
    return-object v0
.end method

.method private sendData(I[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarIcmManager"

    const/4 v1, 0x0

    .line 2170
    :try_start_0
    invoke-static {p2, p3, v1}, Landroid/os/ParcelFileDescriptor;->fromData([B[BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move p2, v3

    goto :goto_0

    .line 2172
    :cond_0
    :try_start_1
    array-length p2, p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 2173
    :cond_1
    array-length v3, p3

    .line 2174
    :goto_1
    iget-object p3, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v3

    invoke-interface {p3, p1, v2, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory;->queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V

    goto :goto_2

    :cond_2
    const-string p1, "Cannot fetch pfd"

    .line 2176
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v2, :cond_3

    .line 2178
    :try_start_2
    invoke-static {v1, v2}, Landroid/car/hardware/icm/CarIcmManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 2170
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_4

    .line 2178
    :try_start_4
    invoke-static {p1, v2}, Landroid/car/hardware/icm/CarIcmManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "send data using shared memory with exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setIcmNavigation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1929
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmNavigation(I)V

    return-void
.end method


# virtual methods
.method public getBrakeFluidLevelWarningMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3747
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmBrakeFluidLevelWarningMessage()I

    move-result v0

    return v0
.end method

.method public getCrashInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3773
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmCrashInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardLightsStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3812
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmDashboardLightsStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosisInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3786
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmDiagnosisInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveTotalMileage()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2446
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriveTotalMileage()F

    move-result v0

    return v0
.end method

.method public getEcuUpdateResult()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmEcuUpdateResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcmAlarmVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2973
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmAlarmVolume()I

    move-result v0

    return v0
.end method

.method public getIcmAutoDriveTipsId()I
    .locals 3

    const v0, 0x2140168d

    const/4 v1, 0x0

    .line 4541
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4543
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

    const-string v1, "CarIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xffff

    return v0
.end method

.method public getIcmBackLightValue()I
    .locals 3

    .line 2549
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmBackLightValue()I

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

    .line 2551
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

    const-string v1, "CarIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getIcmBrightness()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3019
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmBrightness()I

    move-result v0

    return v0
.end method

.method public getIcmCabinAiFeedback()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3760
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmCabinAiFeedback()I

    move-result v0

    return v0
.end method

.method public getIcmConnectionState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2351
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmConnectionState()I

    move-result v0

    return v0
.end method

.method public getIcmDayNightSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmDayNightSwitch()I

    move-result v0

    return v0
.end method

.method public getIcmDisplayVehSpeed()I
    .locals 3

    const v0, 0x21401686

    const/4 v1, 0x0

    .line 4469
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcmDisplayVehSpeed throw Exception e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method public getIcmDriverTempValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmDriverTempValue()F

    move-result v0

    return v0
.end method

.method public getIcmGeneralTipsId()I
    .locals 3

    const v0, 0x2140168e

    const/4 v1, 0x0

    .line 4522
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4524
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

    const-string v1, "CarIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xffff

    return v0
.end method

.method public getIcmMediaSource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1889
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmMediaSource()I

    move-result v0

    return v0
.end method

.method public getIcmOptionalConnectedStatus()I
    .locals 4

    const v0, 0x21401685

    const/4 v1, 0x0

    .line 4429
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIcmOptionalConnectedStatus throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarIcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getIcmScreenLight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1917
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmScreenLight()I

    move-result v0

    return v0
.end method

.method public getIcmTechislandTheme()I
    .locals 4

    const v0, 0x2140167f

    const/4 v1, 0x0

    .line 4360
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4362
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

    const-string v2, "CarIcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIcmTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmTemperature()I

    move-result v0

    return v0
.end method

.method public getIcmTimeFormat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3004
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmTimeFormat()I

    move-result v0

    return v0
.end method

.method public getIcmWindBlowMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2016
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmWindBlowMode()I

    move-result v0

    return v0
.end method

.method public getIcmWindLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmWindLevel()I

    move-result v0

    return v0
.end method

.method public getIcmWindMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmWindMode()I

    move-result v0

    return v0
.end method

.method public getIcmWindPower()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1833
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmWindPower()I

    move-result v0

    return v0
.end method

.method public getLastChargeMileage()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2461
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLastChargeMileage()F

    move-result v0

    return v0
.end method

.method public getLastEnergySupplyMileage()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21601689

    const/4 v1, 0x0

    .line 2491
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getLastStartUpMileage()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2476
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLastStartUpMileage()F

    move-result v0

    return v0
.end method

.method public getLogCompressInformation()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3945
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmLogCompressInformation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeterMileageA()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2413
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMeterMileageA()F

    move-result v0

    return v0
.end method

.method public getMeterMileageB()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2429
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMeterMileageB()F

    move-result v0

    return v0
.end method

.method public getNaviBmpInfoRequiredByIcm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3718
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNaviBmpInfoRequiredByIcm()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 1724
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mIcmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSpeedLimitWarningSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3075
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpeedLimitWarningSwitch()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitWarningValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3047
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpeedLimitWarningValue()I

    move-result v0

    return v0
.end method

.method public getSuperChargeStIndication()I
    .locals 4

    const v0, 0x2140168f

    const/4 v1, 0x0

    .line 4565
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4567
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

    const-string v2, "CarIcmManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getUpdateProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3192
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmUpdateProgress()I

    move-result v0

    return v0
.end method

.method public getUpdateResponse()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3133
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmUpdateResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateResult()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3166
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmUpdateResult()I

    move-result v0

    return v0
.end method

.method public getUpdatingPartitionAndProgress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3205
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIcmUpdatingPartitionAndProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConnected()V
    .locals 2

    .line 1701
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onConnected()V

    .line 1703
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {p0}, Landroid/car/hardware/icm/CarIcmManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_shared_memory"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    .line 1706
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/icm/CarIcmManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_vehicle"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mXpVehicle:Landroid/car/hardware/XpVehicle/IXpVehicle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1708
    invoke-virtual {p0, v0}, Landroid/car/hardware/icm/CarIcmManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public requestDashboardLightsStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3799
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->requestIcmDashboardLightsStatus()V

    return-void
.end method

.method public resetMeterMileageA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2927
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->resetIcmMeterMileageA()V

    return-void
.end method

.method public resetMeterMileageB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2940
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->resetIcmMeterMileageB()V

    return-void
.end method

.method public sendContacts([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendContacts([B)V

    return-void
.end method

.method public sendICMRateAnimType(I)V
    .locals 2

    const v0, 0x21401679

    const/4 v1, 0x0

    .line 4209
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4211
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendICMRateLimitMsg(II)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const p1, 0x21411678

    .line 4170
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setIntVectorProperty(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "throw Exception e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarIcmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendICMRateLimitMsg(III)V
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const p1, 0x21411678

    .line 4191
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setIntVectorProperty(II[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "throw Exception e "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarIcmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendICMTrafficLightsColor(I)V
    .locals 2

    .line 4149
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendICMTrafficLightsColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4151
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendICMTrafficLightsCounter(I)V
    .locals 2

    .line 4131
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendICMTrafficLightsCounter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4133
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendIcmApaStatus(I)V
    .locals 2

    .line 4074
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmApaStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4076
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendIcmChangeMileage(FF)V
    .locals 1

    .line 4095
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmChangeMileage(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4097
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "throw RemoteException | RuntimeException e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarIcmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendIcmCharingDuration(I)V
    .locals 2

    .line 4113
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmCharingDuration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4115
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendIcmLocaleLanguage(Ljava/lang/String;)V
    .locals 2

    .line 4449
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmLocaleLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4451
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendIcmUnitFormat(Ljava/lang/String;)V
    .locals 2

    const v0, 0x2110167b

    const/4 v1, 0x0

    .line 4245
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setStringProperty(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4247
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendIcmVpaStatus(I)V
    .locals 2

    .line 4054
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmVpaStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4056
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendLogCompressRequest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3931
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmLogCompressRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendLyricsMessage([B)V
    .locals 2

    .line 4034
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendLyricsMessage([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4036
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendParkingScene(I)V
    .locals 2

    const v0, 0x2140167a

    const/4 v1, 0x0

    .line 4227
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4229
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendRandisDisplayType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3996
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmRandisDisplayType(Ljava/lang/String;)V

    return-void
.end method

.method public sendRomBinMsg(I[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2374
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendRomBinMsg(I[B[B)V

    return-void
.end method

.method public sendUpdateRequest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3120
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendIcmUpdateRequest(Ljava/lang/String;)V

    return-void
.end method

.method public setBtMusicState([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2252
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBtMusicState([B)V

    return-void
.end method

.method public setBtPhoneCall(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3679
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBtPhoneCall(Ljava/lang/String;)V

    return-void
.end method

.method public setFNgpNaviPathRetainTime(J)I
    .locals 1

    .line 4013
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFNgpNaviPathRetainTime(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4015
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4016
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFNgpNaviPathRetainTime throw RemoteException | RuntimeException e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarIcmManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setFaceInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmFaceInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmAcTemperature(FI)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    int-to-float p2, p2

    aput p2, v0, p1

    const p1, 0x2161168a

    .line 1749
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setFloatVectorProperty(II[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "throw Exception e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarIcmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmAccount(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3570
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmAccount(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmAirConditioningOsdShow(I)V
    .locals 2

    const v0, 0x2140167e

    const/4 v1, 0x0

    .line 4324
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4326
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmAlarmVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2956
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmAlarmVolume(I)V

    return-void
.end method

.method public setIcmAllCardsRefresh(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2798
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmAllCardsRefresh(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3033
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmBrightness(I)V

    return-void
.end method

.method public setIcmCarSetting(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2914
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmCarSetting(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmDayNightMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmDayNightMode(I)V

    return-void
.end method

.method public setIcmDayNightSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmDayNightSwitch(I)V

    return-void
.end method

.method public setIcmDistractionLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2535
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmDistractionLevel(I)V

    return-void
.end method

.method public setIcmDmsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2506
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmDmsMode(I)V

    return-void
.end method

.method public setIcmDriverTempValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2064
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmDriverTempValue(F)V

    return-void
.end method

.method public setIcmFactoryResetReq()V
    .locals 3

    const v0, 0x2140162b

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4504
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4506
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

    const-string v1, "CarIcmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmFatigueLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2520
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmFatigueLevel(I)V

    return-void
.end method

.method public setIcmInfoCardAdd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2759
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmInfoCardAdd(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmInfoCardRemove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmInfoCardRemove(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmInfoCardUpdate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2772
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmInfoCardUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmInfoFlowMsg(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2811
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmInfoFlowMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmIntervalWiperSensitivity(I)V
    .locals 2

    const v0, 0x2140168b

    const/4 v1, 0x0

    .line 1770
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1772
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmMediaSource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1875
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmMediaSource(I)V

    return-void
.end method

.method public setIcmNavigationBmp([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarIcmManager"

    if-eqz p1, :cond_6

    .line 3610
    array-length v1, p1

    if-eqz v1, :cond_5

    const/high16 v2, 0x500000

    if-gt v1, v2, :cond_4

    .line 3621
    iget-object v2, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    const v3, 0x2170161d

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 3623
    invoke-virtual {p0, v3, v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setByteVectorProperty(II[B)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 3625
    :try_start_0
    invoke-static {p1, v2}, Landroid/car/builtin/os/ParcelFileDescriptorHelper;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 3627
    :try_start_1
    iget-object v4, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    invoke-interface {v4, v3, p1, v1}, Landroid/car/xpsharedmemory/IXpSharedMemory;->queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v1, "Cannot fetch pfd"

    .line 3629
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 3631
    :try_start_2
    invoke-static {v2, p1}, Landroid/car/hardware/icm/CarIcmManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3625
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_2

    .line 3631
    :try_start_4
    invoke-static {v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 3632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send the navigation bmp with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string p1, "data is too large"

    .line 3617
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "data size is 0"

    .line 3614
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "data is null"

    .line 3606
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcmNavigationInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3654
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmNavigationInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmOptionalDrivingNextRoadDis(I)V
    .locals 2

    const v0, 0x21401681

    const/4 v1, 0x0

    .line 4394
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIcmOptionalDrivingNextRoadDis throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmOptionalDrivingNextRoadRemainTime(I)V
    .locals 2

    const v0, 0x21401682

    const/4 v1, 0x0

    .line 4410
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIcmOptionalDrivingNextRoadRemainTime throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmOptionalDrivingTBTIcon(I)V
    .locals 2

    const v0, 0x21401680

    const/4 v1, 0x0

    .line 4378
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIcmOptionalDrivingTBTIcon throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmOsdShow(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2641
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmOsdShow(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmScreenLight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmScreenLight(I)V

    return-void
.end method

.method public setIcmScreenSwitch(I)V
    .locals 2

    .line 4489
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mXpVehicle:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmScreenSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4491
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmSyncSignal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2623
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmSyncSignal(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmSyncTime(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3593
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmSyncTime(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmSystemTimeValue(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmSystemTimeValue(II)V

    return-void
.end method

.method public setIcmTechislandTheme(I)V
    .locals 2

    const v0, 0x2140167f

    const/4 v1, 0x0

    .line 4342
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4344
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIcmTemperature(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1789
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmTemperature(I)V

    return-void
.end method

.method public setIcmTimeFormat(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2988
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmTimeFormat(I)V

    return-void
.end method

.method public setIcmWeather(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3230
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWeather(Ljava/lang/String;)V

    return-void
.end method

.method public setIcmWheelkey(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3551
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWheelkey(I)V

    return-void
.end method

.method public setIcmWindBlowMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWindBlowMode(I)V

    return-void
.end method

.method public setIcmWindLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWindLevel(I)V

    return-void
.end method

.method public setIcmWindMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWindMode(I)V

    return-void
.end method

.method public setIcmWindPower(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWindPower(I)V

    return-void
.end method

.method public setLeftCard(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3826
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmLeftCard(I)V

    return-void
.end method

.method public setMediaConfigTypeBySoc(I)V
    .locals 2

    const v0, 0x2140167d

    const/4 v1, 0x0

    .line 4307
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4309
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMeterBackLightLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2322
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMeterBackLightLevel(I)V

    return-void
.end method

.method public setMeterSoundState(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2102
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMeterSoundState(III)V

    return-void
.end method

.method public setModeInfo(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3870
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmModeInfoArray(II)V

    return-void
.end method

.method public setMusicInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3694
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmMusicInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setMusicInfo([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2157
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->mergeData([B[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to merge data! json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarIcmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    const v2, 0x21701608

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 2163
    invoke-virtual {p0, v2, p1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setByteVectorProperty(II[B)V

    goto :goto_0

    .line 2165
    :cond_1
    invoke-direct {p0, v2, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->sendData(I[B[B)V

    :goto_0
    return-void
.end method

.method public setMusicPlaybackTimeInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3705
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmMusicPlaybackTimeInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setNavigationInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2147
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNavigationInfo([B)V

    return-void
.end method

.method public setNetRadioInfo([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2212
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->mergeData([B[B)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to merge data! json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarIcmManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/icm/CarIcmManager;->mSharedMemoryService:Landroid/car/xpsharedmemory/IXpSharedMemory;

    const v2, 0x21701607

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 2218
    invoke-virtual {p0, v2, p1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setByteVectorProperty(II[B)V

    goto :goto_0

    .line 2221
    :cond_1
    invoke-direct {p0, v2, p1, p2}, Landroid/car/hardware/icm/CarIcmManager;->sendData(I[B[B)V

    :goto_0
    return-void
.end method

.method public setNotifyMessage([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNotifyMessage([B)V

    return-void
.end method

.method public setRadioInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2237
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRadioInfo([B)V

    return-void
.end method

.method public setRadioType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3107
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmRadioType(I)V

    return-void
.end method

.method public setRightCard(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3839
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmRightCard(I)V

    return-void
.end method

.method public setSlideDoorSoundSW(I)V
    .locals 2

    const v0, 0x2140167c

    const/4 v1, 0x0

    .line 4265
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4267
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSoundThemeType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3962
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmSoundThemeType(I)V

    return-void
.end method

.method public setSpeechStateInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2337
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSpeechStateInfo([B)V

    return-void
.end method

.method public setSpeedLimitWarningSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3090
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSpeedLimitWarningSwitch(I)V

    return-void
.end method

.method public setSpeedLimitWarningValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3061
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSpeedLimitWarningValue(I)V

    return-void
.end method

.method public setSteeringWheelHeatingStatus(I)V
    .locals 2

    const v0, 0x21401688

    const/4 v1, 0x0

    .line 4287
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4289
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

    const-string v0, "CarIcmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setUpdateFileTransferStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3149
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmUpdateFileTransferStatus(I)V

    return-void
.end method

.method public setUserScenarioExitDialog(I)V
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

.method public setUserScenarioInfo([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3889
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3892
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmUserScenarioInfo([I)V

    return-void

    .line 3890
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "setUserScenarioModeInfo param count is not 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeatherInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2132
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setWeatherInfo([B)V

    return-void
.end method

.method public setWiperRainDetectSensitivity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3917
    iget-object v0, p0, Landroid/car/hardware/icm/CarIcmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIcmWiperRainDetectSensitivity(I)V

    return-void
.end method
