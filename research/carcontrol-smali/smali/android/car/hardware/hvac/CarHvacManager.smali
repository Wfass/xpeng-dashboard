.class public final Landroid/car/hardware/hvac/CarHvacManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarHvacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;,
        Landroid/car/hardware/hvac/CarHvacManager$PropertyId;
    }
.end annotation


# static fields
.field public static final CO_CONCENTRATION_HIGH:I = 0x2

.field public static final CO_CONCENTRATION_LOW:I = 0x1

.field public static final CO_CONCENTRATION_NO_VALUE:I = 0x0

.field private static final DBG:Z = false

.field public static final FAN_DIRECTION_DEFROST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_DIRECTION_FACE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_DIRECTION_FLOOR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_POSITION_DEFROST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_POSITION_DEFROST_AND_FLOOR:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_POSITION_FACE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_POSITION_FACE_AND_FLOOR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FAN_POSITION_FLOOR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HVAC_AC_ON:I = 0x1

.field public static final HVAC_AIR_QUALITY_LEVEL_0_PERCENT:I = 0x0

.field public static final HVAC_AIR_QUALITY_LEVEL_100_PERCENT:I = 0xa

.field public static final HVAC_AIR_QUALITY_LEVEL_10_PERCENT:I = 0x1

.field public static final HVAC_AIR_QUALITY_LEVEL_20_PERCENT:I = 0x2

.field public static final HVAC_AIR_QUALITY_LEVEL_30_PERCENT:I = 0x3

.field public static final HVAC_AIR_QUALITY_LEVEL_40_PERCENT:I = 0x5

.field public static final HVAC_AIR_QUALITY_LEVEL_50_PERCENT:I = 0x5

.field public static final HVAC_AIR_QUALITY_LEVEL_60_PERCENT:I = 0x6

.field public static final HVAC_AIR_QUALITY_LEVEL_70_PERCENT:I = 0x7

.field public static final HVAC_AIR_QUALITY_LEVEL_80_PERCENT:I = 0x8

.field public static final HVAC_AIR_QUALITY_LEVEL_90_PERCENT:I = 0x9

.field public static final HVAC_AIR_QUALITY_LEVEL_ERROR:I = 0xf

.field public static final HVAC_AIR_QUALITY_LEVEL_INIT:I = 0xe

.field public static final HVAC_AIR_QUALITY_LEVEL_NOT_MOUNTED:I = 0xd

.field public static final HVAC_AIR_QUALITY_OUTSIDE_BAD:I = 0x1

.field public static final HVAC_AIR_QUALITY_OUTSIDE_GOOD:I = 0x0

.field public static final HVAC_AQS_SENSITIVITY_HIGHT:I = 0x3

.field public static final HVAC_AQS_SENSITIVITY_LOW:I = 0x1

.field public static final HVAC_AQS_SENSITIVITY_MIDDLE:I = 0x2

.field public static final HVAC_AUTO_AC_HEAT_NATURE_ON:I = 0x4

.field public static final HVAC_AUTO_BLOW_LEVEL_1:I = 0x1

.field public static final HVAC_AUTO_BLOW_LEVEL_2:I = 0x2

.field public static final HVAC_AUTO_BLOW_LEVEL_3:I = 0x3

.field public static final HVAC_BLOW_WIND_LEVEL_MAX:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HVAC_BLOW_WIND_LEVEL_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HVAC_BLOW_WIND_MODE_FACE:I = 0x2

.field public static final HVAC_BLOW_WIND_MODE_FOOT:I = 0x3

.field public static final HVAC_BLOW_WIND_MODE_WINDSHIELD:I = 0x1

.field public static final HVAC_CIRCULATION_10M:I = 0x1

.field public static final HVAC_CIRCULATION_15M:I = 0x2

.field public static final HVAC_CIRCULATION_20M:I = 0x3

.field public static final HVAC_CIRCULATION_ERROR:I = 0x7

.field public static final HVAC_CIRCULATION_OFF:I = 0x6

.field public static final HVAC_CIRCULATION_STATUS_AUTO:I = 0x6

.field public static final HVAC_CIRCULATION_STATUS_ERROR:I = 0x7

.field public static final HVAC_CIRCULATION_STATUS_INNER:I = 0x1

.field public static final HVAC_CIRCULATION_STATUS_INVALID:I = 0x0

.field public static final HVAC_CIRCULATION_STATUS_OUTSIDE:I = 0x2

.field public static final HVAC_COMMON_ERROR:I = 0x1

.field public static final HVAC_DENOISE_FAILED:I = 0x3

.field public static final HVAC_DENOISE_HIGH_PRIORITY_CMD:I = 0x4

.field public static final HVAC_DENOISE_NO_COMMOND:I = 0x0

.field public static final HVAC_DENOISE_PROCESSING:I = 0x1

.field public static final HVAC_DENOISE_SUCCESS:I = 0x2

.field public static final HVAC_EAV_POSITION_1:I = 0x1

.field public static final HVAC_EAV_POSITION_2:I = 0x2

.field public static final HVAC_EAV_POSITION_3:I = 0x3

.field public static final HVAC_EAV_POSITION_4:I = 0x4

.field public static final HVAC_EAV_POSITION_5:I = 0x5

.field public static final HVAC_EAV_POSITION_6:I = 0x6

.field public static final HVAC_EAV_POSITION_7:I = 0x7

.field public static final HVAC_EAV_POSITION_ERROR:I = 0xf

.field public static final HVAC_EAV_POSITION_OFF:I = 0xe

.field public static final HVAC_EAV_POSITION_OPEN:I = 0xd

.field public static final HVAC_EAV_WINMODE_AVOID:I = 0x4

.field public static final HVAC_EAV_WINMODE_FREE:I = 0x3

.field public static final HVAC_EAV_WINMODE_INTELLIGENT:I = 0x5

.field public static final HVAC_EAV_WINMODE_MIRROR:I = 0x2

.field public static final HVAC_EAV_WINMODE_NODISPLAY:I = 0x6

.field public static final HVAC_EAV_WINMODE_SINGLE:I = 0x1

.field public static final HVAC_FROGING_RISK_HIGH:I = 0x1

.field public static final HVAC_FROGING_RISK_NORMAL:I = 0x0

.field public static final HVAC_GET_BLOW_WIND_MODE_AUTOMODE:I = 0xe

.field public static final HVAC_GET_BLOW_WIND_MODE_AUTO_FDEFROST:I = 0x7

.field public static final HVAC_GET_BLOW_WIND_MODE_AUTO_FOOT_DEFROST:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HVAC_GET_BLOW_WIND_MODE_ERROR:I = 0xf

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE:I = 0x1

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_FOOT:I = 0x2

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_FOOT_WINDSHIELD:I = 0x9

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_WINDSHIELD:I = 0x8

.field public static final HVAC_GET_BLOW_WIND_MODE_FDEFROST:I = 0x5

.field public static final HVAC_GET_BLOW_WIND_MODE_FOOT:I = 0x3

.field public static final HVAC_GET_BLOW_WIND_MODE_FOOT_DEFROST:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HVAC_GET_BLOW_WIND_MODE_FOOT_WINDSHIELD:I = 0x4

.field public static final HVAC_GET_BLOW_WIND_MODE_WINDSHIELD:I = 0x6

.field public static final HVAC_HEAT_ON:I = 0x2

.field public static final HVAC_LEFT_SYNC_ON:I = 0x1

.field public static final HVAC_MACHINE_STATE_SWITCH_BUSY:I = 0x3

.field public static final HVAC_MACHINE_STATE_SWITCH_IDEL:I = 0x0

.field public static final HVAC_MACHINE_STATE_SWITCH_LOCAL:I = 0x1

.field public static final HVAC_MACHINE_STATE_SWITCH_REMOTE:I = 0x2

.field public static final HVAC_MEMORY_NO_REQ:I = 0x0

.field public static final HVAC_MEMORY_REQ:I = 0x1

.field public static final HVAC_NATURE_WIND_ON:I = 0x3

.field public static final HVAC_NORMAL:I = 0x0

.field public static final HVAC_OPT_SOURCE_INVALID:I = 0x0

.field public static final HVAC_OPT_SOURCE_MANUAL:I = 0x1

.field public static final HVAC_PM25_LEVEL_BAD:I = 0x4

.field public static final HVAC_PM25_LEVEL_BAD_SERIOUS:I = 0x6

.field public static final HVAC_PM25_LEVEL_EXCELLENT:I = 0x1

.field public static final HVAC_PM25_LEVEL_INVALID:I = 0x0

.field public static final HVAC_PM25_LEVEL_MIDDLE:I = 0x3

.field public static final HVAC_PM25_LEVEL_SERIOUS:I = 0x5

.field public static final HVAC_PM25_LEVEL_WELL:I = 0x2

.field public static final HVAC_RIGHT_SYNC_ON:I = 0x2

.field public static final HVAC_SET_BLOW_WIND_MODE_FACE:I = 0x1

.field public static final HVAC_SET_BLOW_WIND_MODE_FACE_FOOT:I = 0x2

.field public static final HVAC_SET_BLOW_WIND_MODE_FACE_FOOT_WINDSHIELD:I = 0x7

.field public static final HVAC_SET_BLOW_WIND_MODE_FACE_WINDSHIELD:I = 0x5

.field public static final HVAC_SET_BLOW_WIND_MODE_FOOT:I = 0x3

.field public static final HVAC_SET_BLOW_WIND_MODE_FOOT_WINDSHIELD:I = 0x4

.field public static final HVAC_SET_BLOW_WIND_MODE_WINDSHIELD:I = 0x6

.field public static final HVAC_SFS_CHANNEL_RESET_NO_ACTION:I = 0x0

.field public static final HVAC_SFS_CHANNEL_RESET_REQUEST:I = 0x1

.field public static final HVAC_STATUS_AC_OFF:I = 0x0

.field public static final HVAC_STATUS_AC_ON:I = 0x1

.field public static final HVAC_STATUS_AUTO:I = 0x1

.field public static final HVAC_STATUS_AUTO_AC_HEAT_NATURE_OFF:I = 0x6

.field public static final HVAC_STATUS_AUTO_AC_HEAT_NATURE_ON:I = 0x7

.field public static final HVAC_STATUS_ERROR:I = 0x2

.field public static final HVAC_STATUS_HEAT_OFF:I = 0x2

.field public static final HVAC_STATUS_HEAT_ON:I = 0x3

.field public static final HVAC_STATUS_MANUAL:I = 0x0

.field public static final HVAC_STATUS_NATURE_WIND_OFF:I = 0x4

.field public static final HVAC_STATUS_NATURE_WIND_ON:I = 0x5

.field public static final HVAC_STATUS_OFF:I = 0x0

.field public static final HVAC_STATUS_ON:I = 0x1

.field public static final HVAC_STATUS_PTC_OFF:I = 0x1

.field public static final HVAC_STATUS_PTC_ON:I = 0x2

.field public static final HVAC_STATUS_SELF_DRY_OFF:I = 0x1

.field public static final HVAC_STATUS_SELF_DRY_ON:I = 0x2

.field public static final HVAC_SYNC_MODE_OFF:I = 0x3

.field public static final HVAC_SYNC_NO_OPERATION:I = 0x0

.field public static final HVAC_SYS_DISABLE:I = 0x2

.field public static final HVAC_SYS_INVALID:I = 0x3

.field public static final HVAC_SYS_LIMIT:I = 0x1

.field public static final HVAC_SYS_NO_ERROR:I = 0x0

.field public static final HVAC_VEHICLE_SERVICE_REQ_CDU:J = 0x1000001L

.field public static final HVAC_WINDCOLOR_COLD:I = 0x2

.field public static final HVAC_WINDCOLOR_ERROR:I = 0x7

.field public static final HVAC_WINDCOLOR_HOT:I = 0x3

.field public static final HVAC_WINDCOLOR_INVALID:I = 0x0

.field public static final HVAC_WINDCOLOR_NATURE:I = 0x1

.field public static final HVAC_WIND_MODE_INVALID:I = 0x0

.field public static final HVAC_WIND_OFF:I = 0xe0

.field public static final HVAC_WIND_ON:I = 0xe1

.field public static final HVAC_WIND_SPEED_1:I = 0x1

.field public static final HVAC_WIND_SPEED_10:I = 0xa

.field public static final HVAC_WIND_SPEED_2:I = 0x2

.field public static final HVAC_WIND_SPEED_3:I = 0x3

.field public static final HVAC_WIND_SPEED_4:I = 0x4

.field public static final HVAC_WIND_SPEED_5:I = 0x5

.field public static final HVAC_WIND_SPEED_6:I = 0x6

.field public static final HVAC_WIND_SPEED_7:I = 0x7

.field public static final HVAC_WIND_SPEED_8:I = 0x8

.field public static final HVAC_WIND_SPEED_9:I = 0x9

.field public static final HVAC_WIND_SPEED_AUTO:I = 0xe

.field public static final HVAC_WIND_SPEED_ERROR:I = 0xf

.field public static final HVAC_WIND_SPEED_OFF:I = 0x0

.field public static final ID_ENV_OUTSIDE_TEMPERATURE:I = 0x11600703

.field public static final ID_HAVC_COMPRESSOR_COMSUME_PWR:I = 0x21401a46

.field public static final ID_HAVC_HVH_COMSUME_PWR:I = 0x21401a47

.field public static final ID_HVAC_820A_COOLING_REQTEMP:I = 0x21601a22
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_HVAC_ACP_ECOMP_ACT_SPD:I = 0x21401a74

.field public static final ID_HVAC_AC_CTRL_TYPE:I = 0x21401a34

.field public static final ID_HVAC_AFTER_BLOW:I = 0x21401a2c

.field public static final ID_HVAC_AIRCON_SOA_CONNECTED:I = 0x21409280

.field public static final ID_HVAC_AIRDISTRIBUTION_AUTO_ST:I = 0x21401a33

.field public static final ID_HVAC_AIRINTAKE_AUTO_ST:I = 0x21401a31

.field public static final ID_HVAC_AIR_CIRCULATION_TYPE:I = 0x21401a36

.field public static final ID_HVAC_AMP_COOLING_REQTEMP:I = 0x21601a23
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_HVAC_AMP_TEMPRISE_SPEED:I = 0x21401a24
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_HVAC_AQS:I = 0x21401a18

.field public static final ID_HVAC_AQSSENSITIVITY:I = 0x21401a19

.field public static final ID_HVAC_AUTO_DEFOG_SET:I = 0x21401a3d

.field public static final ID_HVAC_AUTO_DEFOG_WORK_ST:I = 0x21401a4a

.field public static final ID_HVAC_BLOWER_CTRL_TYPE:I = 0x21401a35

.field public static final ID_HVAC_BLOWER_MODE:I = 0x21401a21

.field public static final ID_HVAC_CENTER_HORZ:I = 0x21401a76

.field public static final ID_HVAC_CENTER_VERT:I = 0x21401a77

.field public static final ID_HVAC_CIRCULATION_PERIOD_SET:I = 0x21401a1f

.field public static final ID_HVAC_COOLING_SYS_ERR:I = 0x21401a79

.field public static final ID_HVAC_CO_CONST:I = 0x21401a3f

.field public static final ID_HVAC_DEMISTER_SOA_CONNECTED:I = 0x21409281

.field public static final ID_HVAC_DEODORIZE:I = 0x21401a3a

.field public static final ID_HVAC_DISINF_SW:I = 0x21401a40

.field public static final ID_HVAC_DRIVERSEAT_TEMP_DOWN:I = 0x21401a0a

.field public static final ID_HVAC_DRIVERSEAT_TEMP_UP:I = 0x21401a09

.field public static final ID_HVAC_DRV_LEFTHORZ:I = 0x21401a10

.field public static final ID_HVAC_DRV_LEFTVERT:I = 0x21401a11

.field public static final ID_HVAC_DRV_RIGHTHORZ:I = 0x21401a12

.field public static final ID_HVAC_DRV_RIGHTVERT:I = 0x21401a13

.field public static final ID_HVAC_DRV_WINDMODE:I = 0x21401a1c

.field public static final ID_HVAC_EAVNATURAL_WIND:I = 0x21401a78

.field public static final ID_HVAC_EAVSWEEP_WIND:I = 0x21401a1a

.field public static final ID_HVAC_ECON:I = 0x21401a1b

.field public static final ID_HVAC_ERROR:I = 0x21401a30

.field public static final ID_HVAC_EXT_VOICE_FAN_DENOISE:I = 0x21401a7b

.field public static final ID_HVAC_FAN_AUTO_CONCTRL_ST:I = 0x21401a32

.field public static final ID_HVAC_FAN_DUTY_CYCLE:I = 0x21401a75

.field public static final ID_HVAC_FAN_SPEED_DOWN:I = 0x21401a08

.field public static final ID_HVAC_FAN_SPEED_UP:I = 0x21401a07

.field public static final ID_HVAC_FROGING_RISK:I = 0x21401a41

.field public static final ID_HVAC_HEATING_SYS_ERR:I = 0x21401a7a

.field public static final ID_HVAC_INNER_TEMPERATURE:I = 0x21601a2d

.field public static final ID_HVAC_IONIZER:I = 0x21401a1e

.field public static final ID_HVAC_LEFT_SYNC:I = 0x21401a0e

.field public static final ID_HVAC_MACHINE_STATE_SWITCH:I = 0x21401a5e

.field public static final ID_HVAC_MAX_COOLING:I = 0x21401a3c

.field public static final ID_HVAC_MAX_WARMING:I = 0x21401a3b

.field public static final ID_HVAC_NEW_FRESH_SW:I = 0x21401a5c

.field public static final ID_HVAC_PM25:I = 0x21401a04

.field public static final ID_HVAC_PSNSEAT_TEMP_DOWN:I = 0x21401a0c

.field public static final ID_HVAC_PSNSEAT_TEMP_UP:I = 0x21401a0b

.field public static final ID_HVAC_PSN_LEFTHORZ:I = 0x21401a14

.field public static final ID_HVAC_PSN_LEFTVERT:I = 0x21401a15

.field public static final ID_HVAC_PSN_RIGHTHORZ:I = 0x21401a16

.field public static final ID_HVAC_PSN_RIGHTVERT:I = 0x21401a17

.field public static final ID_HVAC_PSN_SMART_VENT_ST:I = 0x21401a60

.field public static final ID_HVAC_PSN_WINDMODE:I = 0x21401a1d

.field public static final ID_HVAC_PTC_ST:I = 0x21401a2b

.field public static final ID_HVAC_REAR_AIRDISTRIBUTION_AUTO_ST:I = 0x21401a54

.field public static final ID_HVAC_REAR_AUTO_ON_XP:I = 0x21401a52

.field public static final ID_HVAC_REAR_BLOWER_MODE:I = 0x21401a48

.field public static final ID_HVAC_REAR_EAVSWEEP_WIND:I = 0x21401a67

.field public static final ID_HVAC_REAR_FAN_AUTO_CONCTRL_ST:I = 0x21401a53

.field public static final ID_HVAC_REAR_FAN_DIRECTION:I = 0x21401a49

.field public static final ID_HVAC_REAR_FAN_INSENVENT:I = 0x21401a5d

.field public static final ID_HVAC_REAR_FAN_SPEED:I = 0x21401a57

.field public static final ID_HVAC_REAR_FAN_SPEED_DOWN:I = 0x21401a56

.field public static final ID_HVAC_REAR_FAN_SPEED_UP:I = 0x21401a55

.field public static final ID_HVAC_REAR_LEFTHORZ:I = 0x21401a61

.field public static final ID_HVAC_REAR_LEFTVERT:I = 0x21401a62

.field public static final ID_HVAC_REAR_LEFT_WINDMODE:I = 0x21401a65

.field public static final ID_HVAC_REAR_POWER_ON_XP:I = 0x21401a4b

.field public static final ID_HVAC_REAR_POWER_ON_XP_WITH_OPT:I = 0x21411a68

.field public static final ID_HVAC_REAR_RIGHTHORZ:I = 0x21401a63

.field public static final ID_HVAC_REAR_RIGHTVERT:I = 0x21401a64

.field public static final ID_HVAC_REAR_RIGHT_WINDMODE:I = 0x21401a66

.field public static final ID_HVAC_RIGHT_SYNC:I = 0x21401a0f

.field public static final ID_HVAC_SECROWL_TEMPE_SET:I = 0x21601a50

.field public static final ID_HVAC_SECROWL_TEMP_DOWN:I = 0x21401a4d

.field public static final ID_HVAC_SECROWL_TEMP_UP:I = 0x21401a4c

.field public static final ID_HVAC_SECROWR_TEMPE_SET:I = 0x21601a51

.field public static final ID_HVAC_SECROWR_TEMP_DOWN:I = 0x21401a4f

.field public static final ID_HVAC_SECROWR_TEMP_UP:I = 0x21401a4e

.field public static final ID_HVAC_SETTEMP_SYNCST:I = 0x21401a0d

.field public static final ID_HVAC_SFS_CH1_EXPIRY:I = 0x21401a6e

.field public static final ID_HVAC_SFS_CH1_LEFTOVER:I = 0x21401a6a

.field public static final ID_HVAC_SFS_CH1_RESET_REQ:I = 0x21401a43

.field public static final ID_HVAC_SFS_CH2_EXPIRY:I = 0x21401a6f

.field public static final ID_HVAC_SFS_CH2_LEFTOVER:I = 0x21401a6b

.field public static final ID_HVAC_SFS_CH2_RESET_REQ:I = 0x21401a44

.field public static final ID_HVAC_SFS_CH3_EXPIRY:I = 0x21401a70

.field public static final ID_HVAC_SFS_CH3_LEFTOVER:I = 0x21401a6c

.field public static final ID_HVAC_SFS_CH3_RESET_REQ:I = 0x21401a45

.field public static final ID_HVAC_SFS_CH_ALL:I = 0x21411a38

.field public static final ID_HVAC_SFS_CON_ST:I = 0x21401a3e

.field public static final ID_HVAC_SFS_EPROM_ERR:I = 0x21401a69

.field public static final ID_HVAC_SFS_LIN_ERR:I = 0x21401a71

.field public static final ID_HVAC_SFS_MODE:I = 0x21401a42
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_HVAC_SFS_SW_ST:I = 0x21401a37

.field public static final ID_HVAC_SFS_TASTE_SET:I = 0x21401a39

.field public static final ID_HVAC_THIROW_BLOWER_MODE:I = 0x21401a5b

.field public static final ID_HVAC_THIROW_TEMPE_SET:I = 0x21601a5a

.field public static final ID_HVAC_THIROW_TEMP_DOWN:I = 0x21401a59

.field public static final ID_HVAC_THIROW_TEMP_UP:I = 0x21401a58

.field public static final ID_HVAC_VEHICLE_SERVICE_USERID:I = 0x21501a5f

.field public static final ID_HVAC_VENTILATION_SOA_CONNECTED:I = 0x21409282

.field public static final ID_HVAC_WINDMODE_COLOUR:I = 0x21401a20

.field public static final ID_MIRROR_DEFROSTER_ON:I = 0x1440050c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_OUTSIDE_AIR_TEMP:I = 0x11600703
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_STEERING_WHEEL_HEAT:I = 0x1140050d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TEMPERATURE_DISPLAY_UNITS:I = 0x1140050e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_WINDOW_DEFROSTER_ON:I = 0x21401a26

.field public static final ID_ZONED_AC_ON:I = 0x21401a27

.field public static final ID_ZONED_AIR_RECIRCULATION_ON:I = 0x15400508

.field public static final ID_ZONED_AUTOMATIC_MODE_ON:I = 0x21401a29

.field public static final ID_ZONED_DUAL_ZONE_ON:I = 0x15200509
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_FAN_DIRECTION:I = 0x15400501
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_FAN_DIRECTION_AVAILABLE:I = 0x15410511
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_FAN_POSITION:I = 0x15400501

.field public static final ID_ZONED_FAN_SPEED_RPM:I = 0x1540050f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_FAN_SPEED_SETPOINT:I = 0x15400500

.field public static final ID_ZONED_HVAC_AUTO_RECIRC_ON:I = 0x15200512
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_HVAC_POWER_ON:I = 0x21401a2a

.field public static final ID_ZONED_HVAC_POWER_ON_MEMORY:I = 0x21701a6d

.field public static final ID_ZONED_MAX_AC_ON:I = 0x15200506
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_MAX_DEFROST_ON:I = 0x15200507
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_SEAT_TEMP:I = 0x1540050b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_TEMP_ACTUAL:I = 0x15600502
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_ZONED_TEMP_SETPOINT:I = 0x15600503

.field public static final ID_ZONE_HVAC_AIR_QUALITY_OUTSIDE:I = 0x21401a06

.field public static final ID_ZONE_HVAC_AIR_QUALITY_OUTSIDE_LEVEL:I = 0x21401a05

.field public static final ID_ZONE_HVAC_BLW_COMFORT_CFG:I = 0x21401a03

.field public static final ID_ZONE_HVAC_PM25_AIR_PURGE:I = 0x21401a01

.field public static final ID_ZONE_HVAC_TEMPERATURE_PSN_SET:I = 0x21601a02

.field public static final INNER_TEMP_INVALID:F = 87.5f

.field public static final OUTER_TEMP_INVALID:F = 87.5f

.field public static final PM25_VALUE_INVALID:I = 0x3ff

.field public static final SFS_CHANNEL_1:I = 0x0

.field public static final SFS_CHANNEL_2:I = 0x1

.field public static final SFS_CHANNEL_3:I = 0x2

.field public static final SFS_CHANNEL_CLOSE:I = 0x3

.field public static final SFS_CONCENTRATION_CLOSED:I = 0x0

.field public static final SFS_CONCENTRATION_HIGH:I = 0x2

.field public static final SFS_CONCENTRATION_LOW:I = 0x1

.field public static final SFS_CONCENTRATION_MIDDLE:I = 0x3

.field public static final SFS_EXPIRY_ACTIVE:I = 0x1

.field public static final SFS_EXPIRY_NONE:I = 0x0

.field public static final SFS_LEFTOVER_VALUE_INIT:I = 0x7e

.field public static final SFS_LEFTOVER_VALUE_INVALID:I = 0x7f

.field public static final SFS_LEFTOVER_VALUE_NO_CALCULABLE:I = 0x7d

.field public static final SFS_RESET_RESULT_FAIL:I = 0x3

.field public static final SFS_RESET_RESULT_NONE:I = 0x0

.field public static final SFS_RESET_RESULT_SUCCESS:I = 0x2

.field public static final SFS_RESET_RESULT_WRITING:I = 0x1

.field public static final SFS_TYPE_1:I = 0x1

.field public static final SFS_TYPE_10:I = 0xa

.field public static final SFS_TYPE_11:I = 0xb

.field public static final SFS_TYPE_2:I = 0x2

.field public static final SFS_TYPE_3:I = 0x3

.field public static final SFS_TYPE_4:I = 0x4

.field public static final SFS_TYPE_5:I = 0x5

.field public static final SFS_TYPE_6:I = 0x6

.field public static final SFS_TYPE_7:I = 0x7

.field public static final SFS_TYPE_8:I = 0x8

.field public static final SFS_TYPE_9:I = 0x9

.field public static final SFS_TYPE_INVALID:I = 0x0

.field public static final SFS_TYPE_NULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOA_CONNECT_STATUS_CONNECTED:I = 0x1

.field public static final SOA_CONNECT_STATUS_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarHvacManager"


# instance fields
.field private final mHvacPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "CarHvacManager"

    .line 2911
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 2668
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x8a

    new-array p2, p2, [Ljava/lang/Integer;

    const v1, 0x1440050c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const v0, 0x1140050d

    .line 2669
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const v0, 0x11600703

    .line 2670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const v1, 0x1140050e

    .line 2671
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, p2, v2

    const v1, 0x15600503

    .line 2672
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, p2, v2

    const v1, 0x15600502

    .line 2673
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, p2, v2

    const v1, 0x21401a2a

    .line 2674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, p2, v2

    const v2, 0x21701a6d

    .line 2675
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, p2, v3

    const v2, 0x15400500

    .line 2676
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, p2, v3

    const v2, 0x1540050f

    .line 2677
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, p2, v3

    const v2, 0x15410511

    .line 2678
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, p2, v3

    const v2, 0x15400501

    .line 2679
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, p2, v3

    const v3, 0x1540050b

    .line 2680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, p2, v4

    const/16 v3, 0xd

    aput-object v2, p2, v3

    const v2, 0x21401a27

    .line 2682
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, p2, v3

    const v2, 0x21401a29

    .line 2683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, p2, v3

    const v2, 0x15400508

    .line 2684
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, p2, v3

    const v2, 0x15200506

    .line 2685
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, p2, v3

    const v2, 0x15200509

    .line 2686
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, p2, v3

    const v2, 0x15200507

    .line 2687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, p2, v3

    const/16 v2, 0x14

    aput-object v1, p2, v2

    const v1, 0x15200512

    .line 2689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, p2, v2

    const v1, 0x21401a26

    .line 2690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, p2, v2

    const v1, 0x21601a02

    .line 2691
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, p2, v2

    const v1, 0x21401a01

    .line 2692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, p2, v2

    const v1, 0x21401a03

    .line 2693
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, p2, v2

    const v1, 0x21401a06

    .line 2694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, p2, v2

    const v1, 0x21401a05

    .line 2695
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, p2, v2

    const v1, 0x21601a2d

    .line 2696
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, p2, v2

    const v1, 0x21401a07

    .line 2697
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, p2, v2

    const v1, 0x21401a08

    .line 2698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, p2, v2

    const v1, 0x21401a09

    .line 2699
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, p2, v2

    const v1, 0x21401a0a

    .line 2700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, p2, v2

    const v1, 0x21401a0b

    .line 2701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, p2, v2

    const v1, 0x21401a0c

    .line 2702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, p2, v2

    const v1, 0x21401a0e

    .line 2703
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, p2, v2

    const v1, 0x21401a0f

    .line 2704
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, p2, v2

    const v1, 0x21401a10

    .line 2705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, p2, v2

    const v1, 0x21401a11

    .line 2706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, p2, v2

    const v1, 0x21401a12

    .line 2707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, p2, v2

    const v1, 0x21401a13

    .line 2708
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, p2, v2

    const v1, 0x21401a14

    .line 2709
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, p2, v2

    const v1, 0x21401a15

    .line 2710
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, p2, v2

    const v1, 0x21401a16

    .line 2711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, p2, v2

    const v1, 0x21401a17

    .line 2712
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, p2, v2

    const v1, 0x21401a76

    .line 2713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, p2, v2

    const v1, 0x21401a77

    .line 2714
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, p2, v2

    const v1, 0x21401a18

    .line 2715
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, p2, v2

    const v1, 0x21401a19

    .line 2716
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, p2, v2

    const v1, 0x21401a1a

    .line 2717
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, p2, v2

    const v1, 0x21401a1b

    .line 2718
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, p2, v2

    const v1, 0x21401a1c

    .line 2719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, p2, v2

    const v1, 0x21401a1d

    .line 2720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, p2, v2

    const v1, 0x21401a1e

    .line 2721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, p2, v2

    const v1, 0x21401a1f

    .line 2722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, p2, v2

    const v1, 0x21401a20

    .line 2723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, p2, v2

    const v1, 0x21401a21

    .line 2724
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, p2, v2

    const/16 v1, 0x39

    aput-object v0, p2, v1

    const v0, 0x21401a04

    .line 2726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3a

    aput-object v0, p2, v1

    const v0, 0x21601a22

    .line 2727
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3b

    aput-object v0, p2, v1

    const v0, 0x21601a23

    .line 2728
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    aput-object v0, p2, v1

    const v0, 0x21401a24

    .line 2729
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3d

    aput-object v0, p2, v1

    const v0, 0x21401a0d

    .line 2730
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3e

    aput-object v0, p2, v1

    const v0, 0x21401a2b

    .line 2731
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f

    aput-object v0, p2, v1

    const v0, 0x21401a2c

    .line 2732
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x40

    aput-object v0, p2, v1

    const v0, 0x21401a30

    .line 2733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x41

    aput-object v0, p2, v1

    const v0, 0x21401a31

    .line 2734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x42

    aput-object v0, p2, v1

    const v0, 0x21401a32

    .line 2735
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x43

    aput-object v0, p2, v1

    const v0, 0x21401a33

    .line 2736
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x44

    aput-object v0, p2, v1

    const v0, 0x21401a34

    .line 2737
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x45

    aput-object v0, p2, v1

    const v0, 0x21401a35

    .line 2738
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x46

    aput-object v0, p2, v1

    const v0, 0x21401a36

    .line 2739
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x47

    aput-object v0, p2, v1

    const v0, 0x21401a37

    .line 2740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x48

    aput-object v0, p2, v1

    const v0, 0x21411a38

    .line 2741
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x49

    aput-object v0, p2, v1

    const v0, 0x21401a39

    .line 2742
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4a

    aput-object v0, p2, v1

    const v0, 0x21401a3a

    .line 2743
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4b

    aput-object v0, p2, v1

    const v0, 0x21401a3b

    .line 2744
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4c

    aput-object v0, p2, v1

    const v0, 0x21401a3c

    .line 2745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4d

    aput-object v0, p2, v1

    const v0, 0x21401a3d

    .line 2746
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4e

    aput-object v0, p2, v1

    const v0, 0x21401a4a

    .line 2747
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4f

    aput-object v0, p2, v1

    const v0, 0x21401a3e

    .line 2748
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x50

    aput-object v0, p2, v1

    const v0, 0x21401a3f

    .line 2749
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x51

    aput-object v0, p2, v1

    const v0, 0x21401a40

    .line 2750
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x52

    aput-object v0, p2, v1

    const v0, 0x21401a41

    .line 2751
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x53

    aput-object v0, p2, v1

    const v0, 0x21401a42

    .line 2752
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x54

    aput-object v0, p2, v1

    const v0, 0x21401a43

    .line 2753
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x55

    aput-object v0, p2, v1

    const v0, 0x21401a44

    .line 2754
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x56

    aput-object v0, p2, v1

    const v0, 0x21401a45

    .line 2755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x57

    aput-object v0, p2, v1

    const v0, 0x21401a6a

    .line 2756
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x58

    aput-object v0, p2, v1

    const v0, 0x21401a6b

    .line 2757
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x59

    aput-object v0, p2, v1

    const v0, 0x21401a6c

    .line 2758
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5a

    aput-object v0, p2, v1

    const v0, 0x21401a6e

    .line 2759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5b

    aput-object v0, p2, v1

    const v0, 0x21401a6f

    .line 2760
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5c

    aput-object v0, p2, v1

    const v0, 0x21401a70

    .line 2761
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5d

    aput-object v0, p2, v1

    const v0, 0x21401a71

    .line 2762
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5e

    aput-object v0, p2, v1

    const v0, 0x21401a69

    .line 2763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5f

    aput-object v0, p2, v1

    const v0, 0x21401a46

    .line 2764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x60

    aput-object v0, p2, v1

    const v0, 0x21401a47

    .line 2765
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x61

    aput-object v0, p2, v1

    const v0, 0x21401a4b

    .line 2766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x62

    aput-object v0, p2, v1

    const v0, 0x21401a4c

    .line 2767
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x63

    aput-object v0, p2, v1

    const v0, 0x21401a4d

    .line 2768
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x64

    aput-object v0, p2, v1

    const v0, 0x21401a4e

    .line 2769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x65

    aput-object v0, p2, v1

    const v0, 0x21401a4f

    .line 2770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x66

    aput-object v0, p2, v1

    const v0, 0x21601a50

    .line 2771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x67

    aput-object v0, p2, v1

    const v0, 0x21601a51

    .line 2772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x68

    aput-object v0, p2, v1

    const v0, 0x21401a52

    .line 2773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x69

    aput-object v0, p2, v1

    const v0, 0x21401a53

    .line 2774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6a

    aput-object v0, p2, v1

    const v0, 0x21401a55

    .line 2775
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6b

    aput-object v0, p2, v1

    const v0, 0x21401a56

    .line 2776
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6c

    aput-object v0, p2, v1

    const v0, 0x21401a57

    .line 2777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6d

    aput-object v0, p2, v1

    const v0, 0x21401a58

    .line 2778
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6e

    aput-object v0, p2, v1

    const v0, 0x21401a59

    .line 2779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x6f

    aput-object v0, p2, v1

    const v0, 0x21601a5a

    .line 2780
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x70

    aput-object v0, p2, v1

    const v0, 0x21401a5b

    .line 2781
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x71

    aput-object v0, p2, v1

    const v0, 0x21401a48

    .line 2782
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x72

    aput-object v0, p2, v1

    const v0, 0x21401a49

    .line 2783
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x73

    aput-object v0, p2, v1

    const v0, 0x21401a5c

    .line 2784
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x74

    aput-object v0, p2, v1

    const v0, 0x21401a5d

    .line 2785
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x75

    aput-object v0, p2, v1

    const v0, 0x21401a5e

    .line 2786
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x76

    aput-object v0, p2, v1

    const v0, 0x21501a5f

    .line 2787
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x77

    aput-object v0, p2, v1

    const v0, 0x21401a54

    .line 2788
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x78

    aput-object v0, p2, v1

    const v0, 0x21401a61

    .line 2789
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x79

    aput-object v0, p2, v1

    const v0, 0x21401a62

    .line 2790
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7a

    aput-object v0, p2, v1

    const v0, 0x21401a63

    .line 2791
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7b

    aput-object v0, p2, v1

    const v0, 0x21401a64

    .line 2792
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7c

    aput-object v0, p2, v1

    const v0, 0x21401a65

    .line 2793
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7d

    aput-object v0, p2, v1

    const v0, 0x21401a66

    .line 2794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7e

    aput-object v0, p2, v1

    const v0, 0x21401a67

    .line 2795
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7f

    aput-object v0, p2, v1

    const v0, 0x21411a68

    .line 2796
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    aput-object v0, p2, v1

    const v0, 0x21401a74

    .line 2797
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x81

    aput-object v0, p2, v1

    const v0, 0x21401a75

    .line 2798
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x82

    aput-object v0, p2, v1

    const v0, 0x21409280

    .line 2799
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x83

    aput-object v0, p2, v1

    const v0, 0x21409282

    .line 2800
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x84

    aput-object v0, p2, v1

    const v0, 0x21409281

    .line 2801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x85

    aput-object v0, p2, v1

    const v0, 0x21401a78

    .line 2802
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x86

    aput-object v0, p2, v1

    const v0, 0x21401a79

    .line 2803
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x87

    aput-object v0, p2, v1

    const v0, 0x21401a7a

    .line 2804
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x88

    aput-object v0, p2, v1

    const v0, 0x21401a7b

    .line 2805
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x89

    aput-object v0, p2, v1

    .line 2668
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/hvac/CarHvacManager;->mHvacPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 p3, 0x0

    const-string p4, "CarHvacManager"

    .line 2918
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 2668
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x8a

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x1440050c

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x1140050d

    .line 2669
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x11600703

    .line 2670
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p4, 0x1140050e

    .line 2671
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    aput-object p4, p2, p5

    const p4, 0x15600503

    .line 2672
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, p2, p5

    const p4, 0x15600502

    .line 2673
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, p2, p5

    const p4, 0x21401a2a

    .line 2674
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, p2, p5

    const p5, 0x21701a6d

    .line 2675
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v0, 0x7

    aput-object p5, p2, v0

    const p5, 0x15400500

    .line 2676
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x8

    aput-object p5, p2, v0

    const p5, 0x1540050f

    .line 2677
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x9

    aput-object p5, p2, v0

    const p5, 0x15410511

    .line 2678
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xa

    aput-object p5, p2, v0

    const p5, 0x15400501

    .line 2679
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xb

    aput-object p5, p2, v0

    const v0, 0x1540050b

    .line 2680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p2, v1

    const/16 v0, 0xd

    aput-object p5, p2, v0

    const p5, 0x21401a27

    .line 2682
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xe

    aput-object p5, p2, v0

    const p5, 0x21401a29

    .line 2683
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0xf

    aput-object p5, p2, v0

    const p5, 0x15400508

    .line 2684
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x10

    aput-object p5, p2, v0

    const p5, 0x15200506

    .line 2685
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x11

    aput-object p5, p2, v0

    const p5, 0x15200509

    .line 2686
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x12

    aput-object p5, p2, v0

    const p5, 0x15200507

    .line 2687
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x13

    aput-object p5, p2, v0

    const/16 p5, 0x14

    aput-object p4, p2, p5

    const p4, 0x15200512

    .line 2689
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x15

    aput-object p4, p2, p5

    const p4, 0x21401a26

    .line 2690
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x16

    aput-object p4, p2, p5

    const p4, 0x21601a02

    .line 2691
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x17

    aput-object p4, p2, p5

    const p4, 0x21401a01

    .line 2692
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x18

    aput-object p4, p2, p5

    const p4, 0x21401a03

    .line 2693
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x19

    aput-object p4, p2, p5

    const p4, 0x21401a06

    .line 2694
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1a

    aput-object p4, p2, p5

    const p4, 0x21401a05

    .line 2695
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1b

    aput-object p4, p2, p5

    const p4, 0x21601a2d

    .line 2696
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1c

    aput-object p4, p2, p5

    const p4, 0x21401a07

    .line 2697
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1d

    aput-object p4, p2, p5

    const p4, 0x21401a08

    .line 2698
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1e

    aput-object p4, p2, p5

    const p4, 0x21401a09

    .line 2699
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1f

    aput-object p4, p2, p5

    const p4, 0x21401a0a

    .line 2700
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x20

    aput-object p4, p2, p5

    const p4, 0x21401a0b

    .line 2701
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x21

    aput-object p4, p2, p5

    const p4, 0x21401a0c

    .line 2702
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x22

    aput-object p4, p2, p5

    const p4, 0x21401a0e

    .line 2703
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x23

    aput-object p4, p2, p5

    const p4, 0x21401a0f

    .line 2704
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x24

    aput-object p4, p2, p5

    const p4, 0x21401a10

    .line 2705
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x25

    aput-object p4, p2, p5

    const p4, 0x21401a11

    .line 2706
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x26

    aput-object p4, p2, p5

    const p4, 0x21401a12

    .line 2707
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x27

    aput-object p4, p2, p5

    const p4, 0x21401a13

    .line 2708
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x28

    aput-object p4, p2, p5

    const p4, 0x21401a14

    .line 2709
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x29

    aput-object p4, p2, p5

    const p4, 0x21401a15

    .line 2710
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2a

    aput-object p4, p2, p5

    const p4, 0x21401a16

    .line 2711
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2b

    aput-object p4, p2, p5

    const p4, 0x21401a17

    .line 2712
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2c

    aput-object p4, p2, p5

    const p4, 0x21401a76

    .line 2713
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2d

    aput-object p4, p2, p5

    const p4, 0x21401a77

    .line 2714
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2e

    aput-object p4, p2, p5

    const p4, 0x21401a18

    .line 2715
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2f

    aput-object p4, p2, p5

    const p4, 0x21401a19

    .line 2716
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x30

    aput-object p4, p2, p5

    const p4, 0x21401a1a

    .line 2717
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x31

    aput-object p4, p2, p5

    const p4, 0x21401a1b

    .line 2718
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x32

    aput-object p4, p2, p5

    const p4, 0x21401a1c

    .line 2719
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x33

    aput-object p4, p2, p5

    const p4, 0x21401a1d

    .line 2720
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x34

    aput-object p4, p2, p5

    const p4, 0x21401a1e

    .line 2721
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x35

    aput-object p4, p2, p5

    const p4, 0x21401a1f

    .line 2722
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x36

    aput-object p4, p2, p5

    const p4, 0x21401a20

    .line 2723
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x37

    aput-object p4, p2, p5

    const p4, 0x21401a21

    .line 2724
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x38

    aput-object p4, p2, p5

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x21401a04

    .line 2726
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21601a22

    .line 2727
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x21601a23

    .line 2728
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x21401a24

    .line 2729
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x21401a0d

    .line 2730
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x21401a2b

    .line 2731
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x21401a2c

    .line 2732
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x21401a30

    .line 2733
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x21401a31

    .line 2734
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21401a32

    .line 2735
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x21401a33

    .line 2736
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21401a34

    .line 2737
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x21401a35

    .line 2738
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x21401a36

    .line 2739
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x21401a37

    .line 2740
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x21411a38

    .line 2741
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x21401a39

    .line 2742
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x21401a3a

    .line 2743
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x21401a3b

    .line 2744
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x21401a3c

    .line 2745
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x21401a3d

    .line 2746
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    const p3, 0x21401a4a

    .line 2747
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4f

    aput-object p3, p2, p4

    const p3, 0x21401a3e

    .line 2748
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x50

    aput-object p3, p2, p4

    const p3, 0x21401a3f

    .line 2749
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x51

    aput-object p3, p2, p4

    const p3, 0x21401a40

    .line 2750
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x52

    aput-object p3, p2, p4

    const p3, 0x21401a41

    .line 2751
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    aput-object p3, p2, p4

    const p3, 0x21401a42

    .line 2752
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x54

    aput-object p3, p2, p4

    const p3, 0x21401a43

    .line 2753
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x55

    aput-object p3, p2, p4

    const p3, 0x21401a44

    .line 2754
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x56

    aput-object p3, p2, p4

    const p3, 0x21401a45

    .line 2755
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x57

    aput-object p3, p2, p4

    const p3, 0x21401a6a

    .line 2756
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x58

    aput-object p3, p2, p4

    const p3, 0x21401a6b

    .line 2757
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x59

    aput-object p3, p2, p4

    const p3, 0x21401a6c

    .line 2758
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5a

    aput-object p3, p2, p4

    const p3, 0x21401a6e

    .line 2759
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5b

    aput-object p3, p2, p4

    const p3, 0x21401a6f

    .line 2760
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5c

    aput-object p3, p2, p4

    const p3, 0x21401a70

    .line 2761
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5d

    aput-object p3, p2, p4

    const p3, 0x21401a71

    .line 2762
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5e

    aput-object p3, p2, p4

    const p3, 0x21401a69

    .line 2763
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f

    aput-object p3, p2, p4

    const p3, 0x21401a46

    .line 2764
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x60

    aput-object p3, p2, p4

    const p3, 0x21401a47

    .line 2765
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x61

    aput-object p3, p2, p4

    const p3, 0x21401a4b

    .line 2766
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x62

    aput-object p3, p2, p4

    const p3, 0x21401a4c

    .line 2767
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x63

    aput-object p3, p2, p4

    const p3, 0x21401a4d

    .line 2768
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    aput-object p3, p2, p4

    const p3, 0x21401a4e

    .line 2769
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x65

    aput-object p3, p2, p4

    const p3, 0x21401a4f

    .line 2770
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x66

    aput-object p3, p2, p4

    const p3, 0x21601a50

    .line 2771
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x67

    aput-object p3, p2, p4

    const p3, 0x21601a51

    .line 2772
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x68

    aput-object p3, p2, p4

    const p3, 0x21401a52

    .line 2773
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x69

    aput-object p3, p2, p4

    const p3, 0x21401a53

    .line 2774
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6a

    aput-object p3, p2, p4

    const p3, 0x21401a55

    .line 2775
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6b

    aput-object p3, p2, p4

    const p3, 0x21401a56

    .line 2776
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6c

    aput-object p3, p2, p4

    const p3, 0x21401a57

    .line 2777
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6d

    aput-object p3, p2, p4

    const p3, 0x21401a58

    .line 2778
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6e

    aput-object p3, p2, p4

    const p3, 0x21401a59

    .line 2779
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6f

    aput-object p3, p2, p4

    const p3, 0x21601a5a

    .line 2780
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x70

    aput-object p3, p2, p4

    const p3, 0x21401a5b

    .line 2781
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x71

    aput-object p3, p2, p4

    const p3, 0x21401a48

    .line 2782
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x72

    aput-object p3, p2, p4

    const p3, 0x21401a49

    .line 2783
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x73

    aput-object p3, p2, p4

    const p3, 0x21401a5c

    .line 2784
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x74

    aput-object p3, p2, p4

    const p3, 0x21401a5d

    .line 2785
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x75

    aput-object p3, p2, p4

    const p3, 0x21401a5e

    .line 2786
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x76

    aput-object p3, p2, p4

    const p3, 0x21501a5f

    .line 2787
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x77

    aput-object p3, p2, p4

    const p3, 0x21401a54

    .line 2788
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x78

    aput-object p3, p2, p4

    const p3, 0x21401a61

    .line 2789
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x79

    aput-object p3, p2, p4

    const p3, 0x21401a62

    .line 2790
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7a

    aput-object p3, p2, p4

    const p3, 0x21401a63

    .line 2791
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7b

    aput-object p3, p2, p4

    const p3, 0x21401a64

    .line 2792
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7c

    aput-object p3, p2, p4

    const p3, 0x21401a65

    .line 2793
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7d

    aput-object p3, p2, p4

    const p3, 0x21401a66

    .line 2794
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7e

    aput-object p3, p2, p4

    const p3, 0x21401a67

    .line 2795
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7f

    aput-object p3, p2, p4

    const p3, 0x21411a68

    .line 2796
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x80

    aput-object p3, p2, p4

    const p3, 0x21401a74

    .line 2797
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x81

    aput-object p3, p2, p4

    const p3, 0x21401a75

    .line 2798
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x82

    aput-object p3, p2, p4

    const p3, 0x21409280

    .line 2799
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x83

    aput-object p3, p2, p4

    const p3, 0x21409282

    .line 2800
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x84

    aput-object p3, p2, p4

    const p3, 0x21409281

    .line 2801
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x85

    aput-object p3, p2, p4

    const p3, 0x21401a78

    .line 2802
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x86

    aput-object p3, p2, p4

    const p3, 0x21401a79

    .line 2803
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x87

    aput-object p3, p2, p4

    const p3, 0x21401a7a

    .line 2804
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x88

    aput-object p3, p2, p4

    const p3, 0x21401a7b

    .line 2805
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x89

    aput-object p3, p2, p4

    .line 2668
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/hvac/CarHvacManager;->mHvacPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getHvacQualityInnerPm25Level(I)I
    .locals 1

    const/16 v0, 0x3ff

    if-eq p0, v0, :cond_6

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    if-gt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x64

    if-gt p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/16 v0, 0x96

    if-gt p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 v0, 0xc8

    if-gt p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/16 v0, 0x12c

    if-gt p0, v0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x6

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "hvac"

    return-object v0
.end method


# virtual methods
.method public getAcHeatNatureSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3065
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAcState()I

    move-result v0

    return v0
.end method

.method public getAcpEcompActSpd()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a74

    const/4 v1, 0x0

    .line 6241
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAirConditionerSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409280

    const/4 v1, 0x0

    .line 6271
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAirDistributionAutoControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4686
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirDistributionAutoControlStatus()I

    move-result v0

    return v0
.end method

.method public getAirInTakeAutoControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4654
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirInTakeAutoControlStatus()I

    move-result v0

    return v0
.end method

.method public getAqsModeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4455
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAqsSwitchState()I

    move-result v0

    return v0
.end method

.method public getAqsSensitivity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4186
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAqsSensitivity()I

    move-result v0

    return v0
.end method

.method public getAutoDefogSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4956
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAutoDefogSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAutoDefogWorkSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4972
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAutoDefogWorkSt()I

    move-result v0

    return v0
.end method

.method public getCenterWindHorPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a76

    const/4 v1, 0x0

    .line 4152
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCenterWindVerPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a77

    const/4 v1, 0x0

    .line 4103
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCirculationPeriod()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4303
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirCirculationPeriod()I

    move-result v0

    return v0
.end method

.method public getCoConcentrationStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5025
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacCoConcentrationStatus()I

    move-result v0

    return v0
.end method

.method public getCompressorConsumePower()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5241
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHavcCompressorConsumePower()I

    move-result v0

    return v0
.end method

.method public getDemisterSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409281

    const/4 v1, 0x0

    .line 6303
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDeodorizeSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4860
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDeodorizeSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getDisinfSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5041
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDisinfSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getDriverLeftWindHorPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3728
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDrvLeftFanHorPos()I

    move-result v0

    return v0
.end method

.method public getDriverLeftWindVerPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3775
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDrvLeftFanVerPos()I

    move-result v0

    return v0
.end method

.method public getDriverRightWindHorPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3821
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDrvRightFanHorPos()I

    move-result v0

    return v0
.end method

.method public getDriverRightWindVerPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3868
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDrvRightFanVerPos()I

    move-result v0

    return v0
.end method

.method public getEavDriverWindMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4226
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacEavDrvWindMode()I

    move-result v0

    return v0
.end method

.method public getEavPsnWindMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4265
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacEavPsnWindMode()I

    move-result v0

    return v0
.end method

.method public getEconModeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4521
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacEconState()I

    move-result v0

    return v0
.end method

.method public getFanDutyCycle()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a75

    const/4 v1, 0x0

    .line 6255
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFrogingRiskStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5057
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacFrogingRiskStatus()I

    move-result v0

    return v0
.end method

.method public getHVACFrontDefrostMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3314
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDefrostMode()I

    move-result v0

    return v0
.end method

.method public getHvacAcCtrlType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4702
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAcCtrlType()I

    move-result v0

    return v0
.end method

.method public getHvacAirCirculationType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4734
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirCirculationType()I

    move-result v0

    return v0
.end method

.method public getHvacAutoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3213
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAutoModeState()I

    move-result v0

    return v0
.end method

.method public getHvacAutoModeBlowLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3247
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAutoModePreference()I

    move-result v0

    return v0
.end method

.method public getHvacBlowerCtrlType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4718
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacBlowerCtrlType()I

    move-result v0

    return v0
.end method

.method public getHvacCirculationMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3282
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirCycleMode()I

    move-result v0

    return v0
.end method

.method public getHvacErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4638
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacErrorStatus()I

    move-result v0

    return v0
.end method

.method public getHvacExtVoiceFanDenoiseFb()I
    .locals 4

    const v0, 0x21401a7b

    const/4 v1, 0x0

    .line 6383
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHvacExtVoiceFanDenoiseFb throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarHvacManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getHvacInnerTemp()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3587
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacInnerTemp()F

    move-result v0

    return v0
.end method

.method public getHvacMachineStateSwitch()I
    .locals 3

    .line 5792
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacMachineStateSwitch()I

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

    .line 5794
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

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getHvacOutterTemp()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4356
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacExternalTemp()F

    move-result v0

    return v0
.end method

.method public getHvacPowerMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2991
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPowerState()I

    move-result v0

    return v0
.end method

.method public getHvacQualityInnerPm25Level()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3501
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPm25Value()I

    move-result v0

    invoke-static {v0}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityInnerPm25Level(I)I

    move-result v0

    return v0
.end method

.method public getHvacQualityInnerPm25Value()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3480
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPm25Value()I

    move-result v0

    return v0
.end method

.method public getHvacQualityOutsideLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3572
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacOutsideAirQualityLevel()I

    move-result v0

    return v0
.end method

.method public getHvacQualityOutsideStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3535
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mCduType:Ljava/lang/String;

    const-string v1, "Q5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mCduType:Ljava/lang/String;

    const-string v1, "Q2"

    .line 3536
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mCduType:Ljava/lang/String;

    const-string v1, "Q6"

    .line 3537
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3540
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacOutsideAirQualityLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 3538
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacOutsideAirQualityStatus()I

    move-result v0

    return v0
.end method

.method public getHvacQualityPurgeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3449
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAirPurgeSwitchState()I

    move-result v0

    return v0
.end method

.method public getHvacRearAutoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5558
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacRearAutoModeState()I

    move-result v0

    return v0
.end method

.method public getHvacRearWindLessSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5756
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacRearWindLessSwitch()I

    move-result v0

    return v0
.end method

.method public getHvacRearWindSpeedLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5656
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacRearFanSpeedLevel()I

    move-result v0

    return v0
.end method

.method public getHvacSysCoolingErrStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a79

    const/4 v1, 0x0

    .line 6321
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHvacSysHeatingErrStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a7a

    const/4 v1, 0x0

    .line 6339
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHvacTempAcMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3025
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacAcState()I

    move-result v0

    return v0
.end method

.method public getHvacTempDriverValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3131
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacDrvSeatTempValue()F

    move-result v0

    return v0
.end method

.method public getHvacTempPsnValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3181
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPsnSeatTempValue()F

    move-result v0

    return v0
.end method

.method public getHvacTempSecRowLeftValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5444
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacTempSecRowLeftValue()F

    move-result v0

    return v0
.end method

.method public getHvacTempSecRowRightValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5472
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacTempSecRowRightValue()F

    move-result v0

    return v0
.end method

.method public getHvacTempSyncMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4422
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacTempSyncMode()I

    move-result v0

    return v0
.end method

.method public getHvacTempThirdRowValue()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5526
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacTempThirdRowValue()F

    move-result v0

    return v0
.end method

.method public getHvacThirdRowWindBlowMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5692
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacThirdRowWindBlowMode()I

    move-result v0

    return v0
.end method

.method public getHvacVehicleServiceUserId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5812
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacVehicleServiceUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHvacWindBlowMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3362
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacFanPosition()I

    move-result v0

    return v0
.end method

.method public getHvacWindSpeedLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3433
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacFanSpeedLevel()I

    move-result v0

    return v0
.end method

.method public getHvhConsumePower()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5255
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHavcHvhConsumePower()I

    move-result v0

    return v0
.end method

.method public getLonizerModeSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4538
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacLonizerState()I

    move-result v0

    return v0
.end method

.method public getMaxHavcTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4622
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMaxHavcTemperature()I

    move-result v0

    return v0
.end method

.method public getMaxWindSpeedLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4604
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacMaxWindSpeedLevel()I

    move-result v0

    return v0
.end method

.method public getMinHavcTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4613
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMinHavcTemperature()I

    move-result v0

    return v0
.end method

.method public getMinWindSpeedLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4595
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacMinWindSpeedLevel()I

    move-result v0

    return v0
.end method

.method public getNaturalWindStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a78

    const/4 v1, 0x0

    .line 6227
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getNewFreshSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5724
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacNewFreshSwitchStatus()I

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

    .line 2935
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mHvacPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPsnLeftWindHorPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3914
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPsnLeftFanHorPos()I

    move-result v0

    return v0
.end method

.method public getPsnLeftWindVerPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3961
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPsnLeftFanVerPos()I

    move-result v0

    return v0
.end method

.method public getPsnRightWindHorPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4007
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPsnRightFanHorPos()I

    move-result v0

    return v0
.end method

.method public getPsnRightWindVerPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4054
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacPsnRightFanVerPos()I

    move-result v0

    return v0
.end method

.method public getRearAirDistributionAutoControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5590
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacRearAirDistributionAutoControlStatus()I

    move-result v0

    return v0
.end method

.method public getRearHvacPowerMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5344
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearHvacPowerState()I

    move-result v0

    return v0
.end method

.method public getRearHvacPowerModeWithOpt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5364
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearHvacPowerModeWithOpt()[I

    move-result-object v0

    return-object v0
.end method

.method public getRearHvacWindBlowMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5312
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearHvacFanPosition()I

    move-result v0

    return v0
.end method

.method public getRearLeftWindHorPos()I
    .locals 3

    .line 5855
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearLeftWindHorPos()I

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

    .line 5857
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearLeftWindHorPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    return v0
.end method

.method public getRearLeftWindMode()I
    .locals 3

    .line 6101
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearLeftWindMode()I

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

    .line 6103
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearLeftWindMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRearLeftWindVerPos()I
    .locals 3

    .line 5969
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearLeftWindVerPos()I

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

    .line 5971
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearLeftWindVerPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    return v0
.end method

.method public getRearRightWindHorPos()I
    .locals 3

    .line 5912
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearRightWindHorPos()I

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

    .line 5914
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearRightWindHorPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    return v0
.end method

.method public getRearRightWindMode()I
    .locals 3

    .line 6148
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearRightWindMode()I

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

    .line 6150
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearRightWindMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRearRightWindVerPos()I
    .locals 3

    .line 6026
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearRightWindVerPos()I

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

    .line 6028
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearRightWindVerPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    return v0
.end method

.method public getRearSweepWindStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6191
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearSweepWindStatus()I

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

    .line 6193
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRearSweepWindStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarHvacManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getRearWindSpeedAutoControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5574
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacRearWindSpeedAutoControlStatus()I

    move-result v0

    return v0
.end method

.method public getSelfDryStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4586
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSelfDrySwStatus()I

    move-result v0

    return v0
.end method

.method public getSfsChannel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4828
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSfsChannel()I

    move-result v0

    return v0
.end method

.method public getSfsChannelLeftOver(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x21401a6a

    .line 5188
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x21401a6b

    .line 5190
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x21401a6c

    .line 5192
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getSfsChannelResetResp(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x21401a43

    .line 5136
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x21401a44

    .line 5138
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x21401a45

    .line 5140
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getSfsConcentrationStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5008
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSfsConcentrationStatus()I

    move-result v0

    return v0
.end method

.method public getSfsEpromErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a69

    const/4 v1, 0x0

    .line 5095
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSfsExpirySt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x21401a6e

    .line 5221
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x21401a6f

    .line 5223
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x21401a70

    .line 5225
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getSfsLinErr()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a71

    const/4 v1, 0x0

    .line 5111
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSfsSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4767
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSfsSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getSfsTypeInChannels()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4793
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSfsTypeInChannels()[I

    move-result-object v0

    return-object v0
.end method

.method public getSweepWindStatusSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4488
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacSweepWindStatus()I

    move-result v0

    return v0
.end method

.method public getVentilationSoaConnectionStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409282

    const/4 v1, 0x0

    .line 6287
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWarpSpeedCoolingSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4924
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacWarpSpeedCoolingSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getWarpSpeedWarmingSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4892
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacWarpSpeedWarmingSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getWindModColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4322
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacTempColor()I

    move-result v0

    return v0
.end method

.method public getWindSpeedAutoControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4670
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHvacWindSpeedAutoControlStatus()I

    move-result v0

    return v0
.end method

.method public setAcHeatNatureButtonSt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3042
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAcEnabled(I)V

    return-void
.end method

.method public setAirDistributionMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4341
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAirDistributionMode(I)V

    return-void
.end method

.method public setAmpCoolingRequestTemp(F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4388
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpCoolingRequestTemp(F)V

    return-void
.end method

.method public setAmpTempRiseSpeedSt(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4404
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAmpTempRiseSpeedState(I)V

    return-void
.end method

.method public setAqsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4438
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAqsEnabled(I)V

    return-void
.end method

.method public setAqsSensitivity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4169
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAqsSensitivity(I)V

    return-void
.end method

.method public setAutoDefogSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4940
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAutoDefogSwitch(I)V

    return-void
.end method

.method public setCenterWindHorPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a76

    const/4 v1, 0x0

    .line 4128
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    return-void
.end method

.method public setCenterWindVerPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a77

    const/4 v1, 0x0

    .line 4079
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    return-void
.end method

.method public setCirculationPeriod(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4284
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAirCirculationPeriod(I)V

    return-void
.end method

.method public setDeodorizeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4844
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDeodorizeSwitch(I)V

    return-void
.end method

.method public setDriverLeftWindHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3704
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvLeftFanHorPos(I)V

    return-void
.end method

.method public setDriverLeftWindVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3752
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvLeftFanVerPos(I)V

    return-void
.end method

.method public setDriverRightWindHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3798
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvRightFanHorPos(I)V

    return-void
.end method

.method public setDriverRightWindVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3845
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvRightFanVerPos(I)V

    return-void
.end method

.method public setEavDriverWindMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4206
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacEavDrvWindMode(I)V

    return-void
.end method

.method public setEavPsnWindMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4245
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacEavPsnWindMode(I)V

    return-void
.end method

.method public setEconMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4504
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacEconEnabled(I)V

    return-void
.end method

.method public setHvacAutoMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3197
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAutoModeEnabled(I)V

    return-void
.end method

.method public setHvacAutoModeBlowLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3230
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAutoModePreference(I)V

    return-void
.end method

.method public setHvacCirculationMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3263
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAirCycleMode(I)V

    return-void
.end method

.method public setHvacDrvseatTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3639
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvSeatTempDec()V

    return-void
.end method

.method public setHvacDrvseatTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3626
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvSeatTempInc()V

    return-void
.end method

.method public setHvacExtVoiceFanDenoise(I)I
    .locals 2

    const v0, 0x21401a7b

    const/4 v1, 0x0

    .line 6357
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHvacExtVoiceFanDenoise throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setHvacFanSpeedDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3613
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanSpeedDec()V

    return-void
.end method

.method public setHvacFanSpeedInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3600
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanSpeedInc()V

    return-void
.end method

.method public setHvacFrontDefrostMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3298
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDefrostMode(I)V

    return-void
.end method

.method public setHvacMachineStateSwitch(I)V
    .locals 2

    .line 5771
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacMachineStateSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5773
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

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setHvacPowerMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2956
    invoke-virtual {p0, p1, v0}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacPowerMode(II)V

    return-void
.end method

.method public setHvacPowerMode(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2975
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPowerEnabled(II)V

    return-void
.end method

.method public setHvacPsnseatTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3665
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnSeatTempDec()V

    return-void
.end method

.method public setHvacPsnseatTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3652
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnSeatTempInc()V

    return-void
.end method

.method public setHvacQualityPurgeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3465
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAirPurgeEnabed(I)V

    return-void
.end method

.method public setHvacRearAutoMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5542
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacRearAutoModeEnabled(I)V

    return-void
.end method

.method public setHvacRearFanSpeedDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5616
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacRearFanSpeedDec()V

    return-void
.end method

.method public setHvacRearFanSpeedInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5603
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacRearFanSpeedInc()V

    return-void
.end method

.method public setHvacRearWindLessSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5740
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacRearWindLessSwitch(I)V

    return-void
.end method

.method public setHvacRearWindSpeedLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5635
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacRearFanSpeedLevel(I)V

    return-void
.end method

.method public setHvacSecRowLeftTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5390
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSecRowLeftTempDec()V

    return-void
.end method

.method public setHvacSecRowLeftTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5377
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSecRowLeftTempInc()V

    return-void
.end method

.method public setHvacSecRowRightTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5416
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSecRowRightTempDec()V

    return-void
.end method

.method public setHvacSecRowRightTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5403
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSecRowRightTempInc()V

    return-void
.end method

.method public setHvacTempAcMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3008
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacAcEnabled(I)V

    return-void
.end method

.method public setHvacTempDriverDown(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3117
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvSeatTempDown(F)V

    return-void
.end method

.method public setHvacTempDriverUp(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3107
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvSeatTempUp(F)V

    return-void
.end method

.method public setHvacTempDriverValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3096
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacDrvSeatTempValue(F)V

    return-void
.end method

.method public setHvacTempLeftSyncMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3081
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempLeftSyncEnabled(I)V

    return-void
.end method

.method public setHvacTempPsnDown(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3167
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnSeatTempDown(F)V

    return-void
.end method

.method public setHvacTempPsnUp(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3156
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnSeatTempUp(F)V

    return-void
.end method

.method public setHvacTempPsnValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3146
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnSeatTempValue(F)V

    return-void
.end method

.method public setHvacTempRightSyncMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3679
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempRightSyncEnabled(I)V

    return-void
.end method

.method public setHvacTempSecRowLeftValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5430
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempSecRowLeftValue(F)V

    return-void
.end method

.method public setHvacTempSecRowRightValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5458
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempSecRowRightValue(F)V

    return-void
.end method

.method public setHvacTempThirdRowtValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5512
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempThirdRowtValue(F)V

    return-void
.end method

.method public setHvacThirdRowTempDec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5498
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacThirdRowTempDec()V

    return-void
.end method

.method public setHvacThirdRowTempInc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5485
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacThirdRowTempInc()V

    return-void
.end method

.method public setHvacThirdRowWindBlowMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5673
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacThirdRowWindBlowMode(I)V

    return-void
.end method

.method public setHvacWindBlowMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3337
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanPosition(I)V

    return-void
.end method

.method public setHvacWindSpeedDown(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3406
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanSpeedDown(I)V

    return-void
.end method

.method public setHvacWindSpeedLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3386
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanSpeedLevel(I)V

    return-void
.end method

.method public setHvacWindSpeedUp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3396
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacFanSpeedUp(I)V

    return-void
.end method

.method public setNaturalWindStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a78

    const/4 v1, 0x0

    .line 6211
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    return-void
.end method

.method public setNewFreshSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5708
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacNewFreshSwitchStatus(I)V

    return-void
.end method

.method public setPsnLeftWindHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3891
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnLeftFanHorPos(I)V

    return-void
.end method

.method public setPsnLeftWindVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3938
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnLeftFanVerPos(I)V

    return-void
.end method

.method public setPsnRightWindHorPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3984
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnRightFanHorPos(I)V

    return-void
.end method

.method public setPsnRightWindVerPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4031
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacPsnRightFanVerPos(I)V

    return-void
.end method

.method public setPsnSmartVentSwitchStatus(I)V
    .locals 2

    .line 5828
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setPsnSmartVentSwitchStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5830
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

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setRearAirDistributionMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5273
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearHvacAirDistributionMode(I)V

    return-void
.end method

.method public setRearHvacPowerMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5328
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearHvacPowerEnabled(I)V

    return-void
.end method

.method public setRearHvacWindBlowMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5293
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearHvacFanPosition(I)V

    return-void
.end method

.method public setRearLeftWindHorPos(I)I
    .locals 2

    .line 5884
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearLeftWindHorPos(I)I

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

    .line 5886
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearLeftWindHorPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearLeftWindMode(I)I
    .locals 2

    .line 6078
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearLeftWindMode(I)I

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

    .line 6080
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearLeftWindMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearLeftWindVerPos(I)I
    .locals 2

    .line 5998
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearLeftWindVerPos(I)I

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

    .line 6000
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearLeftWindVerPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearRightWindHorPos(I)I
    .locals 2

    .line 5941
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearRightWindHorPos(I)I

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

    .line 5943
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

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearRightWindMode(I)I
    .locals 2

    .line 6124
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearRightWindMode(I)I

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

    .line 6126
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearRightWindMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearRightWindVerPos(I)I
    .locals 2

    .line 6055
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearRightWindVerPos(I)I

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

    .line 6057
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearRightWindVerPos throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setRearSweepWindStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6169
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearSweepWindStatus(I)I

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

    .line 6171
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRearSweepWindStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarHvacManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setSelfDryStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4570
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSelfDrySwStatus(I)V

    return-void
.end method

.method public setSfsChannel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4810
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHavacSfsChannel(I)V

    return-void
.end method

.method public setSfsChannelResetRequest(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5161
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSfsChannelResetRequest(II)V

    return-void
.end method

.method public setSfsConcentration(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4990
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSfsConcentration(I)V

    return-void
.end method

.method public setSfsSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4751
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSfsSwitch(I)V

    return-void
.end method

.method public setSfsTypeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5078
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSfsTypeMode(I)V

    return-void
.end method

.method public setSocCoolingRequestTemp(F)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4372
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSocCoolingRequestTemp(F)V

    return-void
.end method

.method public setSweepWindStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4471
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacSweepWindStatus(I)V

    return-void
.end method

.method public setTempPtcStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4554
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacTempPtcStatus(I)V

    return-void
.end method

.method public setWarpSpeedCoolingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4908
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacWarpSpeedCoolingSwitch(I)V

    return-void
.end method

.method public setWarpSpeedWarmingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4876
    iget-object v0, p0, Landroid/car/hardware/hvac/CarHvacManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHvacWarpSpeedWarmingSwitch(I)V

    return-void
.end method

.method public declared-synchronized unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 2

    monitor-enter p0

    .line 2924
    :try_start_0
    invoke-super {p0, p1}, Landroid/car/hardware/CarEcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "CarHvacManager"

    const-string v1, "getPropertyList exception "

    .line 2926
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2928
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
