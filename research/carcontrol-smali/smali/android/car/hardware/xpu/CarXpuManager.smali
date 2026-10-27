.class public Landroid/car/hardware/xpu/CarXpuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarXpuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;,
        Landroid/car/hardware/xpu/CarXpuManager$PropertyId;,
        Landroid/car/hardware/xpu/CarXpuManager$XpuNgpOptimalLane;,
        Landroid/car/hardware/xpu/CarXpuManager$XpuNgpULCSw;,
        Landroid/car/hardware/xpu/CarXpuManager$XpuISLCDriverSet;
    }
.end annotation


# static fields
.field public static final ADAS_TOP_SPEED_LIMITED:I = 0x0

.field public static final ADAS_TOP_SPEED_UNLIMITED:I = 0x1

.field public static final AES_TO_CAR:I = 0x1

.field public static final AES_TO_PED:I = 0x2

.field public static final AES_TO_SOD_RB:I = 0x3

.field public static final ALDWFUNTION_LIMITED:I = 0x1

.field public static final AS_LOCK_SCENARIO_CAM_CALIB_REQUEST:I = 0x1

.field public static final AS_LOCK_SCENARIO_LIDAR_CALIB_REQUEST:I = 0x2

.field public static final AS_LOCK_SCENARIO_MRR_CALIB_REQUEST:I = 0x3

.field public static final AS_LOCK_SCENARIO_NO_REQUEST:I = 0x0

.field public static final AS_TAR_LVL_HL1:I = 0x2

.field public static final AS_TAR_LVL_HL2:I = 0x1

.field public static final AS_TAR_LVL_LL1:I = 0x4

.field public static final AS_TAR_LVL_LL2:I = 0x5

.field public static final AS_TAR_LVL_LL3:I = 0x6

.field public static final AS_TAR_LVL_NL:I = 0x3

.field public static final AS_TAR_LVL_NO_REQUEST:I = 0x0

.field public static final COMMON_NO_WARNING:I = 0x0

.field public static final COMMON_WARNING_LEVEL1:I = 0x1

.field public static final COMMON_WARNING_LEVEL2:I = 0x2

.field public static final COMMON_WARNING_LEVEL3:I = 0x3

.field public static final CO_DRIVING_OVERRIDE:I = 0x1

.field public static final CO_DRIVING_OVERRIDE_AND_STEERING_TAKEOVER:I = 0x3

.field public static final CO_DRIVING_STATUS_SILENT_ON:I = 0x2

.field public static final CO_DRIVING_STEERING_TAKEOVER:I = 0x2

.field private static final DBG:Z = false

.field public static final DRIVE_FUNCTION_FACTORY_L4:I = 0x12

.field public static final DRIVE_FUNCTION_NOT_FACTORY_L4:I = 0x13

.field public static final EMERGENCY_ASSIST_ICON_ACTIVE_FAILED:I = 0x1

.field public static final EMERGENCY_ASSIST_ICON_E1:I = 0x5

.field public static final EMERGENCY_ASSIST_ICON_E2:I = 0x6

.field public static final EMERGENCY_ASSIST_ICON_E3:I = 0x7

.field public static final EMERGENCY_ASSIST_ICON_E4:I = 0x8

.field public static final EMERGENCY_ASSIST_ICON_ERROR:I = 0x3

.field public static final EMERGENCY_ASSIST_ICON_LIMITED:I = 0x2

.field public static final EMERGENCY_ASSIST_ICON_LIMITED_LATERAL:I = 0x9

.field public static final FILE_TRANSFER_FAILURE:I = 0x1

.field public static final FILE_TRANSFER_FINISHED:I = 0x0

.field public static final ID_CDU_BRIGHTNESS_ST:I = 0x2140380a

.field public static final ID_FPU_HMI_REMIND:I = 0x214038b8

.field public static final ID_FPU_HMI_VOICE:I = 0x214038b9

.field public static final ID_ICM_XPU_SR_HEART_BEAT:I = 0x2110a269

.field public static final ID_SCU_RAEB_SW:I = 0x214026ee

.field public static final ID_SCU_XPU_CMD:I = 0x214026ed

.field public static final ID_XMART_PIGEON_MODE:I = 0x21403836
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_XPU_ACCOUNT_INFO:I = 0x21103869

.field public static final ID_XPU_ACC_SW_ST:I = 0x2140389c

.field public static final ID_XPU_ADAS_FUNCTION_LAMP_SW:I = 0x21403875

.field public static final ID_XPU_ADAS_ONE_SHOT_ACTIVE:I = 0x2140387c

.field public static final ID_XPU_ADAS_ONE_SHOT_ACTIVE_SW:I = 0x2140387b

.field public static final ID_XPU_ADAS_TOP_SPEED:I = 0x21403841

.field public static final ID_XPU_AEB_STANDSTILL_ST:I = 0x2140388c

.field public static final ID_XPU_AES_FUNC_ST:I = 0x2140389f

.field public static final ID_XPU_AES_SW_ST:I = 0x2140389d

.field public static final ID_XPU_ALDWFUNTION_LIMITED:I = 0x214038ae

.field public static final ID_XPU_APA_ICON_ST:I = 0x21403892

.field public static final ID_XPU_AP_REMOTE_SW:I = 0x21403814

.field public static final ID_XPU_AP_TIPS:I = 0x21403818

.field public static final ID_XPU_AS_LOCK_SCENARIO:I = 0x21403832

.field public static final ID_XPU_AS_TAR_LVL_MAX_REQ:I = 0x21403839

.field public static final ID_XPU_AS_TAR_LVL_MIN_REQ:I = 0x21403838

.field public static final ID_XPU_AUTO_MAPPING_SWST:I = 0x214038b2

.field public static final ID_XPU_BRAKE_FUNCTION_MODE:I = 0x2140386b

.field public static final ID_XPU_CAMERA_DATA:I = 0x21703812

.field public static final ID_XPU_CAMERA_OVERTEMP_ALARM_STATUS:I = 0x2141386a

.field public static final ID_XPU_CAP_HOD_SW:I = 0x21403876

.field public static final ID_XPU_CAR_CHASSIS_IMAGE_REQ:I = 0x2110386f

.field public static final ID_XPU_CAR_CHASSIS_IMAGE_RESP:I = 0x21703870

.field public static final ID_XPU_CDCU_FNGP_MAP_FILE:I = 0x21703890

.field public static final ID_XPU_CDCU_FNGP_ROUTE_CMD:I = 0x2170388f

.field public static final ID_XPU_CDU_BRIGHTNESS_ST:I = 0x21403809

.field public static final ID_XPU_CDU_TOUCH_EVENT:I = 0x2140387d

.field public static final ID_XPU_CHARGE_STATION_INFO:I = 0x2170389a

.field public static final ID_XPU_CNGP_CITY_MAP_CTRL:I = 0x21703849

.field public static final ID_XPU_CNGP_CITY_MAP_FIN:I = 0x2170384c

.field public static final ID_XPU_CNGP_SW:I = 0x21403823

.field public static final ID_XPU_CONNECTED:I = 0x21403805

.field public static final ID_XPU_COUNTRY_CODE_INFO:I = 0x21103825

.field public static final ID_XPU_COUNTRY_CODE_INFO2:I = 0x214038a1

.field public static final ID_XPU_CO_DRIVING_FUNC_ST:I = 0x21403898

.field public static final ID_XPU_CO_DRIVING_SW:I = 0x21403897

.field public static final ID_XPU_CROSS_TRAFFIC_WARNING:I = 0x214038a7

.field public static final ID_XPU_CUSTOM_PK_DATA:I = 0x217038b3

.field public static final ID_XPU_DISPLAY_WORK_STATUS:I = 0x21403889

.field public static final ID_XPU_DIS_WARNING_ST:I = 0x214038bc

.field public static final ID_XPU_DRIVE_FUNCTION_USED:I = 0x214038ac

.field public static final ID_XPU_DRIVING_STATE_REMIND:I = 0x2140385a

.field public static final ID_XPU_EFF_SPD_LMTTYPE:I = 0x2140383f

.field public static final ID_XPU_ELEEYE_RANGE_SPD_LMT:I = 0x21403837

.field public static final ID_XPU_ELEEYE_SPD_DIS:I = 0x2140383a

.field public static final ID_XPU_EMERGENCY_ASSIST_ICON:I = 0x214038b0

.field public static final ID_XPU_ENV_MODE_STATUS:I = 0x2140388e

.field public static final ID_XPU_EXNGP_INFO:I = 0x217038aa

.field public static final ID_XPU_EXNGP_INTERNAL_MAP:I = 0x217038ab

.field public static final ID_XPU_EXNGP_ROUTE_LIST:I = 0x217038b4

.field public static final ID_XPU_EXNGP_SWST:I = 0x214038b1

.field public static final ID_XPU_EXPERIENCE_SPEED_LIMIT_SW:I = 0x2140386c

.field public static final ID_XPU_FACTORY_RESET_REQ:I = 0x2140386e

.field public static final ID_XPU_FNGP_EMULATOR_NAVI_INFO:I = 0x2170a26e

.field public static final ID_XPU_FNGP_RECORD_STATE:I = 0x2170387f

.field public static final ID_XPU_FNGP_ROUTE_BRIEF_LIST:I = 0x2170387a

.field public static final ID_XPU_FNGP_ROUTE_CMD:I = 0x21103864

.field public static final ID_XPU_FNGP_ROUTE_DETAIL:I = 0x21703866

.field public static final ID_XPU_FNGP_ROUTE_LIST:I = 0x21703865

.field public static final ID_XPU_FNGP_ROUTE_LIST_RELOAD:I = 0x21703879

.field public static final ID_XPU_FNGP_ROUTE_PUSH_SW:I = 0x21403863

.field public static final ID_XPU_FNGP_ROUTE_WAY_POINTS:I = 0x21703867

.field public static final ID_XPU_FRONT_DRIVE_OFF:I = 0x21403895

.field public static final ID_XPU_GEO_FENCING_CONFIG:I = 0x21103824

.field public static final ID_XPU_HD_MAP_DATA:I = 0x2170380f

.field public static final ID_XPU_HD_MAP_PERIOD_DATA:I = 0x21703813

.field public static final ID_XPU_HEADPOSE_DAT:I = 0x2141382a

.field public static final ID_XPU_HEADPOSE_FACE_AREA:I = 0x2140382d

.field public static final ID_XPU_HMI_DOP_REMIND:I = 0x21403829

.field public static final ID_XPU_HMI_ODD_REMIND:I = 0x21403858

.field public static final ID_XPU_HMI_REMIND:I = 0x21403857

.field public static final ID_XPU_HMI_REMIND_TIPS_SR:I = 0x21403886

.field public static final ID_XPU_HMI_VOICE:I = 0x21403859

.field public static final ID_XPU_ISLC_DRIVER_SET:I = 0x21403830

.field public static final ID_XPU_LATERAL_VIEW_CHANNEL0:I = 0x2140388a

.field public static final ID_XPU_LATERAL_VIEW_CHANNEL1:I = 0x2140388b

.field public static final ID_XPU_LCC_L_DETOUR_SW:I = 0x2140384a

.field public static final ID_XPU_LCC_L_STRAIGHT_SW:I = 0x2140384d

.field public static final ID_XPU_LDWUPGRADE_WARNING_ST:I = 0x214038af

.field public static final ID_XPU_LDW_VIBRATION_SWST:I = 0x214038ba

.field public static final ID_XPU_LIGHTCHANGE:I = 0x21403808

.field public static final ID_XPU_LONG_LAT_PERIOD_DATA:I = 0x21703842

.field public static final ID_XPU_LSS_SEN_SW:I = 0x21403843

.field public static final ID_XPU_MAP_DATA_AVAILABLE_ST:I = 0x21403881

.field public static final ID_XPU_META_COUNTRYCODE:I = 0x2140383b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_XPU_META_SPD_UNITS:I = 0x21403840

.field public static final ID_XPU_MODEL_MODE_STATUS:I = 0x2140388d

.field public static final ID_XPU_MODE_INDX:I = 0x2140382e

.field public static final ID_XPU_MODULE_WORK_STATUS:I = 0x21403888

.field public static final ID_XPU_NAVIGATION_RUNNING_STATUS:I = 0x214038a2

.field public static final ID_XPU_NAVI_CONFIRM_PROTO:I = 0x21703850

.field public static final ID_XPU_NAVI_CROSS_IMAGE:I = 0x21703887

.field public static final ID_XPU_NAVI_REM_DIST:I = 0x2140384e

.field public static final ID_XPU_NAVI_ROUTING_INFO:I = 0x2170384f

.field public static final ID_XPU_NAVI_TRAFFIC_JAM_INFO:I = 0x21703873

.field public static final ID_XPU_NAVI_TRAFFIC_LIGHT:I = 0x21703872

.field public static final ID_XPU_NAVI_TTS:I = 0x21703891

.field public static final ID_XPU_NAVI_TYPE:I = 0x2140381b

.field public static final ID_XPU_NEDC_STATUS:I = 0x21403807

.field public static final ID_XPU_NEXT_RAMP_ROAD_OFFSET:I = 0x214038a3

.field public static final ID_XPU_NGP_CUSTOM_ETC_SW:I = 0x21403860

.field public static final ID_XPU_NGP_CUSTOM_SPD_COUNT1:I = 0x21403854

.field public static final ID_XPU_NGP_CUSTOM_SPD_COUNT2:I = 0x21403855

.field public static final ID_XPU_NGP_CUSTOM_SPD_SW:I = 0x21403853

.field public static final ID_XPU_NGP_ICON_ST:I = 0x21403899

.field public static final ID_XPU_NGP_MODE_INDX:I = 0x2140382f

.field public static final ID_XPU_NGP_MODE_SWITCH_REMIND:I = 0x2140385f

.field public static final ID_XPU_NGP_NAVI_ROAD_RECTIFY:I = 0x21703882

.field public static final ID_XPU_NGP_NAVI_ROAD_RECTIFY_CFM:I = 0x21703885

.field public static final ID_XPU_NGP_OPTIMAL_LANE_SW:I = 0x2140382c

.field public static final ID_XPU_NGP_SUMMARY_INFO:I = 0x21703878

.field public static final ID_XPU_NGP_SWITCH_TRANSITION:I = 0x21403828

.field public static final ID_XPU_NGP_TRAJECTORY_DATA:I = 0x21703810

.field public static final ID_XPU_NGP_TRIGGER_EVENT_DATA:I = 0x21703811

.field public static final ID_XPU_NGP_ULC_SW:I = 0x2140382b

.field public static final ID_XPU_NGP_VIDEO_TRIGGER_INFO:I = 0x21703877

.field public static final ID_XPU_NRA_BTN:I = 0x21403821

.field public static final ID_XPU_NRA_CTRL:I = 0x21403822

.field public static final ID_XPU_OCC_PARK_EVENT_DATA:I = 0x217038be

.field public static final ID_XPU_PHONE_REMOTE_AP_EVENT:I = 0x2110383d

.field public static final ID_XPU_PHONE_REMOTE_AP_HEART_BEAT:I = 0x2110383c

.field public static final ID_XPU_PHONE_REMOTE_AP_INFO:I = 0x2170383e

.field public static final ID_XPU_PK_SPEED_MODE:I = 0x214038bb

.field public static final ID_XPU_RADAR_EMISSION_SW:I = 0x21403846

.field public static final ID_XPU_RAEB_ACTIVE_ST:I = 0x2140381c

.field public static final ID_XPU_RAEB_WARNING_ST:I = 0x214038bd

.field public static final ID_XPU_RAINY_SPEED_LIMIT:I = 0x214038a5

.field public static final ID_XPU_RD_PK_HMI_MODE:I = 0x21403861

.field public static final ID_XPU_REAR_VISION_REQ:I = 0x214038bf

.field public static final ID_XPU_REVERSE_DIS:I = 0x216038a0

.field public static final ID_XPU_RTF_ICON_ST:I = 0x21403893

.field public static final ID_XPU_SCP_CHRG_PORT_CMD:I = 0x21403835

.field public static final ID_XPU_SCP_GEO_INFO:I = 0x21103848

.field public static final ID_XPU_SCP_GEO_INFO_REQUEST:I = 0x21403847

.field public static final ID_XPU_SCP_ST:I = 0x21403833

.field public static final ID_XPU_SCP_SW:I = 0x21403815

.field public static final ID_XPU_SCP_TIPS:I = 0x21403816

.field public static final ID_XPU_SCP_TONE:I = 0x21403817

.field public static final ID_XPU_SCP_TTS:I = 0x21403831

.field public static final ID_XPU_SD_PERIOD_DATA:I = 0x2170a267

.field public static final ID_XPU_SLA_WARNING_ST:I = 0x21403834

.field public static final ID_XPU_SLIF_SOUND_SW:I = 0x21403826

.field public static final ID_XPU_SLWF_VOICE_SW:I = 0x21403827

.field public static final ID_XPU_SNOW_SPEED_LIMIT:I = 0x214038a6

.field public static final ID_XPU_SOC_VERSION_INFO:I = 0x21103871

.field public static final ID_XPU_SPEED_LIMIT_DISP:I = 0x2140385b

.field public static final ID_XPU_SR_DRIVABLE_SPACE_DATA:I = 0x21703883

.field public static final ID_XPU_SR_HEART_BEAT:I = 0x21103851
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_XPU_SR_OCCUPANCY_DATA:I = 0x21703884

.field public static final ID_XPU_SR_PK_EVENT_DATA:I = 0x2170380c

.field public static final ID_XPU_SR_PK_PERIOD_DATA:I = 0x2170380b

.field public static final ID_XPU_SR_RD_EVENT_DATA:I = 0x2170380e

.field public static final ID_XPU_SR_RD_PERIOD_DATA:I = 0x2170380d

.field public static final ID_XPU_SWS_CTRL_STATE:I = 0x2140387e

.field public static final ID_XPU_TIMEGAPSETDISP:I = 0x214038ad

.field public static final ID_XPU_TIMESTAMP:I = 0x21513880

.field public static final ID_XPU_TIME_CONDITION_EXIST:I = 0x214038a4

.field public static final ID_XPU_TRAFFIC_JAM_MODE_SW:I = 0x2140386d

.field public static final ID_XPU_TRAFFIC_LIGHTS_COLOR:I = 0x2140385d

.field public static final ID_XPU_TRAFFIC_LIGHTS_COUNTER:I = 0x2140385e

.field public static final ID_XPU_TRANSFER_CAR_INFO:I = 0x21703820

.field public static final ID_XPU_TRANSFER_MAP_DATA:I = 0x2170381f

.field public static final ID_XPU_TRANSFER_VPA_AB_INFO:I = 0x2110381e

.field public static final ID_XPU_TRANSFER_VPA_CMD:I = 0x2110381d

.field public static final ID_XPU_TURN_LAMP_ST:I = 0x2140385c

.field public static final ID_XPU_UPDATE_PROGRESS:I = 0x21403804

.field public static final ID_XPU_UPDATE_REQ:I = 0x21103802

.field public static final ID_XPU_UPDATE_RESULT:I = 0x21403806

.field public static final ID_XPU_UPDATE_TRANS:I = 0x21403803

.field public static final ID_XPU_VEH_LOCATION_PROTO:I = 0x2170384b

.field public static final ID_XPU_VLDD_IMG_REQ:I = 0x217038b6

.field public static final ID_XPU_VLDD_PERIOD_DATA:I = 0x217038b5

.field public static final ID_XPU_VLDD_SWST:I = 0x217038b7

.field public static final ID_XPU_VPA_ICON_ST:I = 0x21403894

.field public static final ID_XPU_XMINER_AVAILABLE_ST:I = 0x21403856

.field public static final ID_XPU_XMINER_BUG_REPORT_SW:I = 0x21403874

.field public static final ID_XPU_XNGP_NAVI_INFO:I = 0x21703862

.field public static final ID_XPU_ZG_EVENT_MSG:I = 0x21703844

.field public static final ID_XPU_ZG_PERIOD_MSG:I = 0x21703845

.field public static final LDWUPGRADE_WARNING_LONGTIME:I = 0x1

.field public static final LDWUPGRADE_WARNING_MULTITIME:I = 0x2

.field public static final LSS_SEN_ST_HIGH:I = 0x2

.field public static final LSS_SEN_ST_LOW:I = 0x1

.field public static final LSS_SEN_ST_MEDIUM:I = 0x0

.field public static final LSS_SEN_ST_OFF_TRAILER:I = 0x3

.field public static final META_SPD_UNITS_KILOMETER_PER_HOUR:I = 0x0

.field public static final META_SPD_UNITS_METER_PER_HOUR:I = 0x1

.field public static final PK_MODE_HIGH_SPEED:I = 0x1

.field public static final PK_MODE_LOW_SPEED:I = 0x0

.field public static final SCU_RAEB_SW_BLOCK:I = 0x4

.field public static final SCU_RAEB_SW_INITIATION:I = 0x5

.field public static final SCU_RAEB_SW_OFF:I = 0x0

.field public static final SCU_RAEB_SW_OFF_BY_TRAILER_MODE:I = 0x6

.field public static final SCU_RAEB_SW_ON:I = 0x1

.field public static final SCU_RAEB_SW_PERMANENT_FAILURE:I = 0x3

.field public static final SCU_RAEB_SW_TEMPORARY_FAILURE:I = 0x2

.field public static final SLA_WARNING_STATUS_ACOUSTIC_WARNING:I = 0x2

.field public static final SLA_WARNING_STATUS_FLASH_WARNING:I = 0x1

.field public static final SLA_WARNING_STATUS_NO_WARNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarXpuManager"

.field public static final XMART_PIGEON_MODE_ACTIVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XMART_PIGEON_MODE_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_APA_ICON_ACTIVE_BLUE:I = 0x2

.field public static final XPU_APA_ICON_NO_DISPLAY:I = 0x0

.field public static final XPU_APA_ICON_STANDBY_GREY:I = 0x1

.field public static final XPU_AP_REMOTE_SW_OFF:I = 0x0

.field public static final XPU_AP_REMOTE_SW_ON:I = 0x1

.field public static final XPU_AVP_MODE:I = 0xa

.field public static final XPU_BINO_CAMERA_OVERTEMP_ALARM_ACTIVE:I = 0x1

.field public static final XPU_BINO_CAMERA_OVERTEMP_ALARM_NOT_ACTIVE:I = 0x0

.field public static final XPU_BRAKE_FUNCTION_MODE_ACC:I = 0x5

.field public static final XPU_BRAKE_FUNCTION_MODE_APA:I = 0x2

.field public static final XPU_BRAKE_FUNCTION_MODE_PASSIVE:I = 0x0

.field public static final XPU_BRAKE_FUNCTION_MODE_RPA:I = 0x3

.field public static final XPU_BRAKE_FUNCTION_MODE_RVPA:I = 0x6

.field public static final XPU_BRAKE_FUNCTION_MODE_STANDBY:I = 0x1

.field public static final XPU_BRAKE_FUNCTION_MODE_VPA:I = 0x4

.field public static final XPU_CITY_TO_HIGHWAY:I = 0x3

.field public static final XPU_CNGP_MODE:I = 0x8

.field public static final XPU_CNGP_SW_OFF_BY_RADAR_FUNCTION_OFF:I = 0x3

.field public static final XPU_CNGP_SW_OFF_BY_TRAILER_FUNCTION_ON:I = 0x2

.field public static final XPU_COMMON_ACTIVE:I = 0x1

.field public static final XPU_COMMON_ICON_ACTIVE_BLUE:I = 0x2

.field public static final XPU_COMMON_ICON_NO_DISPLAY:I = 0x0

.field public static final XPU_COMMON_ICON_STANDBY_GREY:I = 0x1

.field public static final XPU_COMMON_NOT_ACTIVE:I = 0x0

.field public static final XPU_COMMON_PERMANENT_FAILURE:I = 0x3

.field public static final XPU_COMMON_TEMPORARY_FAILURE:I = 0x2

.field public static final XPU_CONNECTED:I = 0x1

.field public static final XPU_CROSS_TRAFFIC_WARNING_BOTH_ACTIVE:I = 0x3

.field public static final XPU_CROSS_TRAFFIC_WARNING_LEFT_ACTIVE:I = 0x1

.field public static final XPU_CROSS_TRAFFIC_WARNING_NOT_ACTIVE:I = 0x0

.field public static final XPU_CROSS_TRAFFIC_WARNING_RIGHT_ACTIVE:I = 0x2

.field public static final XPU_DISPLAY_STATUS_NOT_READY:I = 0x0

.field public static final XPU_DISPLAY_STATUS_READY:I = 0x1

.field public static final XPU_DISPLAY_VIEW_TYPE_DVRFRONT:I = 0x7

.field public static final XPU_DISPLAY_VIEW_TYPE_NARROWVIEWCAM:I = 0x5

.field public static final XPU_DISPLAY_VIEW_TYPE_OFF:I = 0x0

.field public static final XPU_DISPLAY_VIEW_TYPE_REARCAM:I = 0x6

.field public static final XPU_DISPLAY_VIEW_TYPE_SIDECAMLF:I = 0x1

.field public static final XPU_DISPLAY_VIEW_TYPE_SIDECAMLR:I = 0x2

.field public static final XPU_DISPLAY_VIEW_TYPE_SIDECAMRF:I = 0x3

.field public static final XPU_DISPLAY_VIEW_TYPE_SIDECAMRR:I = 0x4

.field public static final XPU_DRIVING_STATE_REMIND_CNGP_ACTIVE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_CNGP_AVAILABLE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_CNGP_PAUSE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_DSP_PAUSE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_FNGP_ACTIVE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_FNGP_ACTIVE_PAUSE:I = 0xb

.field public static final XPU_DRIVING_STATE_REMIND_FNGP_AVAILABLE:I = 0xa

.field public static final XPU_DRIVING_STATE_REMIND_FNGP_PAUSE:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_HNGP_ACTIVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_HNGP_AVAILABLE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_HNGP_PAUSE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_LCC_ACTIVE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_LCC_AVAILABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_MANUAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_DRIVING_STATE_REMIND_MANUALINACTIVE:I = 0x0

.field public static final XPU_HEADPOSE_FACE_AREA_BELOW_ICM:I = 0x7

.field public static final XPU_HEADPOSE_FACE_AREA_CDU:I = 0x6

.field public static final XPU_HEADPOSE_FACE_AREA_DRIVER_SIDE_MIRROR:I = 0x3

.field public static final XPU_HEADPOSE_FACE_AREA_ICM:I = 0x5

.field public static final XPU_HEADPOSE_FACE_AREA_LEFT_WINDSHIELD_CENTER:I = 0x0

.field public static final XPU_HEADPOSE_FACE_AREA_NO_EYE_TRACKING:I = 0xa

.field public static final XPU_HEADPOSE_FACE_AREA_OTHER:I = 0x9

.field public static final XPU_HEADPOSE_FACE_AREA_PASSENGER_SIDE_MIRROR:I = 0x4

.field public static final XPU_HEADPOSE_FACE_AREA_REAR:I = 0x8

.field public static final XPU_HEADPOSE_FACE_AREA_REAR_VIEW_MIRROR:I = 0x2

.field public static final XPU_HEADPOSE_FACE_AREA_RIGHT_WINDSHIELD:I = 0x1

.field public static final XPU_HIGHWAY_TO_CITY:I = 0x4

.field public static final XPU_ISLC_DRIVER_SET_AUTOMATIC:I = 0x3

.field public static final XPU_ISLC_DRIVER_SET_ERROR:I = 0x0

.field public static final XPU_ISLC_DRIVER_SET_MANUAL:I = 0x2

.field public static final XPU_ISLC_DRIVER_SET_OFF:I = 0x1

.field public static final XPU_L2_TO_L4_MODE:I = 0x7

.field public static final XPU_L4_MODE:I = 0xb

.field public static final XPU_L4_TO_L2_MODE:I = 0x9

.field public static final XPU_MODEL_DRIVING_MODE:I = 0x1

.field public static final XPU_MODEL_GUARD_PARKING_MODE:I = 0x2

.field public static final XPU_MODEL_INVALID:I = 0x0

.field public static final XPU_MODEL_PARKING_MODE:I = 0x2

.field public static final XPU_MODEL_UNDERGROUND_PARKING_MODE:I = 0x3

.field public static final XPU_MODE_INDX_ACC:I = 0x4

.field public static final XPU_MODE_INDX_ALC:I = 0x8

.field public static final XPU_MODE_INDX_ICA:I = 0x5

.field public static final XPU_MODE_INDX_MANUAL:I = 0x10

.field public static final XPU_MODE_INDX_TJA_LANE_CENTERING:I = 0x6

.field public static final XPU_MODE_INDX_TJA_TARGET_PURSUIT:I = 0x7

.field public static final XPU_NAVI_RUN_STATUS_FAULT:I = 0x3

.field public static final XPU_NAVI_RUN_STATUS_OFFROAD:I = 0x2

.field public static final XPU_NAVI_TYPE_CRUISE_ST:I = 0x0

.field public static final XPU_NAVI_TYPE_DEFAULT_ST:I = 0x3

.field public static final XPU_NAVI_TYPE_EXPLORE_ST:I = 0x2

.field public static final XPU_NAVI_TYPE_NAVI_ST:I = 0x1

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_FIVE_KPH:I = 0x4

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_FIVE_PERCENT:I = 0x4

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_NEGATIVE_FIVE_KPH:I = 0x2

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_NEGATIVE_FIVE_PERCENT:I = 0x2

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_NEGATIVE_TEN_KPH:I = 0x1

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_NEGATIVE_TEN_PERCENT:I = 0x1

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_TEN_KPH:I = 0x5

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_TEN_PERCENT:I = 0x5

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_ZERO_KPH:I = 0x3

.field public static final XPU_NGP_CUSTOM_SPD_COUNT1_ZERO_PERCENT:I = 0x3

.field public static final XPU_NGP_CUSTOM_SPD_SW_FIXED_VALUE:I = 0x1

.field public static final XPU_NGP_CUSTOM_SPD_SW_PERCENT:I = 0x2

.field public static final XPU_NGP_MODE_INDX_ACC_MODE:I = 0x2

.field public static final XPU_NGP_MODE_INDX_DRIVER_MODE:I = 0x1

.field public static final XPU_NGP_MODE_INDX_LCC_MODE:I = 0x3

.field public static final XPU_NGP_MODE_INDX_LCC_MODE_2:I = 0x4

.field public static final XPU_NGP_MODE_INDX_NGP_MODE:I = 0x5

.field public static final XPU_NGP_MODE_INDX_NGP_MODE_2:I = 0x6

.field public static final XPU_NGP_MODE_INDX_NO_COMMENT:I = 0x0

.field public static final XPU_NGP_OPTIMAL_LANE_DEFAULT:I = 0x2

.field public static final XPU_NGP_OPTIMAL_LANE_FIRST_LEFT:I = 0x0

.field public static final XPU_NGP_OPTIMAL_LANE_SECOND_LEFT:I = 0x1

.field public static final XPU_NGP_SWITCH_CNGP_HWNGP:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_HWNGP_CNGP:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L2:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L2_L3:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L2_L4:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L3:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L3_L2:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L4:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_L4_L2:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XPU_NGP_SWITCH_NONE:I = 0x0

.field public static final XPU_NGP_ULC_SW_CONSERVATIVE:I = 0x1

.field public static final XPU_NGP_ULC_SW_DISABLE:I = 0x2

.field public static final XPU_NGP_ULC_SW_NORMAL:I = 0x0

.field public static final XPU_NOT_CONNECTED:I = 0x0

.field public static final XPU_NRA_CTRL_STATUS_NOT_AVAILIABLE:I = 0x2

.field public static final XPU_NRA_CTRL_STATUS_OFF:I = 0x0

.field public static final XPU_NRA_CTRL_STATUS_ON:I = 0x1

.field public static final XPU_RAEB_ACTIVE_ST_NOT_ACTIVE:I = 0x0

.field public static final XPU_RAEB_ACTIVE_ST_RAEB_TO_CAR:I = 0x1

.field public static final XPU_RAEB_ACTIVE_ST_RAEB_TO_PED:I = 0x2

.field public static final XPU_RD_PK_HMI_MODE_DRIVING:I = 0x1

.field public static final XPU_RD_PK_HMI_MODE_INIT:I = 0x0

.field public static final XPU_RD_PK_HMI_MODE_PARKING:I = 0x2

.field public static final XPU_SCP_SW_ACTIVE:I = 0x3

.field public static final XPU_SCP_SW_OFF:I = 0x0

.field public static final XPU_SCP_SW_PASSIVE:I = 0x1

.field public static final XPU_SCP_SW_PERMANENT_FAILURE:I = 0x5

.field public static final XPU_SCP_SW_STANDBY:I = 0x2

.field public static final XPU_SCP_SW_TEMPORARY_FAILURE:I = 0x4

.field public static final XPU_SCP_TIPS_1:I = 0x1

.field public static final XPU_SCP_TIPS_2:I = 0x2

.field public static final XPU_SCP_TIPS_3:I = 0x3

.field public static final XPU_SCP_TIPS_NONE:I = 0x0

.field public static final XPU_SCP_TONE_1:I = 0x1

.field public static final XPU_SCP_TONE_2:I = 0x2

.field public static final XPU_SCP_TONE_3:I = 0x3

.field public static final XPU_SCP_TONE_NONE:I = 0x0

.field public static final XPU_SCP_TTS_1:I = 0x1

.field public static final XPU_SCP_TTS_2:I = 0x2

.field public static final XPU_SCP_TTS_3:I = 0x3

.field public static final XPU_SCP_TTS_NONE:I = 0x0

.field public static final XPU_SLWF_SLIF_NOT_AVAILABLE_FOR_DRIVER:I = 0x2

.field public static final XPU_SLWF_SLIF_OFF:I = 0x0

.field public static final XPU_SLWF_SLIF_ON:I = 0x1

.field public static final XPU_STANDSTILL_ACTIVE:I = 0x2

.field public static final XPU_STANDSTILL_AEB_ACTIVE:I = 0x1

.field public static final XPU_STANDSTILL_AEB_INACTIVE:I = 0x0

.field public static final XPU_STANDSTILL_PEDAL:I = 0x3

.field public static final XPU_STATUS_FAILURE:I = 0x2

.field public static final XPU_STATUS_NEDC_OFF:I = 0x0

.field public static final XPU_STATUS_NEDC_ON:I = 0x1

.field public static final XPU_STATUS_NO_OPERATION:I = 0x2

.field public static final XPU_STATUS_OFF:I = 0x0

.field public static final XPU_STATUS_ON:I = 0x1

.field public static final XPU_STATUS_START_UP_FAILURE:I = 0x5

.field public static final XPU_STATUS_START_UP_IN_PROGRESS:I = 0x3

.field public static final XPU_STATUS_TURN_OFF_IN_PROGRESS:I = 0x4

.field public static final XPU_SWITCH_OFF:I = 0x0

.field public static final XPU_SWITCH_ON:I = 0x1

.field public static final XPU_SWS_CTRL_STATE_NOT_USED:I = 0x0

.field public static final XPU_SWS_CTRL_STATE_USED:I = 0x1

.field public static final XPU_TRANS_TO_CITY:I = 0x1

.field public static final XPU_TRANS_TO_HIGHWAY:I = 0x2

.field public static final XPU_TURN_LAMP_ST_INVALID:I = 0x0

.field public static final XPU_TURN_LAMP_ST_LEFT:I = 0x1

.field public static final XPU_TURN_LAMP_ST_OFF:I = 0x4

.field public static final XPU_TURN_LAMP_ST_RIGHT:I = 0x2

.field public static final XPU_UPDATE_SUCCESS:I = 0x0

.field public static final XPU_XMINER_BUG_REPORT_SW_FB_DISPLAY_DISABLE:I = 0x3

.field public static final XPU_XMINER_BUG_REPORT_SW_FB_DISPLAY_ENABLE:I = 0x1

.field public static final XPU_XMINER_BUG_REPORT_SW_FB_DISPLAY_NONE:I = 0x0

.field public static final XPU_XMINER_BUG_REPORT_SW_FB_DISPLAY_QUOTA:I = 0x2

.field public static final XPU_XMINER_BUG_REPORT_SW_REQ_AUTO_TRIGGER:I = 0x2

.field public static final XPU_XMINER_BUG_REPORT_SW_REQ_TRIGGER:I = 0x1

.field private static final mXpuSharedMemoryPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mXpuPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supportShmManager:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3743
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0x1f

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x2170380b

    .line 3745
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x2170380c

    .line 3746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x2170380d

    .line 3747
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x2170380e

    .line 3748
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x2170380f

    .line 3749
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const v2, 0x21703810

    .line 3750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const v2, 0x21703812

    .line 3751
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const v2, 0x21703813

    .line 3752
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const v2, 0x2170381f

    .line 3753
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const v2, 0x2170384f

    .line 3754
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const v2, 0x2170a267

    .line 3755
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const v2, 0x21703862

    .line 3756
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const v2, 0x21703865

    .line 3757
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const v2, 0x21703866

    .line 3758
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const v2, 0x21703870

    .line 3759
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const v2, 0x21703873

    .line 3760
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const v2, 0x2170387a

    .line 3761
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const v2, 0x21703879

    .line 3762
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const v2, 0x21703883

    .line 3763
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const v2, 0x21703884

    .line 3764
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const v2, 0x2170388f

    .line 3765
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const v2, 0x21703890

    .line 3766
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const v2, 0x21703887

    .line 3767
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const v2, 0x21703891

    .line 3768
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const v2, 0x217038aa

    .line 3769
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const v2, 0x217038ab

    .line 3770
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const v2, 0x217038b3

    .line 3771
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const v2, 0x217038b4

    .line 3772
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const v2, 0x217038b5

    .line 3773
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const v2, 0x217038b6

    .line 3774
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const v2, 0x217038be

    .line 3775
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 3744
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/car/hardware/xpu/CarXpuManager;->mXpuSharedMemoryPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarXpuManager"

    .line 3790
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 3352
    iput-boolean p3, p0, Landroid/car/hardware/xpu/CarXpuManager;->supportShmManager:Z

    .line 3355
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0xb9

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21103802

    .line 3356
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21403804

    .line 3357
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21403806

    .line 3358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21403805

    .line 3359
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21403807

    .line 3360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21403808

    .line 3361
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21403809

    .line 3362
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2140380a

    .line 3363
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21703811

    .line 3364
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21403814

    .line 3365
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21403815

    .line 3366
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x214026ee

    .line 3367
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x214026ed

    .line 3368
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x2140381b

    .line 3369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x2140381c

    .line 3370
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x2110381d

    .line 3371
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x2110381e

    .line 3372
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21703820

    .line 3373
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21403821

    .line 3374
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21403822

    .line 3375
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21403823

    .line 3376
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21103824

    .line 3377
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21103825

    .line 3378
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21403827

    .line 3379
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21403826

    .line 3380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21403828

    .line 3381
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x2141382a

    .line 3382
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21403829

    .line 3383
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x2140382b

    .line 3384
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x2140382c

    .line 3385
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21403830

    .line 3386
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x2140382f

    .line 3387
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x2140382e

    .line 3388
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x21403816

    .line 3389
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x21403831

    .line 3390
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x21403817

    .line 3391
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21403818

    .line 3392
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x21403832

    .line 3393
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x21403833

    .line 3394
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x21403834

    .line 3395
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21403835

    .line 3396
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x21403836

    .line 3397
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x21403837

    .line 3398
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x21403838

    .line 3399
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x21403839

    .line 3400
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x2140383a

    .line 3401
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x2140383b

    .line 3402
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x2110383c

    .line 3403
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x2110383d

    .line 3404
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x2170383e

    .line 3405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21403840

    .line 3406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x2140383f

    .line 3407
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x21703842

    .line 3408
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x21403841

    .line 3409
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21403843

    .line 3410
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21703844

    .line 3411
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21703845

    .line 3412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x21403846

    .line 3413
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x21103848

    .line 3414
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21403847

    .line 3415
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x2140382d

    .line 3416
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x2140384a

    .line 3417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x21703849

    .line 3418
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x2170a267

    .line 3419
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x2170384c

    .line 3420
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x2170384b

    .line 3421
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x2140384d

    .line 3422
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x2140384e

    .line 3423
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x2170380b

    .line 3424
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x2170380c

    .line 3425
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x2170380d

    .line 3426
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x2170380e

    .line 3427
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x2170380f

    .line 3428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x21703810

    .line 3429
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x21703812

    .line 3430
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x21703813

    .line 3431
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x2170381f

    .line 3432
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x2170384f

    .line 3433
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x21703850

    .line 3434
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    const p3, 0x21103851

    .line 3435
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4f

    aput-object p3, p2, p4

    const p3, 0x2110a269

    .line 3436
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x50

    aput-object p3, p2, p4

    const p3, 0x21403853

    .line 3437
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x51

    aput-object p3, p2, p4

    const p3, 0x21403854

    .line 3438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x52

    aput-object p3, p2, p4

    const p3, 0x21403855

    .line 3439
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    aput-object p3, p2, p4

    const p3, 0x21403857

    .line 3440
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x54

    aput-object p3, p2, p4

    const p3, 0x21403858

    .line 3441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x55

    aput-object p3, p2, p4

    const p3, 0x21403859

    .line 3442
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x56

    aput-object p3, p2, p4

    const p3, 0x2140385a

    .line 3443
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x57

    aput-object p3, p2, p4

    const p3, 0x2140385b

    .line 3444
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x58

    aput-object p3, p2, p4

    const p3, 0x2140385c

    .line 3445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x59

    aput-object p3, p2, p4

    const p3, 0x2140385d

    .line 3446
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5a

    aput-object p3, p2, p4

    const p3, 0x2140385e

    .line 3447
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5b

    aput-object p3, p2, p4

    const p3, 0x2140385f

    .line 3448
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5c

    aput-object p3, p2, p4

    const p3, 0x21403861

    .line 3449
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5d

    aput-object p3, p2, p4

    const p3, 0x21403860

    .line 3450
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5e

    aput-object p3, p2, p4

    const p3, 0x21703862

    .line 3451
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f

    aput-object p3, p2, p4

    const p3, 0x21403863

    .line 3452
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x60

    aput-object p3, p2, p4

    const p3, 0x21103864

    .line 3453
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x61

    aput-object p3, p2, p4

    const p3, 0x21703865

    .line 3454
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x62

    aput-object p3, p2, p4

    const p3, 0x21703866

    .line 3455
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x63

    aput-object p3, p2, p4

    const p3, 0x21703867

    .line 3456
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    aput-object p3, p2, p4

    const p3, 0x2170a26e

    .line 3457
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x65

    aput-object p3, p2, p4

    const p3, 0x21103869

    .line 3458
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x66

    aput-object p3, p2, p4

    const p3, 0x2141386a

    .line 3459
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x67

    aput-object p3, p2, p4

    const p3, 0x2140386b

    .line 3460
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x68

    aput-object p3, p2, p4

    const p3, 0x2140386d

    .line 3461
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x69

    aput-object p3, p2, p4

    const p3, 0x2140386c

    .line 3462
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6a

    aput-object p3, p2, p4

    const p3, 0x2140386e

    .line 3463
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6b

    aput-object p3, p2, p4

    const p3, 0x21703870

    .line 3464
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6c

    aput-object p3, p2, p4

    const p3, 0x21703873

    .line 3465
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6d

    aput-object p3, p2, p4

    const p3, 0x21703872

    .line 3466
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6e

    aput-object p3, p2, p4

    const p3, 0x2110386f

    .line 3467
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6f

    aput-object p3, p2, p4

    const p3, 0x21103871

    .line 3468
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x70

    aput-object p3, p2, p4

    const p3, 0x21403874

    .line 3469
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x71

    aput-object p3, p2, p4

    const p3, 0x21403875

    .line 3470
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x72

    aput-object p3, p2, p4

    const p3, 0x21403876

    .line 3471
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x73

    aput-object p3, p2, p4

    const p3, 0x21703879

    .line 3472
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x74

    aput-object p3, p2, p4

    const p3, 0x2170387a

    .line 3473
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x75

    aput-object p3, p2, p4

    const p3, 0x21703877

    .line 3474
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x76

    aput-object p3, p2, p4

    const p3, 0x21703878

    .line 3475
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x77

    aput-object p3, p2, p4

    const p3, 0x2140387b

    .line 3476
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x78

    aput-object p3, p2, p4

    const p3, 0x2140387c

    .line 3477
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x79

    aput-object p3, p2, p4

    const p3, 0x21403881

    .line 3478
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7a

    aput-object p3, p2, p4

    const p3, 0x21403856

    .line 3479
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7b

    aput-object p3, p2, p4

    const p3, 0x2140387d

    .line 3480
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7c

    aput-object p3, p2, p4

    const p3, 0x2140387e

    .line 3481
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7d

    aput-object p3, p2, p4

    const p3, 0x2170387f

    .line 3482
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7e

    aput-object p3, p2, p4

    const p3, 0x21513880

    .line 3483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7f

    aput-object p3, p2, p4

    const p3, 0x21703882

    .line 3484
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x80

    aput-object p3, p2, p4

    const p3, 0x21703883

    .line 3485
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x81

    aput-object p3, p2, p4

    const p3, 0x21703884

    .line 3486
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x82

    aput-object p3, p2, p4

    const p3, 0x21703885

    .line 3487
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x83

    aput-object p3, p2, p4

    const p3, 0x21403886

    .line 3488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x84

    aput-object p3, p2, p4

    const p3, 0x21703887

    .line 3489
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x85

    aput-object p3, p2, p4

    const p3, 0x21403889

    .line 3490
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x86

    aput-object p3, p2, p4

    const p3, 0x21403888

    .line 3491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x87

    aput-object p3, p2, p4

    const p3, 0x2140388a

    .line 3492
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x88

    aput-object p3, p2, p4

    const p3, 0x2140388b

    .line 3493
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x89

    aput-object p3, p2, p4

    const p3, 0x2140388c

    .line 3494
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8a

    aput-object p3, p2, p4

    const p3, 0x2140388e

    .line 3495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8b

    aput-object p3, p2, p4

    const p3, 0x2140388d

    .line 3496
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8c

    aput-object p3, p2, p4

    const p3, 0x2170388f

    .line 3497
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8d

    aput-object p3, p2, p4

    const p3, 0x21703890

    .line 3498
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8e

    aput-object p3, p2, p4

    const p3, 0x21703891

    .line 3499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8f

    aput-object p3, p2, p4

    const p3, 0x21403892    # 6.5127E-19f

    .line 3500
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x90

    aput-object p3, p2, p4

    const p3, 0x21403894

    .line 3501
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x91

    aput-object p3, p2, p4

    const p3, 0x21403893

    .line 3502
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x92

    aput-object p3, p2, p4

    const p3, 0x21403895

    .line 3503
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x93

    aput-object p3, p2, p4

    const p3, 0x21403897

    .line 3504
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x94

    aput-object p3, p2, p4

    const p3, 0x21403898

    .line 3505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x95

    aput-object p3, p2, p4

    const p3, 0x21403899

    .line 3506
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x96

    aput-object p3, p2, p4

    const p3, 0x2170389a

    .line 3507
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x97

    aput-object p3, p2, p4

    const p3, 0x2140389c

    .line 3508
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x98

    aput-object p3, p2, p4

    const p3, 0x2140389d

    .line 3509
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x99

    aput-object p3, p2, p4

    const p3, 0x2140389f

    .line 3510
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9a

    aput-object p3, p2, p4

    const p3, 0x216038a0

    .line 3511
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9b

    aput-object p3, p2, p4

    const p3, 0x214038a1

    .line 3512
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9c

    aput-object p3, p2, p4

    const p3, 0x214038a2

    .line 3513
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9d

    aput-object p3, p2, p4

    const p3, 0x214038a3

    .line 3514
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9e

    aput-object p3, p2, p4

    const p3, 0x214038a4

    .line 3515
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9f

    aput-object p3, p2, p4

    const p3, 0x214038a5

    .line 3516
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa0

    aput-object p3, p2, p4

    const p3, 0x214038a6

    .line 3517
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa1

    aput-object p3, p2, p4

    const p3, 0x214038a7

    .line 3518
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa2

    aput-object p3, p2, p4

    const p3, 0x217038aa

    .line 3519
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa3

    aput-object p3, p2, p4

    const p3, 0x217038ab

    .line 3520
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa4

    aput-object p3, p2, p4

    const p3, 0x214038ac

    .line 3521
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa5

    aput-object p3, p2, p4

    const p3, 0x214038ad

    .line 3522
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa6

    aput-object p3, p2, p4

    const p3, 0x214038ae

    .line 3523
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa7

    aput-object p3, p2, p4

    const p3, 0x214038af

    .line 3524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa8

    aput-object p3, p2, p4

    const p3, 0x214038b0

    .line 3525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa9

    aput-object p3, p2, p4

    const p3, 0x214038b1

    .line 3526
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaa

    aput-object p3, p2, p4

    const p3, 0x214038b2

    .line 3527
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xab

    aput-object p3, p2, p4

    const p3, 0x217038b3

    .line 3528
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xac

    aput-object p3, p2, p4

    const p3, 0x217038b4

    .line 3529
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xad

    aput-object p3, p2, p4

    const p3, 0x217038b5

    .line 3530
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xae

    aput-object p3, p2, p4

    const p3, 0x217038b6

    .line 3531
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaf

    aput-object p3, p2, p4

    const p3, 0x217038b7

    .line 3532
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb0

    aput-object p3, p2, p4

    const p3, 0x214038b8

    .line 3533
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb1

    aput-object p3, p2, p4

    const p3, 0x214038b9

    .line 3534
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb2

    aput-object p3, p2, p4

    const p3, 0x214038ba

    .line 3535
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb3

    aput-object p3, p2, p4

    const p3, 0x214038bb

    .line 3536
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb4

    aput-object p3, p2, p4

    const p3, 0x214038bd

    .line 3537
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb5

    aput-object p3, p2, p4

    const p3, 0x214038bc

    .line 3538
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb6

    aput-object p3, p2, p4

    const p3, 0x217038be

    .line 3539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb7

    aput-object p3, p2, p4

    const p3, 0x214038bf

    .line 3540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb8

    aput-object p3, p2, p4

    .line 3356
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/xpu/CarXpuManager;->mXpuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const/4 v4, 0x0

    const-string v5, "CarXpuManager"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 3795
    invoke-direct/range {v0 .. v5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 3352
    iput-boolean p1, p0, Landroid/car/hardware/xpu/CarXpuManager;->supportShmManager:Z

    .line 3355
    new-instance p2, Landroid/util/ArraySet;

    const/16 p3, 0xb9

    new-array p3, p3, [Ljava/lang/Integer;

    const p4, 0x21103802

    .line 3356
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    const p1, 0x21403804

    .line 3357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const p1, 0x21403806

    .line 3358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x2

    aput-object p1, p3, p5

    const p1, 0x21403805

    .line 3359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x3

    aput-object p1, p3, p5

    const p1, 0x21403807

    .line 3360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x4

    aput-object p1, p3, p5

    const p1, 0x21403808

    .line 3361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x5

    aput-object p1, p3, p5

    const p1, 0x21403809

    .line 3362
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x6

    aput-object p1, p3, p5

    const p1, 0x2140380a

    .line 3363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x7

    aput-object p1, p3, p5

    const p1, 0x21703811

    .line 3364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8

    aput-object p1, p3, p5

    const p1, 0x21403814

    .line 3365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9

    aput-object p1, p3, p5

    const p1, 0x21403815

    .line 3366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa

    aput-object p1, p3, p5

    const p1, 0x214026ee

    .line 3367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb

    aput-object p1, p3, p5

    const p1, 0x214026ed

    .line 3368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xc

    aput-object p1, p3, p5

    const p1, 0x2140381b

    .line 3369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xd

    aput-object p1, p3, p5

    const p1, 0x2140381c

    .line 3370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xe

    aput-object p1, p3, p5

    const p1, 0x2110381d

    .line 3371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xf

    aput-object p1, p3, p5

    const p1, 0x2110381e

    .line 3372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x10

    aput-object p1, p3, p5

    const p1, 0x21703820

    .line 3373
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x11

    aput-object p1, p3, p5

    const p1, 0x21403821

    .line 3374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x12

    aput-object p1, p3, p5

    const p1, 0x21403822

    .line 3375
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x13

    aput-object p1, p3, p5

    const p1, 0x21403823

    .line 3376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x14

    aput-object p1, p3, p5

    const p1, 0x21103824

    .line 3377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x15

    aput-object p1, p3, p5

    const p1, 0x21103825

    .line 3378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x16

    aput-object p1, p3, p5

    const p1, 0x21403827

    .line 3379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x17

    aput-object p1, p3, p5

    const p1, 0x21403826

    .line 3380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x18

    aput-object p1, p3, p5

    const p1, 0x21403828

    .line 3381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x19

    aput-object p1, p3, p5

    const p1, 0x2141382a

    .line 3382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1a

    aput-object p1, p3, p5

    const p1, 0x21403829

    .line 3383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1b

    aput-object p1, p3, p5

    const p1, 0x2140382b

    .line 3384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1c

    aput-object p1, p3, p5

    const p1, 0x2140382c

    .line 3385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1d

    aput-object p1, p3, p5

    const p1, 0x21403830

    .line 3386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1e

    aput-object p1, p3, p5

    const p1, 0x2140382f

    .line 3387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x1f

    aput-object p1, p3, p5

    const p1, 0x2140382e

    .line 3388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x20

    aput-object p1, p3, p5

    const p1, 0x21403816

    .line 3389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x21

    aput-object p1, p3, p5

    const p1, 0x21403831

    .line 3390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x22

    aput-object p1, p3, p5

    const p1, 0x21403817

    .line 3391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x23

    aput-object p1, p3, p5

    const p1, 0x21403818

    .line 3392
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x24

    aput-object p1, p3, p5

    const p1, 0x21403832

    .line 3393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x25

    aput-object p1, p3, p5

    const p1, 0x21403833

    .line 3394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x26

    aput-object p1, p3, p5

    const p1, 0x21403834

    .line 3395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x27

    aput-object p1, p3, p5

    const p1, 0x21403835

    .line 3396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x28

    aput-object p1, p3, p5

    const p1, 0x21403836

    .line 3397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x29

    aput-object p1, p3, p5

    const p1, 0x21403837

    .line 3398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2a

    aput-object p1, p3, p5

    const p1, 0x21403838

    .line 3399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2b

    aput-object p1, p3, p5

    const p1, 0x21403839

    .line 3400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2c

    aput-object p1, p3, p5

    const p1, 0x2140383a

    .line 3401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2d

    aput-object p1, p3, p5

    const p1, 0x2140383b

    .line 3402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2e

    aput-object p1, p3, p5

    const p1, 0x2110383c

    .line 3403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x2f

    aput-object p1, p3, p5

    const p1, 0x2110383d

    .line 3404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x30

    aput-object p1, p3, p5

    const p1, 0x2170383e

    .line 3405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x31

    aput-object p1, p3, p5

    const p1, 0x21403840

    .line 3406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x32

    aput-object p1, p3, p5

    const p1, 0x2140383f

    .line 3407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x33

    aput-object p1, p3, p5

    const p1, 0x21703842

    .line 3408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x34

    aput-object p1, p3, p5

    const p1, 0x21403841

    .line 3409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x35

    aput-object p1, p3, p5

    const p1, 0x21403843

    .line 3410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x36

    aput-object p1, p3, p5

    const p1, 0x21703844

    .line 3411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x37

    aput-object p1, p3, p5

    const p1, 0x21703845

    .line 3412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x38

    aput-object p1, p3, p5

    const p1, 0x21403846

    .line 3413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x39

    aput-object p1, p3, p5

    const p1, 0x21103848

    .line 3414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3a

    aput-object p1, p3, p5

    const p1, 0x21403847

    .line 3415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3b

    aput-object p1, p3, p5

    const p1, 0x2140382d

    .line 3416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3c

    aput-object p1, p3, p5

    const p1, 0x2140384a

    .line 3417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3d

    aput-object p1, p3, p5

    const p1, 0x21703849

    .line 3418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3e

    aput-object p1, p3, p5

    const p1, 0x2170a267

    .line 3419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x3f

    aput-object p1, p3, p5

    const p1, 0x2170384c

    .line 3420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x40

    aput-object p1, p3, p5

    const p1, 0x2170384b

    .line 3421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x41

    aput-object p1, p3, p5

    const p1, 0x2140384d

    .line 3422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x42

    aput-object p1, p3, p5

    const p1, 0x2140384e

    .line 3423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x43

    aput-object p1, p3, p5

    const p1, 0x2170380b

    .line 3424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x44

    aput-object p1, p3, p5

    const p1, 0x2170380c

    .line 3425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x45

    aput-object p1, p3, p5

    const p1, 0x2170380d

    .line 3426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x46

    aput-object p1, p3, p5

    const p1, 0x2170380e

    .line 3427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x47

    aput-object p1, p3, p5

    const p1, 0x2170380f

    .line 3428
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x48

    aput-object p1, p3, p5

    const p1, 0x21703810

    .line 3429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x49

    aput-object p1, p3, p5

    const p1, 0x21703812

    .line 3430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4a

    aput-object p1, p3, p5

    const p1, 0x21703813

    .line 3431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4b

    aput-object p1, p3, p5

    const p1, 0x2170381f

    .line 3432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4c

    aput-object p1, p3, p5

    const p1, 0x2170384f

    .line 3433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4d

    aput-object p1, p3, p5

    const p1, 0x21703850

    .line 3434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4e

    aput-object p1, p3, p5

    const p1, 0x21103851

    .line 3435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x4f

    aput-object p1, p3, p5

    const p1, 0x2110a269

    .line 3436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x50

    aput-object p1, p3, p5

    const p1, 0x21403853

    .line 3437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x51

    aput-object p1, p3, p5

    const p1, 0x21403854

    .line 3438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x52

    aput-object p1, p3, p5

    const p1, 0x21403855

    .line 3439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x53

    aput-object p1, p3, p5

    const p1, 0x21403857

    .line 3440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x54

    aput-object p1, p3, p5

    const p1, 0x21403858

    .line 3441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x55

    aput-object p1, p3, p5

    const p1, 0x21403859

    .line 3442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x56

    aput-object p1, p3, p5

    const p1, 0x2140385a

    .line 3443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x57

    aput-object p1, p3, p5

    const p1, 0x2140385b

    .line 3444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x58

    aput-object p1, p3, p5

    const p1, 0x2140385c

    .line 3445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x59

    aput-object p1, p3, p5

    const p1, 0x2140385d

    .line 3446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5a

    aput-object p1, p3, p5

    const p1, 0x2140385e

    .line 3447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5b

    aput-object p1, p3, p5

    const p1, 0x2140385f

    .line 3448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5c

    aput-object p1, p3, p5

    const p1, 0x21403861

    .line 3449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5d

    aput-object p1, p3, p5

    const p1, 0x21403860

    .line 3450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5e

    aput-object p1, p3, p5

    const p1, 0x21703862

    .line 3451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x5f

    aput-object p1, p3, p5

    const p1, 0x21403863

    .line 3452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x60

    aput-object p1, p3, p5

    const p1, 0x21103864

    .line 3453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x61

    aput-object p1, p3, p5

    const p1, 0x21703865

    .line 3454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x62

    aput-object p1, p3, p5

    const p1, 0x21703866

    .line 3455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x63

    aput-object p1, p3, p5

    const p1, 0x21703867

    .line 3456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x64

    aput-object p1, p3, p5

    const p1, 0x2170a26e

    .line 3457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x65

    aput-object p1, p3, p5

    const p1, 0x21103869

    .line 3458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x66

    aput-object p1, p3, p5

    const p1, 0x2141386a

    .line 3459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x67

    aput-object p1, p3, p5

    const p1, 0x2140386b

    .line 3460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x68

    aput-object p1, p3, p5

    const p1, 0x2140386d

    .line 3461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x69

    aput-object p1, p3, p5

    const p1, 0x2140386c

    .line 3462
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6a

    aput-object p1, p3, p5

    const p1, 0x2140386e

    .line 3463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6b

    aput-object p1, p3, p5

    const p1, 0x21703870

    .line 3464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6c

    aput-object p1, p3, p5

    const p1, 0x21703873

    .line 3465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6d

    aput-object p1, p3, p5

    const p1, 0x21703872

    .line 3466
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6e

    aput-object p1, p3, p5

    const p1, 0x2110386f

    .line 3467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x6f

    aput-object p1, p3, p5

    const p1, 0x21103871

    .line 3468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x70

    aput-object p1, p3, p5

    const p1, 0x21403874

    .line 3469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x71

    aput-object p1, p3, p5

    const p1, 0x21403875

    .line 3470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x72

    aput-object p1, p3, p5

    const p1, 0x21403876

    .line 3471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x73

    aput-object p1, p3, p5

    const p1, 0x21703879

    .line 3472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x74

    aput-object p1, p3, p5

    const p1, 0x2170387a

    .line 3473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x75

    aput-object p1, p3, p5

    const p1, 0x21703877

    .line 3474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x76

    aput-object p1, p3, p5

    const p1, 0x21703878

    .line 3475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x77

    aput-object p1, p3, p5

    const p1, 0x2140387b

    .line 3476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x78

    aput-object p1, p3, p5

    const p1, 0x2140387c

    .line 3477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x79

    aput-object p1, p3, p5

    const p1, 0x21403881

    .line 3478
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7a

    aput-object p1, p3, p5

    const p1, 0x21403856

    .line 3479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7b

    aput-object p1, p3, p5

    const p1, 0x2140387d

    .line 3480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7c

    aput-object p1, p3, p5

    const p1, 0x2140387e

    .line 3481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7d

    aput-object p1, p3, p5

    const p1, 0x2170387f

    .line 3482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7e

    aput-object p1, p3, p5

    const p1, 0x21513880

    .line 3483
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x7f

    aput-object p1, p3, p5

    const p1, 0x21703882

    .line 3484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x80

    aput-object p1, p3, p5

    const p1, 0x21703883

    .line 3485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x81

    aput-object p1, p3, p5

    const p1, 0x21703884

    .line 3486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x82

    aput-object p1, p3, p5

    const p1, 0x21703885

    .line 3487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x83

    aput-object p1, p3, p5

    const p1, 0x21403886

    .line 3488
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x84

    aput-object p1, p3, p5

    const p1, 0x21703887

    .line 3489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x85

    aput-object p1, p3, p5

    const p1, 0x21403889

    .line 3490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x86

    aput-object p1, p3, p5

    const p1, 0x21403888

    .line 3491
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x87

    aput-object p1, p3, p5

    const p1, 0x2140388a

    .line 3492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x88

    aput-object p1, p3, p5

    const p1, 0x2140388b

    .line 3493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x89

    aput-object p1, p3, p5

    const p1, 0x2140388c

    .line 3494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8a

    aput-object p1, p3, p5

    const p1, 0x2140388e

    .line 3495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8b

    aput-object p1, p3, p5

    const p1, 0x2140388d

    .line 3496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8c

    aput-object p1, p3, p5

    const p1, 0x2170388f

    .line 3497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8d

    aput-object p1, p3, p5

    const p1, 0x21703890

    .line 3498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8e

    aput-object p1, p3, p5

    const p1, 0x21703891

    .line 3499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x8f

    aput-object p1, p3, p5

    const p1, 0x21403892    # 6.5127E-19f

    .line 3500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x90

    aput-object p1, p3, p5

    const p1, 0x21403894

    .line 3501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x91

    aput-object p1, p3, p5

    const p1, 0x21403893

    .line 3502
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x92

    aput-object p1, p3, p5

    const p1, 0x21403895

    .line 3503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x93

    aput-object p1, p3, p5

    const p1, 0x21403897

    .line 3504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x94

    aput-object p1, p3, p5

    const p1, 0x21403898

    .line 3505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x95

    aput-object p1, p3, p5

    const p1, 0x21403899

    .line 3506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x96

    aput-object p1, p3, p5

    const p1, 0x2170389a

    .line 3507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x97

    aput-object p1, p3, p5

    const p1, 0x2140389c

    .line 3508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x98

    aput-object p1, p3, p5

    const p1, 0x2140389d

    .line 3509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x99

    aput-object p1, p3, p5

    const p1, 0x2140389f

    .line 3510
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9a

    aput-object p1, p3, p5

    const p1, 0x216038a0

    .line 3511
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9b

    aput-object p1, p3, p5

    const p1, 0x214038a1

    .line 3512
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9c

    aput-object p1, p3, p5

    const p1, 0x214038a2

    .line 3513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9d

    aput-object p1, p3, p5

    const p1, 0x214038a3

    .line 3514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9e

    aput-object p1, p3, p5

    const p1, 0x214038a4

    .line 3515
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0x9f

    aput-object p1, p3, p5

    const p1, 0x214038a5

    .line 3516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa0

    aput-object p1, p3, p5

    const p1, 0x214038a6

    .line 3517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa1

    aput-object p1, p3, p5

    const p1, 0x214038a7

    .line 3518
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa2

    aput-object p1, p3, p5

    const p1, 0x217038aa

    .line 3519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa3

    aput-object p1, p3, p5

    const p1, 0x217038ab

    .line 3520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa4

    aput-object p1, p3, p5

    const p1, 0x214038ac

    .line 3521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa5

    aput-object p1, p3, p5

    const p1, 0x214038ad

    .line 3522
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa6

    aput-object p1, p3, p5

    const p1, 0x214038ae

    .line 3523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa7

    aput-object p1, p3, p5

    const p1, 0x214038af

    .line 3524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa8

    aput-object p1, p3, p5

    const p1, 0x214038b0

    .line 3525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xa9

    aput-object p1, p3, p5

    const p1, 0x214038b1

    .line 3526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xaa

    aput-object p1, p3, p5

    const p1, 0x214038b2

    .line 3527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xab

    aput-object p1, p3, p5

    const p1, 0x217038b3

    .line 3528
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xac

    aput-object p1, p3, p5

    const p1, 0x217038b4

    .line 3529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xad

    aput-object p1, p3, p5

    const p1, 0x217038b5

    .line 3530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xae

    aput-object p1, p3, p5

    const p1, 0x217038b6

    .line 3531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xaf

    aput-object p1, p3, p5

    const p1, 0x217038b7

    .line 3532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb0

    aput-object p1, p3, p5

    const p1, 0x214038b8

    .line 3533
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb1

    aput-object p1, p3, p5

    const p1, 0x214038b9

    .line 3534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb2

    aput-object p1, p3, p5

    const p1, 0x214038ba

    .line 3535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb3

    aput-object p1, p3, p5

    const p1, 0x214038bb

    .line 3536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb4

    aput-object p1, p3, p5

    const p1, 0x214038bd

    .line 3537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb5

    aput-object p1, p3, p5

    const p1, 0x214038bc

    .line 3538
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb6

    aput-object p1, p3, p5

    const p1, 0x217038be

    .line 3539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb7

    aput-object p1, p3, p5

    const p1, 0x214038bf

    .line 3540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p5, 0xb8

    aput-object p1, p3, p5

    .line 3356
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroid/car/hardware/xpu/CarXpuManager;->mXpuPropertyIds:Landroid/util/ArraySet;

    .line 3796
    iput-boolean p4, p0, Landroid/car/hardware/xpu/CarXpuManager;->supportShmManager:Z

    return-void
.end method

.method public static CNGPCityMapCtrlResponse([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5265
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CNGPCityMapResponse parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static CNGPCityMapFinishNotify([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5288
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;->parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapFinNotify;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CNGPCityMapFinNotify parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFNgpEmulatorNaviInfo([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 2

    .line 6101
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6103
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFNgpEmulatorNaviInfo throw InvalidProtocolBufferException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFNgpRouteDetail([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 2

    .line 6057
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6059
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFNgpRouteDetail throw InvalidProtocolBufferException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFNgpRouteList([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
            ">;"
        }
    .end annotation

    .line 6035
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;

    move-result-object p0

    .line 6036
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;->getFngpRouteDefailListList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6038
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFNgpRouteList throw InvalidProtocolBufferException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6040
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getFNgpRouteWayPoints([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation

    .line 6079
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    move-result-object p0

    .line 6080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->getV2PointListSpecifiedList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6082
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFNgpRouteWayPoints throw InvalidProtocolBufferException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getNaviConfirmProto([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5405
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNaviConfirmProto parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_xpu"

    return-object v0
.end method

.method public static getVehLocationProto([B)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5333
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;->parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVehLocationProto parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpu2CduFngpRouteCmd([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 2

    .line 7076
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FngpXpuCduRouteCmd parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpu2CduMapFile([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 2

    .line 7098
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalMap parse error with exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuFNgpRecordState([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 2

    .line 6742
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6744
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw InvalidProtocolBufferException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuFngpRouteBriefList([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 2

    .line 6554
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuFngpRouteListReload([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 2

    .line 6535
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuNgpNaviRectifyCtrl([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 2

    .line 6803
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->parseFrom([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuNgpSummaryInfo([B)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 2

    .line 6592
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parseFrom([B)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXpuNgpVideoTriggerInfo([B)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 2

    .line 6573
    :try_start_0
    invoke-static {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->parseFrom([B)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CarXpuManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public CNGPCityMapCtrlRequest(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5242
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;

    move-result-object v0

    .line 5243
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest;->newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;

    move-result-object v1

    .line 5244
    invoke-virtual {v1, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->setCityCode(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;

    .line 5245
    invoke-virtual {v1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;->setReqType(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;

    .line 5246
    invoke-virtual {v0, v1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->setCity(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$CityRequest$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;

    .line 5247
    iget-object p1, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapRequest;->toByteArray()[B

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendCNGPCityMapCtrlReq([B)V

    return-void
.end method

.method public enableXpuLightChange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3954
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuLightChange(I)V

    return-void
.end method

.method public getACCSwSt()I
    .locals 3

    const v0, 0x2140389c

    const/4 v1, 0x0

    .line 7334
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getACCSwSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAEBStandstillState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4252
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAebStandstillState()I

    move-result v0

    return v0
.end method

.method public getAESFuncSt()I
    .locals 3

    const v0, 0x2140389f

    const/4 v1, 0x0

    .line 7422
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getAESFuncSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAESSwSt()I
    .locals 3

    const v0, 0x2140389d

    const/4 v1, 0x0

    .line 7377
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getAESSwSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAPAIconState()I
    .locals 4

    const v0, 0x21403892    # 6.5127E-19f

    const/4 v1, 0x0

    .line 7141
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getAPAIconState failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getApRemoteSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4183
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuApRemoteSw()I

    move-result v0

    return v0
.end method

.method public getAsLockScenario()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4777
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAsLockScenario()I

    move-result v0

    return v0
.end method

.method public getAsTargetMaximumHeightRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5002
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAsTargetMaximumHeightRequest()I

    move-result v0

    return v0
.end method

.method public getAsTargetMinimumHeightRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4980
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAsTargetMinimumHeightRequest()I

    move-result v0

    return v0
.end method

.method public getAutoMappingSwSt()I
    .locals 3

    const v0, 0x214038b2

    const/4 v1, 0x0

    .line 7778
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getAutoMappingSwSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getAutoParkingTipsType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4758
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAutoParkingTipsType()I

    move-result v0

    return v0
.end method

.method public getBinocularCameraOverTempStatus()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6143
    fill-array-data v0, :array_0

    .line 6145
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBinocularCameraOverTempStatus()[I

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

    .line 6147
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBinocularCameraOverTempStatus throw RemoteException | RuntimeException e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarXpuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getBrakeFunctionMode()I
    .locals 3

    .line 6171
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBrakeFunctionMode()I

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

    .line 6173
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCityNgpSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4361
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuCityNgpSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getDriverHeadFaceArea()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5195
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuDriverHeadFaceArea()I

    move-result v0

    return v0
.end method

.method public getDrivingStateRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5782
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDrivingStateRemind()I

    move-result v0

    return v0
.end method

.method public getExngSwSt()I
    .locals 3

    const v0, 0x214038b1

    const/4 v1, 0x0

    .line 7735
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getExngSwSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getFNgpRoutePushSw()I
    .locals 3

    .line 5992
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFNgpRoutePush()I

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

    .line 5994
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFNgpRoutePush throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getFpuHmiRemind()I
    .locals 3

    const v0, 0x214038b8

    const/4 v1, 0x0

    .line 7899
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getFpuHmiRemind failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getFpuHmiVoice()I
    .locals 3

    const v0, 0x214038b9

    const/4 v1, 0x0

    .line 7920
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getFpuHmiVoice failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getFrontCarDriveOffSt()I
    .locals 4

    const v0, 0x21403895

    const/4 v1, 0x0

    .line 7226
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getAPAIconState failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getHeadPoseData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4509
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuHeadPoseData()[I

    move-result-object v0

    return-object v0
.end method

.method public getHmiDopRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4523
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuHmiDopRemind()I

    move-result v0

    return v0
.end method

.method public getHmiOddRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5720
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHmiOddRemind()I

    move-result v0

    return v0
.end method

.method public getHmiRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5706
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHmiRemind()I

    move-result v0

    return v0
.end method

.method public getHmiVoice()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5748
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHmiVoice()I

    move-result v0

    return v0
.end method

.method public getISLCDriverSet()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4638
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuISLCDriverSet()I

    move-result v0

    return v0
.end method

.method public getInstrumentSrHmiRemind()I
    .locals 4

    const v0, 0x21403886

    const/4 v1, 0x0

    .line 6841
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6843
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIntelligentChargePortSystemStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4798
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuIntelligentChargePortSystemStatus()I

    move-result v0

    return v0
.end method

.method public getIntelligentChargePortSystemToneType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4743
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuIntelligentChargePortSystemToneType()I

    move-result v0

    return v0
.end method

.method public getIntelligentChargePortTipsType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4705
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuIntelligentChargePortTipsType()I

    move-result v0

    return v0
.end method

.method public getIntelligentChargePortTtsBroadcastType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4724
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuIntelligentChargePortTtsBroadcastType()I

    move-result v0

    return v0
.end method

.method public getLLCCDetourSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5227
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLLCCDetourSw()I

    move-result v0

    return v0
.end method

.method public getLccLStraightSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5370
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLccLStraightSw()I

    move-result v0

    return v0
.end method

.method public getLongLatPeriodData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5058
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLongLatPeriodData()[B

    move-result-object v0

    return-object v0
.end method

.method public getLssSensitivitySwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5111
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLssSensitivitySwitchStatus()I

    move-result v0

    return v0
.end method

.method public getModeIndexDefine()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4686
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuModeIndexDefine()I

    move-result v0

    return v0
.end method

.method public getNGPIconState()I
    .locals 4

    const v0, 0x21403899

    const/4 v1, 0x0

    .line 7205
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getNGPIconState failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getNaviConfirmProto()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5428
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNaviConfirmProto()[B

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getNaviConfirmProto([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    move-result-object v0

    return-object v0
.end method

.method public getNedcSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3941
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNedcSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getNgpCustomEtcSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5890
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNgpCustomEtcSw()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedCountLever()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5615
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpCustomSpeedCountLever()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedCountPercent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5653
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpCustomSpeedCountPercent()I

    move-result v0

    return v0
.end method

.method public getNgpCustomSpeedSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5577
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpCustomSpeedSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getNgpExperienceSpeedLimitSw()I
    .locals 3

    .line 6214
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNgpExperienceSpeedLimitSw()I

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

    .line 6216
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getNgpModeIndexMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4665
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpModeIndexMode()I

    move-result v0

    return v0
.end method

.method public getNgpModeSwitchRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5856
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNgpModeSwitchRemind()I

    move-result v0

    return v0
.end method

.method public getNgpOptimalLaneSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4598
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpOptimalLaneSw()I

    move-result v0

    return v0
.end method

.method public getNgpSwitchTransitionStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4495
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpSwitchTransitionStatus()I

    move-result v0

    return v0
.end method

.method public getNgpULCSwMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4560
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNgpULCSwMode()I

    move-result v0

    return v0
.end method

.method public getNgxCrossTrafficWarningDirection()I
    .locals 4

    const v0, 0x214038a7

    const/4 v1, 0x0

    .line 7572
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getNgxCrossTrafficWarningDirection failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getNraControlStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4301
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNraControlStatus()I

    move-result v0

    return v0
.end method

.method public getNraSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4284
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuNraSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getPhoneRemoteAPInfo()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5044
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPhoneRemoteAPInformation()[B

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

    .line 3815
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mXpuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRTFIconState()I
    .locals 4

    const v0, 0x21403893

    const/4 v1, 0x0

    .line 7162
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getRTFIconState failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getRaebActiveStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4234
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuRaebActiveStatus()I

    move-result v0

    return v0
.end method

.method public getRaebSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4037
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuRaebSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getRdPkHmiMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5874
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRdPkHmiMode()I

    move-result v0

    return v0
.end method

.method public getRearVisionOutputSt()I
    .locals 3

    const v0, 0x214038bf

    const/4 v1, 0x0

    .line 8071
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getRearVisionOutputSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getReverseDis()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x216038a0

    const/4 v1, 0x0

    .line 7440
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getSRHeartBeatInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5530
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSRHeartBeatInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScpChargePortCommandStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4833
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuScpChargePortCommandStatus()I

    move-result v0

    return v0
.end method

.method public getScpSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4000
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuScpSwitchStatus()I

    move-result v0

    return v0
.end method

.method protected getSharedMemoryIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3820
    sget-object v0, Landroid/car/hardware/xpu/CarXpuManager;->mXpuSharedMemoryPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSlaSpeedWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4816
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuSlaSpeedWarningStatus()I

    move-result v0

    return v0
.end method

.method public getSlifSoundStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4442
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuSlifSoundStatus()I

    move-result v0

    return v0
.end method

.method public getSlwfVoiceStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4476
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuSlwfVoiceStatus()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitDisp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5796
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpeedLimitDisp()I

    move-result v0

    return v0
.end method

.method public getTrafficLightsColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5828
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrafficLightsColor()I

    move-result v0

    return v0
.end method

.method public getTrafficLightsCounter()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5842
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrafficLightsCounter()I

    move-result v0

    return v0
.end method

.method public getTurnLampSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5814
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTurnLampSt()I

    move-result v0

    return v0
.end method

.method public getUpdateProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3889
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuUpdateProgress()I

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

    .line 3846
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuUpdateResponse()Ljava/lang/String;

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

    .line 3876
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuUpdateResult()I

    move-result v0

    return v0
.end method

.method public getVPAIconState()I
    .locals 4

    const v0, 0x21403894

    const/4 v1, 0x0

    .line 7183
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getAPAIconState failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getVehLocationProto()Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5311
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuVehLocationProto()[B

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getVehLocationProto([B)Landroid/car/hardware/xpu/XpuProtoMessage$VehLocationInfoResp;

    move-result-object v0

    return-object v0
.end method

.method public getXmartPigeonMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4851
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuXmartPigeonMode()I

    move-result v0

    return v0
.end method

.method public getXpuAdasFunctionLampSw()I
    .locals 3

    .line 6452
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuAdasFunctionLampSw()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getXpuAdasOneShotActiveSw()I
    .locals 4

    const v0, 0x2140387b

    const/4 v1, 0x0

    .line 6635
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6637
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuAldwFuntionLinmited()I
    .locals 3

    const v0, 0x214038ae

    const/4 v1, 0x0

    .line 7667
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuAldwFuntionLinmited failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getXpuBrightness()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4167
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuBrightness()I

    move-result v0

    return v0
.end method

.method public getXpuCapHodSw()I
    .locals 3

    .line 6496
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuCapHodSw()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getXpuCduTouchEvent()I
    .locals 4

    const v0, 0x2140387d

    const/4 v1, 0x0

    .line 6702
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6704
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuCoDrivingFuncSt()I
    .locals 3

    const v0, 0x21403898

    const/4 v1, 0x0

    .line 7293
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuCoDrivingFuncSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuCoDrivingState()I
    .locals 3

    const v0, 0x21403897

    const/4 v1, 0x0

    .line 7248
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuCoDrivingState failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuConnectionStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3905
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuConnectionStatus()I

    move-result v0

    return v0
.end method

.method public getXpuDisWarningSt()I
    .locals 3

    const v0, 0x214038bc

    const/4 v1, 0x0

    .line 8050
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuDisWarningSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuDisplayReadyStatus()I
    .locals 4

    const v0, 0x21403889

    const/4 v1, 0x0

    .line 6879
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6881
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuDriveFunctionUsed()I
    .locals 4

    const v0, 0x214038ac

    const/4 v1, 0x0

    .line 7628
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling getXpuDriveFunctionUsed failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public getXpuEmergencyAssistIcon()I
    .locals 3

    const v0, 0x214038b0

    const/4 v1, 0x0

    .line 7714
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuEmergencyAssistIcon failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getXpuLdwUpgradeWarningSt()I
    .locals 3

    const v0, 0x214038af

    const/4 v1, 0x0

    .line 7687
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuAldwFuntionLinmited failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getXpuLdwVibrationSwSt()I
    .locals 3

    const v0, 0x214038ba

    const/4 v1, 0x0

    .line 7941
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuLdwVibrationSwSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuModelEnvirModuleStatus()I
    .locals 4

    const v0, 0x2140388e

    const/4 v1, 0x0

    .line 7056
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7058
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuModelRecognizeModuleStatus()I
    .locals 4

    const v0, 0x2140388d

    const/4 v1, 0x0

    .line 7034
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7036
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuModuleDisplayPerspectiveStatus()I
    .locals 4

    const v0, 0x21403888

    const/4 v1, 0x0

    .line 6906
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6908
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuPkSpeedMode()I
    .locals 3

    const v0, 0x214038bb

    const/4 v1, 0x0

    .line 7984
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuPkSpeedMode failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuRaebWarningSt()I
    .locals 3

    const v0, 0x214038bd

    const/4 v1, 0x0

    .line 8029
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuRaebWarningSt failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getXpuSideViewChannel0WorkType()I
    .locals 4

    const v0, 0x2140388a

    const/4 v1, 0x0

    .line 6932
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6934
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuSideViewChannel1WorkType()I
    .locals 4

    const v0, 0x2140388b

    const/4 v1, 0x0

    .line 6985
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6987
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuSocVersionInfo()Ljava/lang/String;
    .locals 3

    .line 6299
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuSocVersionInfo()Ljava/lang/String;

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

    .line 6301
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method public getXpuTimeGapSetDisp()I
    .locals 3

    const v0, 0x214038ad

    const/4 v1, 0x0

    .line 7647
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getXpuTimeGapSetDisp failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getXpuTimeStamps()[J
    .locals 3

    const v0, 0x21513880

    const/4 v1, 0x0

    .line 6763
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getLongVectorProperty(II)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6765
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

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 6766
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getXpuTrafficJamModeSw()I
    .locals 3

    .line 6259
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuTrafficJamModeSw()I

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

    .line 6261
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarXpuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getXpuUseSwsControlState()I
    .locals 4

    const v0, 0x2140387e

    const/4 v1, 0x0

    .line 6723
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6725
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

    const-string v2, "CarXpuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getXpuXminerBugReportSw()I
    .locals 2

    const v0, 0x21403874

    const/4 v1, 0x0

    .line 6408
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public responseChargeStationInfo([B)I
    .locals 2

    const v0, 0x2170389a

    const/4 v1, 0x0

    .line 7312
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling responseChargeStationInfo failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendCountryCodeInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4408
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuCountryCodeInfo(Ljava/lang/String;)V

    return-void
.end method

.method public sendCountryCodeInfo2(I)V
    .locals 2

    const v0, 0x214038a1

    const/4 v1, 0x0

    .line 7456
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCountryCodeInfo2 throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendCustomPkData2Avm([B)I
    .locals 1

    const v0, 0x217038b3

    .line 7819
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendExngpInfo2Xpu([B)I
    .locals 1

    const v0, 0x217038aa

    .line 7590
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendExngpInternalMap2Xpu([B)I
    .locals 1

    const v0, 0x217038ab

    .line 7608
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendExngpRouteCmd2Xpu([B)I
    .locals 2

    const v0, 0x217038b4

    const/4 v1, 0x0

    .line 7838
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7840
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendGeoFencingConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4394
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuGeoFencingConfig(Ljava/lang/String;)V

    return-void
.end method

.method public sendHdMapData([B)I
    .locals 1

    const v0, 0x2170380f

    .line 4149
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendNaviCrossImage([B)I
    .locals 1

    const v0, 0x21703887

    .line 6859
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendNaviTTS([B)I
    .locals 2

    const v0, 0x21703891

    .line 7118
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendNaviTTS failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendNavigationRunningStatus(I)V
    .locals 2

    const v0, 0x214038a2

    const/4 v1, 0x0

    .line 7477
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendNavigationRunningStatus throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendNextRampRoadOffsetDis(I)V
    .locals 2

    const v0, 0x214038a3

    const/4 v1, 0x0

    .line 7495
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendNextRampRoadOffsetDis throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendRainyRoadSpeedLimitValue(I)V
    .locals 2

    const v0, 0x214038a5

    const/4 v1, 0x0

    .line 7532
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRainyRoadSpeedLimitValue throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendRearVisionReq(I)I
    .locals 2

    const v0, 0x214038bf

    const/4 v1, 0x0

    .line 8092
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendRearVisionReq failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendSRHeartBeatInfoRequest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5516
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendSRHeartBeatInfoRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendSRLagLogHeartBeatFeedBackRequest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5544
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendSRLagLogHeartBeatFeedBackRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendScpGeoInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5169
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuScpGeoInfo(Ljava/lang/String;)V

    return-void
.end method

.method public sendSnowRoadSpeedLimitValue(I)V
    .locals 2

    const v0, 0x214038a6

    const/4 v1, 0x0

    .line 7550
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSnowRoadSpeedLimitValue throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendSrPkCdu2XpuEventData([B)I
    .locals 1

    const v0, 0x2170380c

    .line 4071
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendSrPkCdu2XpuPeriodData([B)I
    .locals 1

    const v0, 0x2170380b

    .line 4052
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendSrRdCdu2XpuEventData([B)I
    .locals 1

    const v0, 0x2170380e

    .line 4109
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendSrRdCdu2XpuNgpTrajectoryV2Data([B)I
    .locals 1

    const v0, 0x21703810

    .line 4130
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendSrRdCdu2XpuPeriodData([B)I
    .locals 1

    const v0, 0x2170380d

    .line 4090
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendTransferMapData([B)I
    .locals 1

    const v0, 0x2170381f

    .line 4376
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public sendTransferVpaAbInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4327
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuTransferVpaAbInfo(Ljava/lang/String;)V

    return-void
.end method

.method public sendTransferVpaCmd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4314
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuTransferVpaCmd(Ljava/lang/String;)V

    return-void
.end method

.method public sendUpdateRequest(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3833
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuUpdateRequest(Ljava/lang/String;)V

    return-void
.end method

.method public sendVlddImgReq2Xpu([B)I
    .locals 2

    const v0, 0x217038b6

    const/4 v1, 0x0

    .line 7858
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7860
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendVlddSwst2Xpu([B)I
    .locals 2

    const v0, 0x217038b7

    const/4 v1, 0x0

    .line 7878
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7880
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public sendXNgpNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x21703862

    .line 5927
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 5929
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendXNgpNaviInfo error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public sendXNgpNaviInfoVW(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x21703862

    .line 5949
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 5951
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendXNgpNaviInfo error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public sendZgEventMessage([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5125
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuZgEventMessage([B)V

    return-void
.end method

.method public sendZgPeriodMessage([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5139
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendXpuZgPeriodMessage([B)V

    return-void
.end method

.method public setACCSwSt(I)I
    .locals 2

    const v0, 0x2140389c

    const/4 v1, 0x0

    .line 7355
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setACCSwSt failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setAESSwSt(I)I
    .locals 2

    const v0, 0x2140389d

    const/4 v1, 0x0

    .line 7398
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setAESSwSt failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setAccountInfo(Ljava/lang/String;)I
    .locals 2

    .line 6123
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAccountInfo(Ljava/lang/String;)I

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

    .line 6125
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAccountUid throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setAdasTopSpeedLimitedValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5074
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuAdasTopSpeedLimitedValue(I)V

    return-void
.end method

.method public setApRemoteSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4199
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuApRemoteSw(I)V

    return-void
.end method

.method public setAutoMappingSwSt(I)I
    .locals 2

    const v0, 0x214038b2

    const/4 v1, 0x0

    .line 7799
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setAutoMappingSwSt failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setCduBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3968
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuCduBrightness(I)V

    return-void
.end method

.method public setCityNgpSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4343
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuCityNgpSwitchStatus(I)V

    return-void
.end method

.method public setEffectiveSpeedLimitType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4958
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuEffectiveSpeedLimitType(I)V

    return-void
.end method

.method public setElectricEyeSpeedDistance(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4911
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuElectricEyeSpeedDistance(I)V

    return-void
.end method

.method public setElectricEyeSpeedLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4897
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuElectricEyeSpeedLimit(I)V

    return-void
.end method

.method public setExngSwSt(I)I
    .locals 2

    const v0, 0x214038b1

    const/4 v1, 0x0

    .line 7756
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setExngSwSt failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setFNgpRouteCmd(Ljava/lang/String;)I
    .locals 2

    .line 6014
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFNgpRouteCmd(Ljava/lang/String;)I

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

    .line 6016
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFNgpRouteCmd throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setFNgpRoutePushSw(I)I
    .locals 2

    .line 5971
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFNgpRoutePushSw(I)I

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

    .line 5973
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFNgpRoutePushSw throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setHmiOddRemind(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5734
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHmiOddRemind(I)I

    move-result p1

    return p1
.end method

.method public setHmiVoice(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5762
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHmiVoice(I)I

    move-result p1

    return p1
.end method

.method public setISLCDriverSet(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4617
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuISLCDriverSet(I)V

    return-void
.end method

.method public setLLCCDetourSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5211
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuLLCCDetourSw(I)V

    return-void
.end method

.method public setLccLStraightSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5354
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuLccLStraightSw(I)V

    return-void
.end method

.method public setLssSensitivitySwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5092
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuLssSensitivitySwitchStatus(I)V

    return-void
.end method

.method public setMetaCountryCode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4928
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuMetaCountryCode(I)V

    return-void
.end method

.method public setMetaSpeedUnits(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4944
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuMetaSpeedUnits(I)V

    return-void
.end method

.method public setNaviRemainingDistance(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5384
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNaviRemainingDistance(I)V

    return-void
.end method

.method public setNaviRoutingInfo(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2170384f

    .line 5475
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5477
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNaviRoutingInfoRequest(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;",
            "J",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5445
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    move-result-object v0

    .line 5446
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    move-result-object p1

    .line 5447
    invoke-virtual {p1, p2, p3}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    move-result-object p1

    .line 5448
    invoke-virtual {p1, p4}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->addAllV2Points(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    move-result-object p1

    .line 5449
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    const p2, 0x2170384f

    .line 5451
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNaviRoutingInfoVW(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2170384f

    .line 5499
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5501
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNaviTypeStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4217
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNaviTypeStatus(I)V

    return-void
.end method

.method public setNedcSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3921
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNedcSwitch(I)V

    return-void
.end method

.method public setNgpCustomEtcSw(I)I
    .locals 2

    .line 5906
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNgpCustomEtcSw(I)I

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

    .line 5908
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNgpCustomEtcSw throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setNgpCustomSpeedCountLever(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5596
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNgpCustomSpeedCountLever(I)V

    return-void
.end method

.method public setNgpCustomSpeedCountPercent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5634
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNgpCustomSpeedCountPercent(I)V

    return-void
.end method

.method public setNgpCustomSpeedSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5561
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNgpCustomSpeedSwitchStatus(I)V

    return-void
.end method

.method public setNgpExperienceSpeedLimitSw(I)I
    .locals 2

    .line 6193
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setNgpExperienceSpeedLimitSw(I)I

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

    .line 6195
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setNgpOptimalLaneSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4578
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNgpOptimalLaneSw(I)V

    return-void
.end method

.method public setNgpULCSwMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4541
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNgpULCSwMode(I)V

    return-void
.end method

.method public setNraSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4268
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuNraSwitchStatus(I)V

    return-void
.end method

.method public setPhoneRemoteAPEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5030
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendPhoneRemoteAPEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneRemoteAPHeartBeat(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5016
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendPigeonAndXPURemoteAPHeartBeat(Ljava/lang/String;)V

    return-void
.end method

.method public setRadarEmissionSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5155
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuRadarEmissionSwitchStatus(I)V

    return-void
.end method

.method public setRaebSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4016
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuRaebSwitchStatus(I)V

    return-void
.end method

.method public setRoadTimeConditionIsExist(I)V
    .locals 2

    const v0, 0x214038a4

    const/4 v1, 0x0

    .line 7514
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRoadTimeConditionIsExist throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setScpSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3984
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuScpSwitchStatus(I)V

    return-void
.end method

.method public setSlifSoundStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4425
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuSlifSoundStatus(I)V

    return-void
.end method

.method public setSlwfVoiceStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4459
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuSlwfVoiceStatus(I)V

    return-void
.end method

.method public setUpdateFileTransferStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3862
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuUpdateFileTransferStatus(I)V

    return-void
.end method

.method public setXpuAdasFunctionLampSw(I)I
    .locals 2

    .line 6430
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuAdasFunctionLampSw(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6432
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuAdasOneShotActive(I)I
    .locals 2

    const v0, 0x2140387c

    const/4 v1, 0x0

    .line 6656
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6658
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuAdasOneShotActiveSw(I)I
    .locals 2

    const v0, 0x2140387b

    const/4 v1, 0x0

    .line 6613
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6615
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuCapHodSw(I)I
    .locals 2

    .line 6474
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuCapHodSw(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6476
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuCarChassieImageReq(Ljava/lang/String;)I
    .locals 2

    .line 6320
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuCarChassieImageReq(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuCduTouchEvent(I)I
    .locals 2

    const v0, 0x2140387d

    const/4 v1, 0x0

    .line 6680
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6682
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuCoDrivingState(I)I
    .locals 2

    const v0, 0x21403897

    const/4 v1, 0x0

    .line 7270
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setXpuCoDrivingState failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setXpuFactoryResetReq(I)I
    .locals 2

    .line 6280
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuFactoryResetReq(I)I

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

    .line 6282
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuFngpRouteListReload(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)I
    .locals 2

    const v0, 0x21703879

    .line 6516
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 6518
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setXpuLdwVibrationSwSt(I)I
    .locals 2

    const v0, 0x214038ba

    const/4 v1, 0x0

    .line 7962
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setXpuLdwVibrationSwSt failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setXpuMapDataAvailableSt(I)I
    .locals 2

    const v0, 0x21403881

    const/4 v1, 0x0

    .line 5691
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V

    return v1
.end method

.method public setXpuNaviTrafficJamInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)I
    .locals 1

    const v0, 0x21703873

    .line 6361
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setXpuNaviTrafficLight(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)I
    .locals 1

    const v0, 0x21703872

    .line 6341
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public setXpuNgpNaviRectifyConfirmInfo(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)I
    .locals 2

    const v0, 0x21703885

    .line 6822
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6824
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setXpuNgpNaviRectifyInfo(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)I
    .locals 2

    const v0, 0x21703882

    .line 6783
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6785
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setXpuPkSpeedMode(I)I
    .locals 2

    const v0, 0x214038bb

    const/4 v1, 0x0

    .line 8005
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setXpuPkSpeedMode failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setXpuSideViewChannel0WorkType(I)I
    .locals 2

    const v0, 0x2140388a

    const/4 v1, 0x0

    .line 6958
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 6960
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuSideViewChannel1WorkType(I)I
    .locals 2

    const v0, 0x2140388b

    const/4 v1, 0x0

    .line 7011
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 7013
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

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuTrafficJamModeSw(I)I
    .locals 2

    .line 6237
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuTrafficJamModeSw(I)I

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

    .line 6239
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarXpuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setXpuXminerAvailableSt(I)I
    .locals 1

    .line 5670
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setXpuXminerAvailableSt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setXpuXminerBugReportSw(I)I
    .locals 2

    const v0, 0x21403874

    const/4 v1, 0x0

    .line 6384
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6386
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected supportSharedMemoryManager()Z
    .locals 1

    .line 8101
    iget-boolean v0, p0, Landroid/car/hardware/xpu/CarXpuManager;->supportShmManager:Z

    return v0
.end method
