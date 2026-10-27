.class public final Landroid/car/hardware/scu/CarScuManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarScuManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;,
        Landroid/car/hardware/scu/CarScuManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AEB_STATUS_ACTIVE_TO_CAR:I = 0x1

.field public static final AEB_STATUS_ACTIVE_TO_PED:I = 0x2

.field public static final AEB_STATUS_INACTIVE:I = 0x0

.field public static final ALC_BANNED_DUE_TO_VEHICLE_SPEED:I = 0x5

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

.field public static final APA_FAILURE:I = 0x4

.field public static final APA_PARKING_IN_RUNNING:I = 0x1

.field public static final APA_PARKING_OUT_RUNNING:I = 0x2

.field public static final APA_SUCCESS:I = 0x3

.field public static final APA_VPA_INIT:I = 0x0

.field public static final CAM_FAILURE_STATUS_BLOCKED:I = 0x1

.field public static final CAM_FAILURE_STATUS_FAILURE:I = 0x2

.field public static final CAM_FAILURE_STATUS_MISALIGNMENT:I = 0x3

.field public static final CAM_FAILURE_STATUS_NO_FAILURE:I = 0x0

.field private static final DBG:Z = false

.field public static final DISABLE_PARK_BY_MEMORY:I = 0x1

.field public static final DISABLE_PARK_BY_MEMORY_WITH_LICENSE:I = 0x2

.field public static final DISABLE_PARK_BY_RADAR:I = 0x5

.field public static final DISABLE_PARK_BY_TTM:I = 0x4

.field public static final DMS_MODE_EXTENDED:I = 0x1

.field public static final DMS_MODE_NORMAL:I = 0x0

.field public static final DOOR_OBSTACLE_DETECTION_STATUS_DANGER:I = 0x1

.field public static final DOOR_OBSTACLE_DETECTION_STATUS_SAFETY:I = 0x2

.field public static final DOOR_OBSTACLE_DETECTION_STATUS_UNKNOWN:I = 0x3

.field public static final DSM_NO_PROMPT:I = 0x0

.field public static final DSM_PROMPT_1:I = 0x1

.field public static final DSM_PROMPT_10:I = 0xa

.field public static final DSM_PROMPT_11:I = 0xb

.field public static final DSM_PROMPT_12:I = 0xc

.field public static final DSM_PROMPT_13:I = 0xd

.field public static final DSM_PROMPT_14:I = 0xe

.field public static final DSM_PROMPT_15:I = 0xf

.field public static final DSM_PROMPT_2:I = 0x2

.field public static final DSM_PROMPT_3:I = 0x3

.field public static final DSM_PROMPT_4:I = 0x4

.field public static final DSM_PROMPT_5:I = 0x5

.field public static final DSM_PROMPT_6:I = 0x6

.field public static final DSM_PROMPT_7:I = 0x7

.field public static final DSM_PROMPT_8:I = 0x8

.field public static final DSM_PROMPT_9:I = 0x9

.field public static final DSM_ST_BLOCK:I = 0x5

.field public static final DSM_ST_CNOK:I = 0x2

.field public static final DSM_ST_FAULT:I = 0x4

.field public static final DSM_ST_NORMAL:I = 0x1

.field public static final DSM_ST_NO_DRI:I = 0x3

.field public static final DSM_ST_OFF:I = 0x0

.field public static final DSM_ST_STARTING:I = 0x6

.field public static final DSM_SWITCH_OFF:I = 0x0

.field public static final DSM_SWITCH_ON:I = 0x1

.field public static final EBA_STATUS_ACTIVE_TO_CAR:I = 0x1

.field public static final EBA_STATUS_ACTIVE_TO_PED:I = 0x2

.field public static final EBA_STATUS_INACTIVE:I = 0x0

.field public static final ENABLE_PARK_BY_MEMORY:I = 0x2

.field public static final ENABLE_PARK_BY_MEMORY_WITH_LICENSE:I = 0x1

.field public static final EPS_POWER_ASSISTED_COMFORT:I = 0x2

.field public static final EPS_POWER_ASSISTED_SPORT:I = 0x3

.field public static final EPS_POWER_ASSISTED_STANDARD:I = 0x1

.field public static final EXTRA_LAT_CTRL_REMIND_NO_DISPLAY:I = 0x0

.field public static final FCW_STATUS_ACUTE_WARNING_TO_CAR:I = 0x4

.field public static final FCW_STATUS_LATENT_WARNING:I = 0x1

.field public static final FCW_STATUS_NO_WARNING:I = 0x0

.field public static final FCW_STATUS_PREWARNING_TO_CAR:I = 0x2

.field public static final FCW_STATUS_PREWARNING_TO_PED:I = 0x3

.field public static final FIND_CARPORT:I = 0x1

.field public static final HANDS_OFF_CALIBRATION_FAIL:I = 0xf

.field public static final HANDS_OFF_CALIBRATION_FINISH:I = 0xe

.field public static final HANDS_OFF_CALIBRATION_ING:I = 0xd

.field public static final ID_CDU_NAVI_ROAD_LINK_TYPE:I = 0x214026ec

.field public static final ID_DOOR_OPEN_WARING:I = 0x21402608
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_DOOR_OPEN_WARNING:I = 0x21402608

.field public static final ID_HIGH_SPEED_NAVGATION:I = 0x2140260f

.field public static final ID_INTELLIGENT_SPEED_LIMIT:I = 0x2140260d

.field public static final ID_LANE_ALIGNMENT_ASSIST:I = 0x2140260e

.field public static final ID_REAR_COLLISION_SECURITY:I = 0x21402607

.field public static final ID_SCU_ACC_EXIT_REASON:I = 0x214026ac

.field public static final ID_SCU_ACC_LKA_WARNING:I = 0x21402680

.field public static final ID_SCU_ACC_RD_VOICE_TIPS:I = 0x2140268c

.field public static final ID_SCU_ACC_ST:I = 0x21402634

.field public static final ID_SCU_ADAS_MAPINFO:I = 0x21702622

.field public static final ID_SCU_ADAS_PROFSHORT_PROFTYPE:I = 0x214126d5

.field public static final ID_SCU_ADAS_SEG_SPEED_LIMIT:I = 0x214026a8

.field public static final ID_SCU_AEB_ALARM_SWST:I = 0x214026d0

.field public static final ID_SCU_ALARM_FAULT_ST:I = 0x21402681

.field public static final ID_SCU_ALCCTRL_REMIND:I = 0x21402672

.field public static final ID_SCU_APA_ADAS_ACTIVE_ST:I = 0x2170270d

.field public static final ID_SCU_APA_LICENSE_DOC:I = 0x2170270c

.field public static final ID_SCU_APA_VPA_STATUS:I = 0x21402708

.field public static final ID_SCU_ASS_LCHG_SWST:I = 0x21402669

.field public static final ID_SCU_AUTO_PARK_AP_ST:I = 0x21402700

.field public static final ID_SCU_AUTO_PARK_CMD:I = 0x21402632

.field public static final ID_SCU_BLIND_AREA_DETECTION_WARNING:I = 0x21402605

.field public static final ID_SCU_BOX_DATA_1:I = 0x2161265a

.field public static final ID_SCU_BOX_DATA_2:I = 0x2161262c

.field public static final ID_SCU_BOX_DATA_3D7:I = 0x2161267c

.field public static final ID_SCU_BOX_DATA_3D8:I = 0x2161267d

.field public static final ID_SCU_BSD_LEFT_WARNING:I = 0x21402624

.field public static final ID_SCU_BSD_RIGHT_WARNING:I = 0x21402623

.field public static final ID_SCU_BSD_ST:I = 0x21402688

.field public static final ID_SCU_BSD_WARNING:I = 0x21412653
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_CHOSE_ID:I = 0x21402613

.field public static final ID_SCU_CIP_WARNING_ST:I = 0x2140268b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_CRUISESPD_SET_DISP:I = 0x21402695

.field public static final ID_SCU_CUR_HUMI:I = 0x2170263a

.field public static final ID_SCU_CUR_TEMP:I = 0x2170263b

.field public static final ID_SCU_CUTLINE_PREVENT_SW:I = 0x21402604

.field public static final ID_SCU_DDAW_SW:I = 0x21402703

.field public static final ID_SCU_DISTRACTION_SW_ST:I = 0x2140268a

.field public static final ID_SCU_DMS_MODE_ST:I = 0x2140266b

.field public static final ID_SCU_DMS_SEBLRQ:I = 0x2140266a

.field public static final ID_SCU_DOW_LWARNING:I = 0x2140267e

.field public static final ID_SCU_DOW_RWARNING:I = 0x2140267f

.field public static final ID_SCU_DSM_CAMERA_SW:I = 0x214026fe

.field public static final ID_SCU_DSM_REMIND:I = 0x214026d2

.field public static final ID_SCU_DSM_SWITCH:I = 0x214026eb

.field public static final ID_SCU_DSM_TIRD_DISTRACTION:I = 0x214026ff

.field public static final ID_SCU_DSM_TIRD_DISTRACTION_MANUAL:I = 0x21402704

.field public static final ID_SCU_DSM_TIRD_DISTRACTION_SEN:I = 0x21402702

.field public static final ID_SCU_EBA_ACTIVE_ST:I = 0x21402705

.field public static final ID_SCU_ELK_STATE:I = 0x214026ad

.field public static final ID_SCU_ENV_CHARACTER_INFO:I = 0x21612621
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_ERR_TIPS:I = 0x2140265f

.field public static final ID_SCU_EVENT_INFO_RD:I = 0x214026f8

.field public static final ID_SCU_FARLAMP_AUTO_SW:I = 0x21402603

.field public static final ID_SCU_FATIGUE_DETECTION:I = 0x2140260a

.field public static final ID_SCU_FCWAEB_SEN_SW:I = 0x214026fd

.field public static final ID_SCU_FEATURE_DATA:I = 0x2161265e

.field public static final ID_SCU_FEATURE_DATA_1:I = 0x2141262b

.field public static final ID_SCU_FEATURE_DATA_2:I = 0x21412636

.field public static final ID_SCU_FISHEYECAM_FAILURE_ST:I = 0x21402691

.field public static final ID_SCU_FORMWAY_RD:I = 0x2140381a

.field public static final ID_SCU_FRONT_COLLISION_SECURITY:I = 0x21402601

.field public static final ID_SCU_FRONT_MINIDIST_EN:I = 0x21402648

.field public static final ID_SCU_FRONT_RADAR_DATA:I = 0x2161261c

.field public static final ID_SCU_FRONT_RADAR_FAULT_ST:I = 0x21412649

.field public static final ID_SCU_FRONT_RADAR_LVL:I = 0x2141264a

.field public static final ID_SCU_FSD_BUTTON:I = 0x21402670

.field public static final ID_SCU_GPS_LOCATION:I = 0x21612631

.field public static final ID_SCU_GPS_MESSAGE:I = 0x21612630

.field public static final ID_SCU_HMI_DOP_REMIND:I = 0x214026f9

.field public static final ID_SCU_HMI_SAFETY_ASSIST_REMIND:I = 0x21402701

.field public static final ID_SCU_HOME_SLOT_ID:I = 0x21402638

.field public static final ID_SCU_ICM_CDU_AP_ST:I = 0x214026e2

.field public static final ID_SCU_INTELL_PARK_OUT_SW:I = 0x21402706

.field public static final ID_SCU_ISL_SPD:I = 0x214026de

.field public static final ID_SCU_KEYPARK_SWST:I = 0x21402641

.field public static final ID_SCU_LANE_CHANGE_ASSIST:I = 0x21402609

.field public static final ID_SCU_LANE_DEPARTURE_WARNING:I = 0x21402602

.field public static final ID_SCU_LATCTRL_REMIND:I = 0x21402629

.field public static final ID_SCU_LATCTRL_REMIND_2:I = 0x21402687

.field public static final ID_SCU_LCC_EXIT_REASON:I = 0x214026ab

.field public static final ID_SCU_LDW_LKA_SW:I = 0x214026d3

.field public static final ID_SCU_LDW_ST:I = 0x21402684

.field public static final ID_SCU_LDW_WARNING:I = 0x21412656
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_LKA_ST:I = 0x214026d4

.field public static final ID_SCU_LKA_STATE:I = 0x2140268e

.field public static final ID_SCU_LKA_WARNING:I = 0x21412655

.field public static final ID_SCU_LOCAT_DATA:I = 0x2161263f

.field public static final ID_SCU_LOCAT_DATA_11:I = 0x21612645

.field public static final ID_SCU_LOCAT_DATA_2:I = 0x21612640

.field public static final ID_SCU_LOCAT_WEATH:I = 0x2170263c

.field public static final ID_SCU_LOG_DATA_322:I = 0x21412657

.field public static final ID_SCU_LOG_DATA_322_D20:I = 0x21412682

.field public static final ID_SCU_LOG_DATA_3FD:I = 0x21412658

.field public static final ID_SCU_LOG_DATA_3FE:I = 0x21412659

.field public static final ID_SCU_LONGCTRL_REMIND:I = 0x21402627

.field public static final ID_SCU_LRADAR_DIST:I = 0x214026f6

.field public static final ID_SCU_LRADAR_DIS_LEVEL:I = 0x214026f4

.field public static final ID_SCU_LR_BSD_SW:I = 0x214126ef

.field public static final ID_SCU_LR_DOW_SW:I = 0x214126f1

.field public static final ID_SCU_LR_RCTA_SW:I = 0x214126f2

.field public static final ID_SCU_LR_RCW_SW:I = 0x214126f0

.field public static final ID_SCU_LR_RCW_WARNING_ST:I = 0x21412709

.field public static final ID_SCU_LSS_SWST:I = 0x214026fc

.field public static final ID_SCU_L_AVM_SLOT:I = 0x21612662

.field public static final ID_SCU_MAINCAM_FAILURE_ST:I = 0x21402692

.field public static final ID_SCU_MODE_INDEX:I = 0x2140264b

.field public static final ID_SCU_MRR_ASSIST_SYSST:I = 0x2141267a

.field public static final ID_SCU_MRR_FAILURE_ST:I = 0x21402690

.field public static final ID_SCU_MRR_RADAR_EMISS_ST:I = 0x214026fa

.field public static final ID_SCU_NARROWCAM_FAILURE_ST:I = 0x21402693

.field public static final ID_SCU_NAVI_DANGER_AREA_RD_INFO:I = 0x214126f3

.field public static final ID_SCU_NGP_DRIVERCONFIRM_LC_SW:I = 0x214026a1

.field public static final ID_SCU_NGP_INFO_TIPS1:I = 0x21402699

.field public static final ID_SCU_NGP_LCMODE_SW:I = 0x214026a2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_NGP_LC_TIPS1:I = 0x21402698

.field public static final ID_SCU_NGP_MODE_STATUS:I = 0x214026cf

.field public static final ID_SCU_NGP_OPEBUTTON_ST:I = 0x21402697

.field public static final ID_SCU_NGP_QUICKLANE_SW:I = 0x2140269f

.field public static final ID_SCU_NGP_REMIND_MODE_SW:I = 0x214026a3

.field public static final ID_SCU_NGP_SCU_NGP_TRUCKOFFSET_SW:I = 0x214026a0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_NGP_TIPS_WINDOWS_ST:I = 0x2140269a

.field public static final ID_SCU_NGP_TRUCKOFFSET_SW:I = 0x214026a0

.field public static final ID_SCU_NGP_XPILOTST:I = 0x2140269e

.field public static final ID_SCU_OPERATION_TIPS:I = 0x2140261b

.field public static final ID_SCU_OTA_TAG:I = 0x214026a7

.field public static final ID_SCU_PAK_PERCENT:I = 0x21612661

.field public static final ID_SCU_PARKINGGROUND_STATE:I = 0x214026b9

.field public static final ID_SCU_PARKING_STATUS:I = 0x21402647

.field public static final ID_SCU_PARKING_TSK_TIME:I = 0x21412644

.field public static final ID_SCU_PARKING_VER:I = 0x21612642

.field public static final ID_SCU_PARK_AP_SW:I = 0x214026d1

.field public static final ID_SCU_PARK_DATA:I = 0x2161266c

.field public static final ID_SCU_PARK_DATA_1:I = 0x2161263e

.field public static final ID_SCU_PARK_DATA_2:I = 0x2161262e

.field public static final ID_SCU_PARK_DATA_3:I = 0x21612637

.field public static final ID_SCU_PARK_DATA_4:I = 0x21612633

.field public static final ID_SCU_PARK_DATA_5:I = 0x2161263d

.field public static final ID_SCU_PARK_ERR:I = 0x2140262d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_PARK_SLOT_INFO:I = 0x2161261e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_PHONE_AP_BTN:I = 0x21402638
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_PHONE_CTRL_BTN:I = 0x21402619
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_PHONE_PK_BTN:I = 0x21402617

.field public static final ID_SCU_PHONE_SM_BUTTON:I = 0x21402639

.field public static final ID_SCU_PK_BTN:I = 0x21402618

.field public static final ID_SCU_POSITION_INFO:I = 0x21612620
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_QUIT_NGP_ODD:I = 0x21402696

.field public static final ID_SCU_RADAR_DIST:I = 0x2141269c

.field public static final ID_SCU_RADAR_DISTANCE_EN:I = 0x21402646

.field public static final ID_SCU_RADAR_DIS_ACTIVE:I = 0x2140264f

.field public static final ID_SCU_RADAR_DIS_LEVEL:I = 0x2141269d

.field public static final ID_SCU_RADAR_WARNING_VOICE_STATUS:I = 0x21402611

.field public static final ID_SCU_RCTA_LEFT_WARNING:I = 0x21402625

.field public static final ID_SCU_RCTA_RIGHT_WARNING:I = 0x21402626

.field public static final ID_SCU_RCTA_ST:I = 0x21402689

.field public static final ID_SCU_RCTA_WARNING:I = 0x21412654
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_RCW_WARNING:I = 0x2140267b

.field public static final ID_SCU_RDATTR_DETAIL_RD:I = 0x2140266e

.field public static final ID_SCU_REAR_CROSS_EMERGENCY:I = 0x21402606

.field public static final ID_SCU_REAR_MINIDIST_EN:I = 0x2140264c

.field public static final ID_SCU_RECV_ID:I = 0x21402612

.field public static final ID_SCU_REMOTE_CTRL_BTN:I = 0x21402615

.field public static final ID_SCU_REMOTE_DRIVE_BTN:I = 0x21402616

.field public static final ID_SCU_REMOTE_FLAG:I = 0x214026d9

.field public static final ID_SCU_REMOTE_PK_BTN:I = 0x2140261a

.field public static final ID_SCU_REVERSING_TRACK_ST:I = 0x2140270a

.field public static final ID_SCU_RMIRROR_CTRL:I = 0x21402650

.field public static final ID_SCU_ROAD_ATTR:I = 0x21402668
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_ROAD_ATTR_PK_RD:I = 0x2141266f

.field public static final ID_SCU_ROAD_ATTR_RD:I = 0x214026db

.field public static final ID_SCU_RRADAR_DIST:I = 0x214026f7

.field public static final ID_SCU_RRADAR_DIS_LEVEL:I = 0x214026f5

.field public static final ID_SCU_RVIEWMIRROR_SW_ST:I = 0x2140268f

.field public static final ID_SCU_R_AVM_SLOT:I = 0x21612663

.field public static final ID_SCU_SDC_AUTOMODE_STATUS:I = 0x214026b4

.field public static final ID_SCU_SDC_CTRL_CDU_TIPS:I = 0x214026a9

.field public static final ID_SCU_SDC_CTRL_CDU_TTS:I = 0x214026aa

.field public static final ID_SCU_SDC_CTRL_INDEX1:I = 0x214026b5

.field public static final ID_SCU_SDC_CTRL_INDEX2:I = 0x214026b6

.field public static final ID_SCU_SDC_CTRL_URADARVOICE_TONE:I = 0x214026a6

.field public static final ID_SCU_SDC_DOOR_DETECTION:I = 0x2141269b

.field public static final ID_SCU_SDC_L1_INDEX_N:I = 0x214026c9

.field public static final ID_SCU_SDC_LBLIND_STATUS:I = 0x214026b0

.field public static final ID_SCU_SDC_LRADAR_STATUS:I = 0x214026af

.field public static final ID_SCU_SDC_LSCENE_STATUS:I = 0x214026b1

.field public static final ID_SCU_SDC_R1_INDEX_N:I = 0x214026c8

.field public static final ID_SCU_SDC_RBLIND_STATUS:I = 0x214026b2

.field public static final ID_SCU_SDC_RRADAR_STATUS:I = 0x214026ae

.field public static final ID_SCU_SDC_RSCENE_STATUS:I = 0x214026b3

.field public static final ID_SCU_SDC_URADAR_FUSION:I = 0x214126ca

.field public static final ID_SCU_SDC_URADAR_L1_DIST:I = 0x214026bf

.field public static final ID_SCU_SDC_URADAR_L1_ERROR_ST:I = 0x214026c3

.field public static final ID_SCU_SDC_URADAR_L1_PEAKLEVEL:I = 0x214026c1

.field public static final ID_SCU_SDC_URADAR_L1_RT1:I = 0x214026c6

.field public static final ID_SCU_SDC_URADAR_L1_ST:I = 0x214026c2

.field public static final ID_SCU_SDC_URADAR_L1_TOF:I = 0x214026c0

.field public static final ID_SCU_SDC_URADAR_L1_WAVEWIDTH:I = 0x214026c7

.field public static final ID_SCU_SDC_URADAR_LDOOR_DIST:I = 0x214026b7

.field public static final ID_SCU_SDC_URADAR_LHALL_COUNTER:I = 0x214026cb

.field public static final ID_SCU_SDC_URADAR_R1_DIST:I = 0x214026ba

.field public static final ID_SCU_SDC_URADAR_R1_ERROR_ST:I = 0x214026be

.field public static final ID_SCU_SDC_URADAR_R1_PEAKLEVEL:I = 0x214026bc

.field public static final ID_SCU_SDC_URADAR_R1_RT1:I = 0x214026c4

.field public static final ID_SCU_SDC_URADAR_R1_ST:I = 0x214026bd

.field public static final ID_SCU_SDC_URADAR_R1_TOF:I = 0x214026bb

.field public static final ID_SCU_SDC_URADAR_R1_WAVEWIDTH:I = 0x214026c5

.field public static final ID_SCU_SDC_URADAR_RDOOR_DIST:I = 0x214026b8

.field public static final ID_SCU_SDC_URADAR_RHALL_COUNTER:I = 0x214026cc

.field public static final ID_SCU_SIDECAM_FAILURE_ST:I = 0x21412694

.field public static final ID_SCU_SIDE_REVERSION_WARNING:I = 0x2140262a

.field public static final ID_SCU_SLA_ALARM_SWST:I = 0x2140268d

.field public static final ID_SCU_SLA_ST:I = 0x21402683

.field public static final ID_SCU_SLA_WARNING_TYPE:I = 0x2140260c

.field public static final ID_SCU_SLIF_ST:I = 0x214026e1

.field public static final ID_SCU_SLOTS_NUM:I = 0x2140266d

.field public static final ID_SCU_SLOT_FOR_PARK:I = 0x21612664

.field public static final ID_SCU_SLOT_THETA:I = 0x21412643

.field public static final ID_SCU_SLOT_VOICE:I = 0x2140262f

.field public static final ID_SCU_SL_DRV_SET:I = 0x214026dc

.field public static final ID_SCU_SL_SPD_RANGE:I = 0x214026dd

.field public static final ID_SCU_SPDLIT_VOCREMIND:I = 0x214026ea

.field public static final ID_SCU_SPD_LIMIT_ST:I = 0x214026da

.field public static final ID_SCU_SRR_RADAR_EMISS_ST:I = 0x214126fb

.field public static final ID_SCU_SS_LSYS_ST:I = 0x217026a4

.field public static final ID_SCU_SS_RSYS_ST:I = 0x217026a5

.field public static final ID_SCU_STEERING_WHEEL_EPS:I = 0x214026cd

.field public static final ID_SCU_SUPER_PARK_ACTIVE:I = 0x21402614

.field public static final ID_SCU_TAIL_RADAR_DATA:I = 0x2161261d

.field public static final ID_SCU_TAIL_RADAR_FAULT_ST:I = 0x2141264d

.field public static final ID_SCU_TAIL_RADAR_LVL:I = 0x2141264e

.field public static final ID_SCU_TEST:I = 0x21402635

.field public static final ID_SCU_URADAR_DATA_INFO:I = 0x216126d6

.field public static final ID_SCU_URADAR_FDIST:I = 0x21402651

.field public static final ID_SCU_URADAR_INFO:I = 0x2161261f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SCU_URADAR_RDIST:I = 0x21402652

.field public static final ID_SCU_URADAR_VOICE_ACTIVE:I = 0x21402665

.field public static final ID_SCU_URADAR_VOICE_TONE:I = 0x21402666

.field public static final ID_SCU_VOICE_LANE_CHANGE:I = 0x214026ce

.field public static final ID_SCU_XPILOT_ST:I = 0x21402628

.field public static final ID_TRAFFIC_SIGN_RECOGNITION:I = 0x2140260b

.field public static final L2_INACTIVATED_FOR_DANGER_AREA:I = 0x7

.field public static final LANE_CHANGE_MODE_NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LANE_CHANGE_MODE_OFF:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LANE_CHANGE_MODE_ON:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LANE_CHANGE_MODE_SOFT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LCC_BANNED_DUE_TO_ROAD_ATTRIBUTE:I = 0x4

.field public static final LCC_BANNED_DUE_TO_ROAD_CURVE:I = 0x2

.field public static final LCC_BANNED_DUE_TO_SWITCH_OFF:I = 0x6

.field public static final LCC_BANNED_DUE_TO_UNCLEAR_LANE:I = 0x3

.field public static final LCC_BANNED_DUE_TO_WIPER_SPD:I = 0x1

.field public static final LEFT_SIDE_WARNING_INDEX:I = 0x0

.field public static final LSS_SWST_ALARM_ACTIVE:I = 0x1

.field public static final LSS_SWST_DEVIATION_ACTIVE:I = 0x2

.field public static final LSS_SWST_GLOBAL_ACTIVE:I = 0x3

.field public static final LSS_SWST_OFF:I = 0x0

.field public static final MEMORY_PARKING_EXECUTE:I = 0x3

.field public static final MEMORY_PARKING_INITIAL:I = 0x0

.field public static final MEMORY_PARKING_READY:I = 0x2

.field public static final MEMORY_PARKING_SAFE_STOP:I = 0x4

.field public static final MEMORY_PARKING_STANDBY:I = 0x1

.field public static final MRR_FAILURE_STATUS_BLINDNESS:I = 0x2

.field public static final MRR_FAILURE_STATUS_FAILURE:I = 0x1

.field public static final MRR_FAILURE_STATUS_MISALIGNMENT:I = 0x3

.field public static final MRR_FAILURE_STATUS_NO_FAILURE:I = 0x0

.field public static final NAVI_LINK_TYPE_BRIDGE:I = 0x4

.field public static final NAVI_LINK_TYPE_COMMON:I = 0x1

.field public static final NAVI_LINK_TYPE_ELEVATED_RD:I = 0x5

.field public static final NAVI_LINK_TYPE_FERRY:I = 0x2

.field public static final NAVI_LINK_TYPE_NULL:I = 0x0

.field public static final NAVI_LINK_TYPE_TUNNEL:I = 0x3

.field public static final NGP_INFO_TIPS_ATTENTION_BY_LONG_TIME_NOT_LC:I = 0x4

.field public static final NGP_INFO_TIPS_ATTENTION_BY_WORK_ROAD:I = 0x7

.field public static final NGP_INFO_TIPS_BLOCKED_ROAD_AND_PLS_MANUAL_LC:I = 0x6

.field public static final NGP_INFO_TIPS_END_POINT_AND_PLS_MANUAL_LC:I = 0x5

.field public static final NGP_INFO_TIPS_HD_MAP_IS_READY:I = 0x9

.field public static final NGP_INFO_TIPS_NGP_WILL_QUIT:I = 0x8

.field public static final NGP_INFO_TIPS_NO_DISPLAY:I = 0x0

.field public static final NGP_INFO_TIPS_PLS_EYES_ON:I = 0x2

.field public static final NGP_INFO_TIPS_PLS_HANDS_ON:I = 0x1

.field public static final NGP_INFO_TIPS_PLS_TAKE_OVER_CAR:I = 0x3

.field public static final NGP_INFO_TIPS_TIPS_A:I = 0xa

.field public static final NGP_INFO_TIPS_TIPS_B:I = 0xb

.field public static final NGP_INFO_TIPS_TIPS_C:I = 0xc

.field public static final NGP_INFO_TIPS_TIPS_D:I = 0xd

.field public static final NGP_INFO_TIPS_TIPS_E:I = 0xe

.field public static final NGP_INFO_TIPS_TIPS_F:I = 0xf

.field public static final NGP_LANE_CHANGE_MODE_MODERATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NGP_LANE_CHANGE_MODE_RADICAL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NGP_LC_TIPS_3S_LATER_WILL_UPDATE_TO_NGP:I = 0x4

.field public static final NGP_LC_TIPS_ENTER_NGP_ODD:I = 0x2

.field public static final NGP_LC_TIPS_LANE_CHANGE_CANCEL:I = 0x1c

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_LEFT_BY_MERGE:I = 0x17

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_LEFT_BY_SLOW_CAR:I = 0xb

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_LEFT_FAST_LANE:I = 0x6

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_RIGHT_BY_MERGE:I = 0x18

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_RIGHT_BY_RAMP:I = 0x11

.field public static final NGP_LC_TIPS_LC_ACTIVE_TO_RIGHT_BY_SLOW_CAR:I = 0xc

.field public static final NGP_LC_TIPS_LC_NEED_CFM_2_LEFT_BY_SLOW_CAR:I = 0x9

.field public static final NGP_LC_TIPS_LC_NEED_CFM_TO_LEFT_BY_MERGE:I = 0x15

.field public static final NGP_LC_TIPS_LC_NEED_CFM_TO_LEFT_FAST_LANE:I = 0x5

.field public static final NGP_LC_TIPS_LC_NEED_CFM_TO_RIGHT_BY_MERGE:I = 0x16

.field public static final NGP_LC_TIPS_LC_NEED_CFM_TO_RIGHT_BY_RAMP:I = 0x10

.field public static final NGP_LC_TIPS_LC_NEED_CFM_TO_RIGHT_BY_SLOW_CAR:I = 0xa

.field public static final NGP_LC_TIPS_LC_TRIGGER_BY_2KM_FAST_LANE:I = 0x1e

.field public static final NGP_LC_TIPS_LC_WAIT_SIDE_CAR_2_LEFT_FAST_LANE:I = 0x7

.field public static final NGP_LC_TIPS_LC_WAIT_SIDE_CAR_BY_MERGE:I = 0x19

.field public static final NGP_LC_TIPS_LC_WAIT_SIDE_CAR_BY_RAMP:I = 0x12

.field public static final NGP_LC_TIPS_LC_WAIT_SIDE_CAR_BY_SLOW_CAR:I = 0xd

.field public static final NGP_LC_TIPS_LC_WAIT_SOLID_LANE_BY_MERGE:I = 0x1a

.field public static final NGP_LC_TIPS_LC_WAIT_SOLID_LANE_BY_RAMP:I = 0x13

.field public static final NGP_LC_TIPS_LC_WAIT_SOLID_LANE_BY_SLOW_CAR:I = 0xe

.field public static final NGP_LC_TIPS_LC_WAIT_SOLID_LANE_LEFT_FAST_LANE:I = 0x8

.field public static final NGP_LC_TIPS_LC_WILL_TRIGGER_BY_2KM_RAMP:I = 0xf

.field public static final NGP_LC_TIPS_LC_WILL_TRIGGER_BY_2KM_TUNNEL:I = 0x1d

.field public static final NGP_LC_TIPS_NEED_TAKEOVER_BY_NOT_ENTER_RAMP:I = 0x14

.field public static final NGP_LC_TIPS_NGP_IS_ACTIVE:I = 0x3

.field public static final NGP_LC_TIPS_NGP_STANDBY:I = 0x1

.field public static final NGP_LC_TIPS_NO_DISPLAY:I = 0x0

.field public static final NGP_LC_TIPS_WILL_EXIST_ODD_BY_200M:I = 0x1b

.field public static final NGP_MODE_STATUS_ACC_MODE:I = 0x2

.field public static final NGP_MODE_STATUS_DRIVER_MODE:I = 0x1

.field public static final NGP_MODE_STATUS_LCC_MODE:I = 0x3

.field public static final NGP_MODE_STATUS_LCC_MODE_2:I = 0x4

.field public static final NGP_MODE_STATUS_NGP_MODE:I = 0x5

.field public static final NGP_MODE_STATUS_NGP_MODE_2:I = 0x6

.field public static final NGP_OPERATION_BUTTON_STATUS_CANCEL_LANE_CHANGE:I = 0x3

.field public static final NGP_OPERATION_BUTTON_STATUS_CONFIRM_LANE_CHANGE:I = 0x4

.field public static final NGP_OPERATION_BUTTON_STATUS_NO_DISPLAY:I = 0x0

.field public static final NGP_OPERATION_BUTTON_STATUS_OPERATION_5:I = 0x5

.field public static final NGP_OPERATION_BUTTON_STATUS_OPERATION_6:I = 0x6

.field public static final NGP_OPERATION_BUTTON_STATUS_OPERATION_7:I = 0x7

.field public static final NGP_OPERATION_BUTTON_STATUS_QUIT_NGP:I = 0x1

.field public static final NGP_OPERATION_BUTTON_STATUS_START_NGP:I = 0x2

.field public static final NGP_OPERATION_BUTTON_SW_CANCEL_LANE_CHANGE:I = 0x3

.field public static final NGP_OPERATION_BUTTON_SW_QUIT_NGP:I = 0x2

.field public static final NGP_OPERATION_BUTTON_SW_START_NGP:I = 0x1

.field public static final NGP_REMIND_MODE_A:I = 0x2

.field public static final NGP_REMIND_MODE_AUDIO:I = 0x1

.field public static final NGP_REMIND_MODE_VOICE:I = 0x0

.field public static final NGP_SW_ST_ACC_STANDBY:I = 0x2

.field public static final NGP_SW_ST_ALC_ACTIVE:I = 0xe

.field public static final NGP_SW_ST_ALC_WAIT:I = 0xd

.field public static final NGP_SW_ST_BRAKE_ONLY:I = 0x6

.field public static final NGP_SW_ST_HOLD:I = 0x9

.field public static final NGP_SW_ST_LCC_ACTIVE:I = 0xb

.field public static final NGP_SW_ST_LCC_STANDBY:I = 0x3

.field public static final NGP_SW_ST_LC_ACTIVE:I = 0x11

.field public static final NGP_SW_ST_LC_CONFIRM:I = 0xf

.field public static final NGP_SW_ST_LC_WAIT:I = 0x10

.field public static final NGP_SW_ST_NGP_ACTIVE:I = 0xc

.field public static final NGP_SW_ST_NGP_BAN_2_RADAR:I = 0x19

.field public static final NGP_SW_ST_NGP_BAN_2_TRAILER_MODE:I = 0x18

.field public static final NGP_SW_ST_NGP_STANDBY:I = 0x4

.field public static final NGP_SW_ST_NGP_STATE_19:I = 0x13

.field public static final NGP_SW_ST_NGP_STATE_20:I = 0x14

.field public static final NGP_SW_ST_NGP_STATE_21:I = 0x15

.field public static final NGP_SW_ST_OFF:I = 0x0

.field public static final NGP_SW_ST_OFF_BY_RADAR_OFF:I = 0x3

.field public static final NGP_SW_ST_OFF_BY_TRAILER_MODE:I = 0x2

.field public static final NGP_SW_ST_ON:I = 0x1

.field public static final NGP_SW_ST_OVERRIDE:I = 0x7

.field public static final NGP_SW_ST_PASSIVE:I = 0x1

.field public static final NGP_SW_ST_PERMANENT_FAILURE:I = 0x17

.field public static final NGP_SW_ST_SACC_ACTIVE:I = 0x5

.field public static final NGP_SW_ST_SAFE_STOP:I = 0x12

.field public static final NGP_SW_ST_STAND:I = 0x8

.field public static final NGP_SW_ST_TEMPORARY_FAILURE:I = 0x16

.field public static final NGP_SW_ST_TJA_ACTIVE:I = 0xa

.field public static final NOT_DEFINED:I = 0x0

.field public static final NO_CARPORT:I = 0x0

.field public static final NO_REMIND_VOICE:I = 0x0

.field public static final PARK_BY_MEMORY_IN_INITIALIZATION:I = 0x0

.field public static final QUIT_NGP_ODD_STATUS_NO_DISPLAY:I = 0x0

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_100M:I = 0x3

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_150M:I = 0x2

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_200M:I = 0x1

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_25M:I = 0x6

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_50M:I = 0x5

.field public static final QUIT_NGP_ODD_STATUS_WILL_EXIST_ODD_BY_75M:I = 0x4

.field public static final RADAR_BLOCK_ST:I = 0x2

.field public static final RADAR_DISPLAY_DISABLE:I = 0x0

.field public static final RADAR_DISPLAY_ENABLE:I = 0x1

.field public static final RADAR_DISPLAY_LEVEL_1:I = 0x1

.field public static final RADAR_DISPLAY_LEVEL_2:I = 0x2

.field public static final RADAR_EMISS_ST_FIAL:I = 0x2

.field public static final RADAR_EMISS_ST_OFF:I = 0x0

.field public static final RADAR_EMISS_ST_ON:I = 0x1

.field public static final RADAR_FAULT_ST:I = 0x1

.field public static final RADAR_NORMAL_ST:I = 0x0

.field public static final RADAR_TONE_1:I = 0x1

.field public static final RADAR_TONE_2:I = 0x2

.field public static final RADAR_TONE_3:I = 0x3

.field public static final RADAR_TONE_4:I = 0x4

.field public static final RADAR_TONE_5:I = 0x5

.field public static final RADAR_TONE_6:I = 0x6

.field public static final RADAR_TONE_NONE:I = 0x0

.field public static final RADAR_VOICE_DISABLE:I = 0x0

.field public static final RADAR_VOICE_ENABLE:I = 0x1

.field public static final REAR_MIRROR_FOLD_STATE:I = 0x1

.field public static final REAR_MIRROR_NO_OPERATION:I = 0x0

.field public static final REAR_MIRROR_UNFOLD_STATE:I = 0x2

.field public static final REAR_VIEW_MIRROR_ADJUSTMENT_PAGE_CLOSED:I = 0x0

.field public static final REAR_VIEW_MIRROR_ADJUSTMENT_PAGE_OPENED:I = 0x1

.field public static final REMIND_VOICE_1:I = 0x1

.field public static final REMIND_VOICE_2:I = 0x2

.field public static final REMIND_VOICE_3:I = 0x3

.field public static final REMIND_VOICE_4:I = 0x4

.field public static final REMIND_VOICE_5:I = 0x5

.field public static final REMIND_VOICE_6:I = 0x6

.field public static final REMIND_VOICE_7:I = 0x7

.field public static final REMOTE_FLAG_NO:I = 0x0

.field public static final REMOTE_FLAG_YES:I = 0x1

.field public static final RESPONSE_SCU_ACTIVE:I = 0x3

.field public static final RESPONSE_SCU_NO_FAULT:I = 0x0

.field public static final RESPONSE_SCU_PERMANENT_ERROR:I = 0x2

.field public static final RESPONSE_SCU_TEMPORARY_ERROR:I = 0x1

.field public static final RETURN_FROM_EXCEPTION:I = -0x1

.field public static final RIGHT_SIDE_WARNING_INDEX:I = 0x1

.field public static final ROAD_ATTR_NOT_DEFINED:I = 0x0

.field public static final ROAD_ATTR_ROAD_FASTWAY_IN_CITY:I = 0x2

.field public static final ROAD_ATTR_ROAD_HIGHWAY:I = 0x1

.field public static final ROAD_CLASS_CITY_SPEED_WAY:I = 0x7

.field public static final ROAD_CLASS_COMMON_ROAD:I = 0xa

.field public static final ROAD_CLASS_COUNTRY_ROAD:I = 0x4

.field public static final ROAD_CLASS_FREE_WAY:I = 0x1

.field public static final ROAD_CLASS_IN_COUNTRY_ROAD:I = 0x6

.field public static final ROAD_CLASS_MAIN_ROAD:I = 0x8

.field public static final ROAD_CLASS_NATIONAL_ROAD:I = 0x2

.field public static final ROAD_CLASS_NON_NAVI_ROAD:I = 0xb

.field public static final ROAD_CLASS_NOT_DEFINED:I = 0x0

.field public static final ROAD_CLASS_PROVINCE_ROAD:I = 0x3

.field public static final ROAD_CLASS_RURAL_ROAD:I = 0x5

.field public static final ROAD_CLASS_SECONDARY_ROAD:I = 0x9

.field public static final ROAD_VOICE_1:I = 0x1

.field public static final ROAD_VOICE_17:I = 0x17

.field public static final ROAD_VOICE_18:I = 0x18

.field public static final ROAD_VOICE_19:I = 0x19

.field public static final ROAD_VOICE_1A:I = 0x1a

.field public static final ROAD_VOICE_1B:I = 0x1b

.field public static final ROAD_VOICE_1C:I = 0x1c

.field public static final ROAD_VOICE_1D:I = 0x1d

.field public static final ROAD_VOICE_1E:I = 0x1e

.field public static final ROAD_VOICE_1F:I = 0x1f

.field public static final ROAD_VOICE_2:I = 0x2

.field public static final ROAD_VOICE_20:I = 0x20

.field public static final ROAD_VOICE_23:I = 0x23

.field public static final ROAD_VOICE_3:I = 0x3

.field public static final ROAD_VOICE_4:I = 0x4

.field public static final ROAD_VOICE_5:I = 0x5

.field public static final ROAD_VOICE_6:I = 0x6

.field public static final ROAD_VOICE_7:I = 0x7

.field public static final ROAD_VOICE_8:I = 0x8

.field public static final ROAD_VOICE_9:I = 0x9

.field public static final ROAD_VOICE_A:I = 0xa

.field public static final ROAD_VOICE_B:I = 0xb

.field public static final ROAD_VOICE_C:I = 0xc

.field public static final ROAD_VOICE_D:I = 0xd

.field public static final ROAD_VOICE_DEFAULT:I = 0x0

.field public static final SCU_ACC_ACTIVE:I = 0x3

.field public static final SCU_ACC_BRAKE_ONLY:I = 0x4

.field public static final SCU_ACC_FAILURE:I = 0x9

.field public static final SCU_ACC_OFF:I = 0x0

.field public static final SCU_ACC_OVERRIDE:I = 0x5

.field public static final SCU_ACC_PASSIVE:I = 0x1

.field public static final SCU_ACC_PERMANENT_FAILURE:I = 0x9

.field public static final SCU_ACC_STANDACTIVE:I = 0x6

.field public static final SCU_ACC_STANDBY:I = 0x2

.field public static final SCU_ACC_STANDWAIT:I = 0x7

.field public static final SCU_ACC_TEMPORARY_FAILURE:I = 0x8

.field public static final SCU_ALC_ACTIVE:I = 0x1

.field public static final SCU_ALC_BAN_2_TRAILER_MODE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_ALC_CANCEL:I = 0x4

.field public static final SCU_ALC_FAILURE:I = 0x7

.field public static final SCU_ALC_FINISH:I = 0x5

.field public static final SCU_ALC_INACTIVE:I = 0x0

.field public static final SCU_ALC_OFF:I = 0x6

.field public static final SCU_ALC_OFF_BY_RADAR_OFF:I = 0xa

.field public static final SCU_ALC_OFF_BY_TRAILER_MODE:I = 0x9

.field public static final SCU_ALC_PASSIVE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_ALC_WAIT:I = 0x2

.field public static final SCU_ALC_WAIT_TIMEOUT:I = 0x3

.field public static final SCU_AUTO_PARK_AP_ST_APA:I = 0x6

.field public static final SCU_AUTO_PARK_AP_ST_EXCUTE:I = 0x3

.field public static final SCU_AUTO_PARK_AP_ST_INITIAL:I = 0x0

.field public static final SCU_AUTO_PARK_AP_ST_READY:I = 0x2

.field public static final SCU_AUTO_PARK_AP_ST_SAFE_STOP:I = 0x4

.field public static final SCU_AUTO_PARK_AP_ST_STANDBY:I = 0x1

.field public static final SCU_AUTO_PARK_CMD_RESET:I = 0x0

.field public static final SCU_AUTO_PARK_IN_CANCLE:I = 0x2

.field public static final SCU_AUTO_PARK_IN_CONTINUE:I = 0x4

.field public static final SCU_AUTO_PARK_IN_START:I = 0x1

.field public static final SCU_AUTO_PARK_OUT_CANCLE:I = 0x2

.field public static final SCU_AUTO_PARK_OUT_CONTINUE:I = 0x4

.field public static final SCU_AUTO_PARK_OUT_START:I = 0x3

.field public static final SCU_BUTTON_CLOSE_BY_TTM:I = 0x2

.field public static final SCU_BUTTON_OFF:I = 0x0

.field public static final SCU_BUTTON_ON:I = 0x1

.field public static final SCU_CLICK_TYPE_DOUBLE:I = 0x1

.field public static final SCU_CLICK_TYPE_LONGPRESS:I = 0x2

.field public static final SCU_COMMONFB2_SW_FAIL:I = 0x2

.field public static final SCU_COMMONFB2_SW_NO_FAULT:I = 0x5

.field public static final SCU_COMMONFB2_SW_OFF:I = 0x0

.field public static final SCU_COMMONFB2_SW_ON:I = 0x1

.field public static final SCU_COMMONFB2_SW_PERMANENT_ERROR:I = 0x4

.field public static final SCU_COMMONFB2_SW_TEMPORARY_ERROR:I = 0x3

.field public static final SCU_COMMONFB_SW_ACTIVE:I = 0x3

.field public static final SCU_COMMONFB_SW_FUNC_LIMITED:I = 0x7

.field public static final SCU_COMMONFB_SW_LCC_BAN_2_TRAILER_MODE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_COMMONFB_SW_LCC_OFF_BY_RADAR_OFF:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_COMMONFB_SW_NO_FAULT:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_COMMONFB_SW_OFF:I = 0x0

.field public static final SCU_COMMONFB_SW_PASSIVE:I = 0x1

.field public static final SCU_COMMONFB_SW_PERMANENT_FAIL:I = 0x5

.field public static final SCU_COMMONFB_SW_STANDBY:I = 0x2

.field public static final SCU_COMMONFB_SW_TEMPORARY_FAIL:I = 0x4

.field public static final SCU_CONTINUE_AUTO_PARK:I = 0x4

.field public static final SCU_CRUISE_CTRL_ACTIVE_FAILED:I = 0x1

.field public static final SCU_CRUISE_CTRL_CANCELLED_ACTIVELY:I = 0x2

.field public static final SCU_CRUISE_CTRL_CANCELLED_PASSIVELY:I = 0x8

.field public static final SCU_DDAW_STATUS_FORCE_ON:I = 0x1

.field public static final SCU_DDAW_STATUS_OFF:I = 0x0

.field public static final SCU_DDAW_STATUS_ON:I = 0x2

.field public static final SCU_DSM_TIRD_DISTRACTION_SEN_HIGH:I = 0x3

.field public static final SCU_DSM_TIRD_DISTRACTION_SEN_LOW:I = 0x2

.field public static final SCU_DSM_TIRD_DISTRACTION_SEN_MEDIUM:I = 0x1

.field public static final SCU_EVENT_INFO_RD_CONSTRUCTION:I = 0x2

.field public static final SCU_EVENT_INFO_RD_NOT_DEFINED:I = 0x0

.field public static final SCU_EVENT_INFO_RD_TRAFFIC_ACCIDENT:I = 0x1

.field public static final SCU_EXIT_AUTO_PARK:I = 0x2

.field public static final SCU_FB_SW_LCC_OFF_BY_RADAR_OFF:I = 0x2

.field public static final SCU_FB_SW_LCC_OFF_BY_TRAILER_MODE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_FB_SW_OFF_BY_TRAILER_MODE:I = 0x7

.field public static final SCU_FB_SW_UNABLE_ACTIVATE_LCC:I = 0x6

.field public static final SCU_FCWAEB_BLINDNESS:I = 0x7

.field public static final SCU_FCWAEB_FUNC_LIMITED:I = 0xa

.field public static final SCU_FCWAEB_INITIALIZATION_STATE:I = 0x8

.field public static final SCU_FCWAEB_NO_FAULT:I = 0x5

.field public static final SCU_FCWAEB_OFF_BY_RADAR_EMISSION_OFF:I = 0x9

.field public static final SCU_FCWAEB_PERMANENT_BLOCK:I = 0x4

.field public static final SCU_FCWAEB_PERMANENT_FAIL:I = 0x3

.field public static final SCU_FCWAEB_SEN_ST_HIGH:I = 0x3

.field public static final SCU_FCWAEB_SEN_ST_LOW:I = 0x2

.field public static final SCU_FCWAEB_SEN_ST_MEDIUM:I = 0x1

.field public static final SCU_FCWAEB_SEN_ST_UNAVAILABLE:I = 0x0

.field public static final SCU_FCWAEB_SIDE_VIEW_CAMERA_BLOCK:I = 0xb

.field public static final SCU_FCWAEB_SW_OFF:I = 0x0

.field public static final SCU_FCWAEB_SW_ON:I = 0x1

.field public static final SCU_FCWAEB_TEMPORARY_FAIL:I = 0x2

.field public static final SCU_FCWAEB_VRU_FAILURE:I = 0x6

.field public static final SCU_FORWARD_PARKING:I = 0x2

.field public static final SCU_FRONT_COLLISION_DISABLE:I = 0x0

.field public static final SCU_FRONT_COLLISION_ENABLE:I = 0x1

.field public static final SCU_FSD_SW_OFF:I = 0x0

.field public static final SCU_FSD_SW_ON:I = 0x1

.field public static final SCU_Formway_RD_COMMON_LINK:I = 0xf

.field public static final SCU_Formway_RD_CROSS_LINK:I = 0x2

.field public static final SCU_Formway_RD_ENTRANCE:I = 0xa

.field public static final SCU_Formway_RD_EXITLINK:I = 0x9

.field public static final SCU_Formway_RD_JCT:I = 0x3

.field public static final SCU_Formway_RD_MAIN_ROAD:I = 0x1

.field public static final SCU_Formway_RD_NULL:I = 0x0

.field public static final SCU_Formway_RD_ROUND_ABOUT:I = 0x4

.field public static final SCU_Formway_RD_SERVICE:I = 0x5

.field public static final SCU_Formway_RD_SERVICE_JCT_ROAD:I = 0x11

.field public static final SCU_Formway_RD_SERVICE_SLIP_JCT_ROAD:I = 0x13

.field public static final SCU_Formway_RD_SERVICE_SLIP_ROAD:I = 0x12

.field public static final SCU_Formway_RD_SLIDE_ROAD:I = 0x7

.field public static final SCU_Formway_RD_SLIPJCT:I = 0x8

.field public static final SCU_Formway_RD_SLIP_ROAD:I = 0x6

.field public static final SCU_Formway_RD_TURN_LEFT_LINE_A:I = 0xd

.field public static final SCU_Formway_RD_TURN_LEFT_LINE_B:I = 0xe

.field public static final SCU_Formway_RD_TURN_LEFT_RIGHT_LINE:I = 0x10

.field public static final SCU_Formway_RD_TURN_RIGHT_LINE_A:I = 0xb

.field public static final SCU_Formway_RD_TURN_RIGHT_LINE_B:I = 0xc

.field public static final SCU_HIC_SW_ACTIVE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_BRAKE_ONLY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_OVERRIDE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_PASSIVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_PERMANENT_FAILURE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_STANDACTIVE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_STANDBY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_STANDWAIT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_HIC_SW_TEMPORARY_FAILURE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_INACTIVE_FOR_DOORS_UNLOCK:I = 0x5

.field public static final SCU_INACTIVE_FOR_EPB_ACTIVE:I = 0x7

.field public static final SCU_INACTIVE_FOR_NOT_D_SHIFT:I = 0x6

.field public static final SCU_INACTIVE_FOR_SETBELT_UNLOCK:I = 0x4

.field public static final SCU_INTELLIGENT_SPEED_LIMIT_DISABLE:I = 0x0

.field public static final SCU_INTELLIGENT_SPEED_LIMIT_ENABLE:I = 0x1

.field public static final SCU_ISLC_SW_ACTIVE:I = 0x3

.field public static final SCU_ISLC_SW_OFF:I = 0x0

.field public static final SCU_ISLC_SW_OVERRIDE:I = 0x5

.field public static final SCU_ISLC_SW_PASSIVE:I = 0x1

.field public static final SCU_ISLC_SW_PERMANENT_FAIL:I = 0x7

.field public static final SCU_ISLC_SW_PERMANENT_NO_FAULT:I = 0x8

.field public static final SCU_ISLC_SW_STANDBY:I = 0x2

.field public static final SCU_ISLC_SW_STANDWAIT:I = 0x4

.field public static final SCU_ISLC_SW_ST_CONTROL:I = 0x3

.field public static final SCU_ISLC_SW_ST_DISPLAY:I = 0x1

.field public static final SCU_ISLC_SW_ST_ISLC_ON:I = 0x1

.field public static final SCU_ISLC_SW_ST_OFF:I = 0x0

.field public static final SCU_ISLC_SW_ST_SLIF_ON:I = 0x2

.field public static final SCU_ISLC_SW_ST_WARNING:I = 0x2

.field public static final SCU_ISLC_SW_TEMPORARY_FAIL:I = 0x6

.field public static final SCU_LANE_CHANGE_ASSIST_DISABLE:I = 0x0

.field public static final SCU_LANE_CHANGE_ASSIST_ENABLE:I = 0x1

.field public static final SCU_LATCTRL_NO_DISPLAY:I = 0x0

.field public static final SCU_LCC_ACTIVATED:I = 0x9

.field public static final SCU_LCC_BANNED_DUE_TO_NO_TAKEOVER:I = 0x8

.field public static final SCU_LCC_DELAY_QUIT:I = 0x5

.field public static final SCU_LCC_DELAY_QUIT_COMPLETED:I = 0xa

.field public static final SCU_LCC_DISTRACTION_LEVEL1:I = 0xc

.field public static final SCU_LCC_DISTRACTION_LEVEL2:I = 0xd

.field public static final SCU_LCC_FAILURE:I = 0xb

.field public static final SCU_LCC_QUICK_PASSIVE_QUIT:I = 0xe

.field public static final SCU_LCC_QUICK_QUIT:I = 0x6

.field public static final SCU_LCS_SW_ACTIVE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_PASSIVE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_PERMANENT_FAIL:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_STANDACTIVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_STANDBY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LCS_SW_TEMPORARY_FAIL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_LDW_BUTTON_ON:I = 0x1

.field public static final SCU_LKAINTERVENTION_LONGLY:I = 0x1

.field public static final SCU_LKA_BUTTON_ON:I = 0x2

.field public static final SCU_LKA_STATE_ACTIVE:I = 0x7

.field public static final SCU_LKA_STATE_DEFAULT:I = 0x0

.field public static final SCU_LKA_STATE_ENTER:I = 0x1

.field public static final SCU_LKA_STATE_EXIT:I = 0x2

.field public static final SCU_LKA_STATE_FUNCTION_LIMITED:I = 0xb

.field public static final SCU_LKA_STATE_IN_USE:I = 0x3

.field public static final SCU_LKA_STATE_OFF:I = 0x4

.field public static final SCU_LKA_STATE_OFF_BY_TRAILER_MODE:I = 0xa

.field public static final SCU_LKA_STATE_PASSIVE:I = 0x5

.field public static final SCU_LKA_STATE_PERMANENT_FAIL:I = 0x9

.field public static final SCU_LKA_STATE_STANDBY:I = 0x6

.field public static final SCU_LKA_STATE_TEMPORARY_FAIL:I = 0x8

.field public static final SCU_LONGCTRL_PLEASE_TAKE_OVER:I = 0x3

.field public static final SCU_LONGCTRL_REMIND_NONE:I = 0x0

.field public static final SCU_MODE_INDEX_ACC:I = 0x4

.field public static final SCU_MODE_INDEX_ALC:I = 0x8

.field public static final SCU_MODE_INDEX_CNGP:I = 0xa

.field public static final SCU_MODE_INDEX_HWNGP:I = 0x9

.field public static final SCU_MODE_INDEX_LCC:I = 0x5

.field public static final SCU_MODE_INDEX_LCC_TJA_CAR:I = 0x7

.field public static final SCU_MODE_INDEX_LCC_TJA_LINE:I = 0x6

.field public static final SCU_MODE_INDEX_OFF:I = 0x0

.field public static final SCU_NGP_TIPS_WINDOWS_ST_HORN:I = 0x2

.field public static final SCU_NGP_TIPS_WINDOWS_ST_LIGHT:I = 0x1

.field public static final SCU_NGP_TIPS_WINDOWS_ST_OFF:I = 0x0

.field public static final SCU_NO_WARNING:I = 0x0

.field public static final SCU_OTA_TAG_0:I = 0x0

.field public static final SCU_OTA_TAG_1:I = 0x1

.field public static final SCU_OTA_TAG_2:I = 0x2

.field public static final SCU_OTA_TAG_3:I = 0x3

.field public static final SCU_PHONEPKBUTTON_APIN:I = 0x1

.field public static final SCU_PHONEPKBUTTON_APOUT:I = 0x2

.field public static final SCU_PHONEPKBUTTON_CANCEL:I = 0x5

.field public static final SCU_PHONEPKBUTTON_CONTINUE:I = 0x4

.field public static final SCU_PHONEPKBUTTON_INVALID:I = 0x0

.field public static final SCU_PHONEPKBUTTON_SUSPENG:I = 0x3

.field public static final SCU_PHONESMBUTTON_CALLBACKWORK:I = 0x3

.field public static final SCU_PHONESMBUTTON_CALLENTER:I = 0x1

.field public static final SCU_PHONESMBUTTON_CALLFORWARD:I = 0x2

.field public static final SCU_PHONESMBUTTON_EXITMODE:I = 0x4

.field public static final SCU_PHONESMBUTTON_INVALID:I = 0x0

.field public static final SCU_RADAR_WARNING_TYPE_DISPLAY:I = 0x2

.field public static final SCU_RADAR_WARNING_TYPE_DISPLAY_VOICE:I = 0x1

.field public static final SCU_REMOTE_CTRL_BTN_DOUBLE_CLICK:I = 0x1

.field public static final SCU_REMOTE_CTRL_BTN_LONG_PRESS:I = 0x2

.field public static final SCU_REVERSE_PARKING:I = 0x1

.field public static final SCU_REVERSE_TRACK_ACT_BLOCK:I = 0x8

.field public static final SCU_REVERSE_TRACK_ACT_NORMAL:I = 0x5

.field public static final SCU_REVERSE_TRACK_ACT_PAUSE_1:I = 0x6

.field public static final SCU_REVERSE_TRACK_ACT_PAUSE_2:I = 0x7

.field public static final SCU_REVERSE_TRACK_FINISHED:I = 0xa

.field public static final SCU_REVERSE_TRACK_Initial:I = 0x1

.field public static final SCU_REVERSE_TRACK_OFF:I = 0x0

.field public static final SCU_REVERSE_TRACK_PASSIVE:I = 0x2

.field public static final SCU_REVERSE_TRACK_READY:I = 0x4

.field public static final SCU_REVERSE_TRACK_STANDBY:I = 0x3

.field public static final SCU_REVERSE_TRACK_TERMINATED:I = 0x9

.field public static final SCU_ROAD_ATTR_HOME_PARKING:I = 0x6

.field public static final SCU_ROAD_ATTR_NOT_DEFINED:I = 0x0

.field public static final SCU_ROAD_ATTR_PARKING_TOWER:I = 0x4

.field public static final SCU_ROAD_ATTR_PRIVATE_ROAD:I = 0x2

.field public static final SCU_ROAD_ATTR_PUBLIC_ROAD:I = 0x1

.field public static final SCU_ROAD_ATTR_ROAD_PARKING:I = 0x5

.field public static final SCU_ROAD_ATTR_UNDERGROUND_PARKING:I = 0x3

.field public static final SCU_SIDE_REVERSING_WARNING_DISABLE:I = 0x0

.field public static final SCU_SIDE_REVERSING_WARNING_ENABLE:I = 0x1

.field public static final SCU_SLIF_ACTIVE:I = 0x3

.field public static final SCU_SLIF_OFF:I = 0x0

.field public static final SCU_SLIF_OVERRIDE:I = 0x5

.field public static final SCU_SLIF_PASSIVE:I = 0x1

.field public static final SCU_SLIF_PERMANENT_FAILURE:I = 0x7

.field public static final SCU_SLIF_STANDBY:I = 0x2

.field public static final SCU_SLIF_STANDWAIT:I = 0x4

.field public static final SCU_SLIF_TEMPORARY_FAILURE:I = 0x6

.field public static final SCU_SPEED_LIMIT_NORMAL:I = 0x1

.field public static final SCU_SPEED_LIMIT_OVER_10PERCENT:I = 0x2

.field public static final SCU_START_AUTO_PARK_IN:I = 0x1

.field public static final SCU_START_AUTO_PARK_OUT:I = 0x3

.field public static final SCU_START_VOICE_PARK_IN:I = 0x5

.field public static final SCU_START_VOICE_PARK_OUT:I = 0x6

.field public static final SCU_START_VOICE_PARK_SIDE:I = 0x7

.field public static final SCU_SUPER_PARK_STATUS_NO_BUTTON:I = 0x0

.field public static final SCU_SUPER_PARK_STATUS_SEARCHING:I = 0x1

.field public static final SCU_SUPER_PARK_STATUS_STOP_SEARCHING:I = 0x2

.field public static final SCU_SW_FAIL:I = 0x2

.field public static final SCU_SW_OFF:I = 0x0

.field public static final SCU_SW_OFF_BY_TRAILER_MODE:I = 0x6

.field public static final SCU_SW_OFF_RADAR_EMISSION_OFF:I = 0x3

.field public static final SCU_SW_OFF_TRAILER_MODE:I = 0x4

.field public static final SCU_SW_ON:I = 0x1

.field public static final SCU_TAKE_OVER_LEVEL1:I = 0x2

.field public static final SCU_TAKE_OVER_LEVEL2:I = 0x3

.field public static final SCU_TAKE_OVER_LEVEL3:I = 0x4

.field public static final SCU_TRAFFIC_RECG_FAIL:I = 0x4

.field public static final SCU_TRAFFIC_RECG_FUSION:I = 0x1

.field public static final SCU_TRAFFIC_RECG_NAVIGATION:I = 0x3

.field public static final SCU_TRAFFIC_RECG_OFF:I = 0x0

.field public static final SCU_TRAFFIC_RECG_VIDEO:I = 0x2

.field public static final SCU_UNABLE_TO_ACTIVATE_ALC:I = 0x8

.field public static final SCU_UNABLE_TO_ACTIVATE_LCC:I = 0x7

.field public static final SCU_WARNING_LEVEL1:I = 0x1

.field public static final SCU_WARNING_LEVEL2:I = 0x2

.field public static final SCU_WARNING_LEVEL3:I = 0x3

.field public static final SCU_WARNNING_LEVEL1:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_WARNNING_LEVEL2:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCU_XPILOT_ACTIVE_BY_ALC_DIR_LEFT:I = 0xa

.field public static final SCU_XPILOT_ACTIVE_BY_ALC_DIR_RIGHT:I = 0xb

.field public static final SCU_XPILOT_ACTIVE_BY_CAR:I = 0x5

.field public static final SCU_XPILOT_ACTIVE_BY_LINE:I = 0x4

.field public static final SCU_XPILOT_ACTIVE_ONLY_ACC:I = 0x3

.field public static final SCU_XPILOT_LCC_DELAY_QUIT:I = 0x9

.field public static final SCU_XPILOT_LCC_SUSPEND:I = 0x8

.field public static final SCU_XPILOT_OFF:I = 0x0

.field public static final SCU_XPILOT_PASSIVE:I = 0x1

.field public static final SCU_XPILOT_PERMANENT_FAILURE:I = 0x7

.field public static final SCU_XPILOT_STANDBY:I = 0x2

.field public static final SCU_XPILOT_TEMPORARY_FAILURE:I = 0x6

.field public static final SDC_CONTROL_AEB_ALARM_DISPLAY:I = 0x2

.field public static final SDC_CONTROL_AEB_ALARM_DISPLAY_VOICE:I = 0x1

.field public static final SDC_CONTROL_AEB_ALARM_OFF:I = 0x0

.field public static final SDC_CONTROL_INDEX_0:I = 0x0

.field public static final SDC_CONTROL_INDEX_1:I = 0x1

.field public static final SDC_CONTROL_INDEX_2:I = 0x2

.field public static final SDC_CONTROL_INDEX_3:I = 0x3

.field public static final SDC_DESIGN_SCENE:I = 0x0

.field public static final SDC_NOT_DESIGN_SCENE:I = 0x1

.field public static final SDC_NOT_RADAR_BLIND_AREA:I = 0x0

.field public static final SDC_RADAR_BLIND_AREA:I = 0x1

.field public static final SDC_RADAR_STATUS_FAULT:I = 0x1

.field public static final SDC_RADAR_STATUS_NORMAL:I = 0x0

.field public static final SDC_TIPS_1:I = 0x1

.field public static final SDC_TIPS_2:I = 0x2

.field public static final SDC_TIPS_3:I = 0x3

.field public static final SDC_TIPS_NONE:I = 0x0

.field public static final SDC_TTS_1:I = 0x1

.field public static final SDC_TTS_2:I = 0x2

.field public static final SDC_TTS_3:I = 0x3

.field public static final SDC_TTS_NONE:I = 0x0

.field public static final SEATBELTREQ_FASTEN:I = 0x1

.field public static final SEATBELTREQ_NONE:I = 0x0

.field public static final SPEED_LIMIT_ACTIVE:I = 0x3

.field public static final SPEED_LIMIT_DRIVER_CONFIRM_ERROR:I = 0x0

.field public static final SPEED_LIMIT_DRIVER_CONFIRM_NO:I = 0x1

.field public static final SPEED_LIMIT_DRIVER_CONFIRM_OK:I = 0x2

.field public static final SPEED_LIMIT_NO_FAULT:I = 0x0

.field public static final SPEED_LIMIT_PERMANENT_ERROR:I = 0x2

.field public static final SPEED_LIMIT_TEMPORARY_ERROR:I = 0x1

.field public static final STATE_50_METERS_AWAY_FROM_THE_PARKING_LOT_ENTRANCE:I = 0x0

.field public static final STATE_WITHIN_50_METERS_OF_THE_PARKING_LOT_ENTRANCE:I = 0x1

.field public static final SWITCH_PARK_BY_MEMORY_WITHOUT_LICENSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CarScuManager"

.field public static final TIRD_DISTRACTION_OFF:I = 0x0

.field public static final TIRD_DISTRACTION_ON:I = 0x1

.field public static final VOICE_CHANGE_TO_LEFT_LANE:I = 0x1

.field public static final VOICE_CHANGE_TO_RIGHT_LANE:I = 0x2

.field public static final VPA_D_FAILURE:I = 0x7

.field public static final VPA_D_RUNNING:I = 0x5

.field public static final VPA_D_SUCCESS:I = 0x6

.field public static final VPA_ROUTE_LEARNING:I = 0x8

.field public static final VPA_ROUTE_LEARNING_FAILURE:I = 0xa

.field public static final VPA_ROUTE_LEARNING_SUCCESS:I = 0x9

.field public static final XPILOT3_STATUS_INITIALIZATION:I = 0x0

.field public static final XPILOT3_STATUS_OFF:I = 0x2

.field public static final XPILOT3_STATUS_ON:I = 0x1

.field public static final XPILOT3_STATUS_POWER_ON_AGAIN:I = 0x3

.field public static final XPU_SCU_LSS_ALARM_ENABLED:I = 0x1

.field public static final XPU_SCU_LSS_ALL_ENABLED:I = 0x3

.field public static final XPU_SCU_LSS_BREAK_DOWN:I = 0x4

.field public static final XPU_SCU_LSS_CLOSED:I = 0x0

.field public static final XPU_SCU_LSS_DEVIATION_ENABLED:I = 0x2

.field public static final XPU_ULC_REMIND_SW_HORN_ON:I = 0x2

.field public static final XPU_ULC_REMIND_SW_LIGHT_ON:I = 0x1

.field public static final XPU_ULC_REMIND_SW_OFF:I


# instance fields
.field private final mScuPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarScuManager"

    .line 6242
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 5993
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0xe5

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402601

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21402609

    .line 5994
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x2140262a

    .line 5995
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402602

    .line 5996
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402605

    .line 5997
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21402647

    .line 5998
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21612631

    .line 5999
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21612630

    .line 6000
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21402635

    .line 6001
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21412657

    .line 6002
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21412658

    .line 6003
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21412659

    .line 6004
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x2140261b

    .line 6005
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402613

    .line 6006
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402612

    .line 6007
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402614

    .line 6008
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21402632

    .line 6009
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x2140262f

    .line 6010
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x2161263e

    .line 6011
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2161262e

    .line 6012
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21612637

    .line 6013
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21612633

    .line 6014
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x2161263d

    .line 6015
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x2141262b

    .line 6016
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21412636

    .line 6017
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x2161265a

    .line 6018
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x2161262c

    .line 6019
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x2161263f

    .line 6020
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x2141264a

    .line 6021
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x2141264e

    .line 6022
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x2141264d

    .line 6023
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x21412649

    .line 6024
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x21402646

    .line 6025
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x2140264f

    .line 6026
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x21612640

    .line 6027
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x21402611

    .line 6028
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21402603

    .line 6029
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x21402604

    .line 6030
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x21402606

    .line 6031
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x21402607

    .line 6032
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21402608

    .line 6033
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x2140260a

    .line 6034
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x2140260b

    .line 6035
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x2140260c

    .line 6036
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x2140260d

    .line 6037
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x2140260e

    .line 6038
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x2140260f

    .line 6039
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x21402615

    .line 6040
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x21402616

    .line 6041
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x21402617

    .line 6042
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21402618

    .line 6043
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x21402619

    .line 6044
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x2140261a

    .line 6045
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x21702622

    .line 6046
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21402624

    .line 6047
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21402623

    .line 6048
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21402625

    .line 6049
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x21402626

    .line 6050
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x21402627

    .line 6051
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21402628

    .line 6052
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x21402629

    .line 6053
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x21402672

    .line 6054
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x21402634

    .line 6055
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x21412653

    .line 6056
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x2170263a

    .line 6057
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x2170263b

    .line 6058
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x21402648

    .line 6059
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21402641

    .line 6060
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x21412656

    .line 6061
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21412655

    .line 6062
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x2170263c

    .line 6063
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    const p3, 0x2140264b

    .line 6064
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x47

    aput-object p3, p2, p4

    const p3, 0x21412644

    .line 6065
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x48

    aput-object p3, p2, p4

    const p3, 0x21612642

    .line 6066
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x49

    aput-object p3, p2, p4

    const p3, 0x21412654

    .line 6067
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4a

    aput-object p3, p2, p4

    const p3, 0x2140264c

    .line 6068
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4b

    aput-object p3, p2, p4

    const p3, 0x21402650

    .line 6069
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4c

    aput-object p3, p2, p4

    const p3, 0x21412643

    .line 6070
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4d

    aput-object p3, p2, p4

    const p3, 0x21402651

    .line 6071
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4e

    aput-object p3, p2, p4

    const p3, 0x21402652

    .line 6072
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x4f

    aput-object p3, p2, p4

    const p3, 0x21402639

    .line 6073
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x50

    aput-object p3, p2, p4

    const p3, 0x21402669

    .line 6074
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x51

    aput-object p3, p2, p4

    const p3, 0x2140266a

    .line 6075
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x52

    aput-object p3, p2, p4

    const p3, 0x2140266b

    .line 6076
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x53

    aput-object p3, p2, p4

    const p3, 0x2140265f

    .line 6077
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x54

    aput-object p3, p2, p4

    const p3, 0x21612661

    .line 6078
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x55

    aput-object p3, p2, p4

    const p3, 0x2161265e

    .line 6079
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x56

    aput-object p3, p2, p4

    const p3, 0x21612662

    .line 6080
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x57

    aput-object p3, p2, p4

    const p3, 0x21612663

    .line 6081
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x58

    aput-object p3, p2, p4

    const p3, 0x21612664

    .line 6082
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x59

    aput-object p3, p2, p4

    const p3, 0x21402665

    .line 6083
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5a

    aput-object p3, p2, p4

    const p3, 0x21402666

    .line 6084
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5b

    aput-object p3, p2, p4

    const p3, 0x2161261c

    .line 6085
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5c

    aput-object p3, p2, p4

    const p3, 0x2161261d

    .line 6086
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5d

    aput-object p3, p2, p4

    const p3, 0x2161266c

    .line 6087
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5e

    aput-object p3, p2, p4

    const p3, 0x2140266d

    .line 6088
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f

    aput-object p3, p2, p4

    const p3, 0x2141267a

    .line 6089
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x60

    aput-object p3, p2, p4

    const p3, 0x2140267b

    .line 6090
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x61

    aput-object p3, p2, p4

    const p3, 0x2140267e

    .line 6091
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x62

    aput-object p3, p2, p4

    const p3, 0x2140267f

    .line 6092
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x63

    aput-object p3, p2, p4

    const p3, 0x21402638

    .line 6093
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    aput-object p3, p2, p4

    const p3, 0x2161267c

    .line 6094
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x65

    aput-object p3, p2, p4

    const p3, 0x2161267d

    .line 6095
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x66

    aput-object p3, p2, p4

    const p3, 0x21402687

    .line 6096
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x67

    aput-object p3, p2, p4

    const p3, 0x21402681

    .line 6097
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x68

    aput-object p3, p2, p4

    const p3, 0x21412682

    .line 6098
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x69

    aput-object p3, p2, p4

    const p3, 0x21402683

    .line 6099
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6a

    aput-object p3, p2, p4

    const p3, 0x21402684

    .line 6100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6b

    aput-object p3, p2, p4

    const p3, 0x21402688

    .line 6101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6c

    aput-object p3, p2, p4

    const p3, 0x21402689

    .line 6102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6d

    aput-object p3, p2, p4

    const p3, 0x2140268a

    .line 6103
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6e

    aput-object p3, p2, p4

    const p3, 0x2140268b

    .line 6104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x6f

    aput-object p3, p2, p4

    const p3, 0x21402680

    .line 6105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x70

    aput-object p3, p2, p4

    const p3, 0x2140268c

    .line 6106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x71

    aput-object p3, p2, p4

    const p3, 0x2140268d

    .line 6107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x72

    aput-object p3, p2, p4

    const p3, 0x21612645

    .line 6108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x73

    aput-object p3, p2, p4

    const p3, 0x21402670

    .line 6109
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x74

    aput-object p3, p2, p4

    const p3, 0x2140268e

    .line 6110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x75

    aput-object p3, p2, p4

    const p3, 0x2140268f

    .line 6111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x76

    aput-object p3, p2, p4

    const p3, 0x21402690

    .line 6112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x77

    aput-object p3, p2, p4

    const p3, 0x21402691

    .line 6113
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x78

    aput-object p3, p2, p4

    const p3, 0x21402692

    .line 6114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x79

    aput-object p3, p2, p4

    const p3, 0x21402693

    .line 6115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7a

    aput-object p3, p2, p4

    const p3, 0x21412694

    .line 6116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7b

    aput-object p3, p2, p4

    const p3, 0x21402695

    .line 6117
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7c

    aput-object p3, p2, p4

    const p3, 0x21402696

    .line 6118
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7d

    aput-object p3, p2, p4

    const p3, 0x21402697

    .line 6119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7e

    aput-object p3, p2, p4

    const p3, 0x21402698

    .line 6120
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x7f

    aput-object p3, p2, p4

    const p3, 0x21402699

    .line 6121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x80

    aput-object p3, p2, p4

    const p3, 0x2140269a

    .line 6122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x81

    aput-object p3, p2, p4

    const p3, 0x2141269b

    .line 6123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x82

    aput-object p3, p2, p4

    const p3, 0x2141269c

    .line 6124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x83

    aput-object p3, p2, p4

    const p3, 0x2141269d

    .line 6125
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x84

    aput-object p3, p2, p4

    const p3, 0x2140269e

    .line 6126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x85

    aput-object p3, p2, p4

    const p3, 0x2140269f

    .line 6127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x86

    aput-object p3, p2, p4

    const p3, 0x214026a0

    .line 6128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x87

    aput-object p3, p2, p4

    const p3, 0x214026a1

    .line 6129
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x88

    aput-object p3, p2, p4

    const p3, 0x214026a2

    .line 6130
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x89

    aput-object p3, p2, p4

    const p3, 0x214026a3

    .line 6131
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8a

    aput-object p3, p2, p4

    const p3, 0x217026a4

    .line 6132
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8b

    aput-object p3, p2, p4

    const p3, 0x217026a5

    .line 6133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8c

    aput-object p3, p2, p4

    const p3, 0x214026a6

    .line 6134
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8d

    aput-object p3, p2, p4

    const p3, 0x214026a7

    .line 6135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8e

    aput-object p3, p2, p4

    const p3, 0x214026a9

    .line 6136
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8f

    aput-object p3, p2, p4

    const p3, 0x214026aa

    .line 6137
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x90

    aput-object p3, p2, p4

    const p3, 0x214026a8

    .line 6138
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x91

    aput-object p3, p2, p4

    const p3, 0x214026ab

    .line 6139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x92

    aput-object p3, p2, p4

    const p3, 0x214026ac

    .line 6140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x93

    aput-object p3, p2, p4

    const p3, 0x214026ad

    .line 6141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x94

    aput-object p3, p2, p4

    const p3, 0x214026ae

    .line 6142
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x95

    aput-object p3, p2, p4

    const p3, 0x214026af

    .line 6143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x96

    aput-object p3, p2, p4

    const p3, 0x214026b0

    .line 6144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x97

    aput-object p3, p2, p4

    const p3, 0x214026b1

    .line 6145
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x98

    aput-object p3, p2, p4

    const p3, 0x214026b2

    .line 6146
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x99

    aput-object p3, p2, p4

    const p3, 0x214026b3

    .line 6147
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9a

    aput-object p3, p2, p4

    const p3, 0x214026b4

    .line 6148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9b

    aput-object p3, p2, p4

    const p3, 0x214026b5

    .line 6149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9c

    aput-object p3, p2, p4

    const p3, 0x214026b6

    .line 6150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9d

    aput-object p3, p2, p4

    const p3, 0x214026b7

    .line 6151
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9e

    aput-object p3, p2, p4

    const p3, 0x214026b8

    .line 6152
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9f

    aput-object p3, p2, p4

    const p3, 0x214026b9

    .line 6153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa0

    aput-object p3, p2, p4

    const p3, 0x214026ba

    .line 6154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa1

    aput-object p3, p2, p4

    const p3, 0x214026bb

    .line 6155
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa2

    aput-object p3, p2, p4

    const p3, 0x214026bc

    .line 6156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa3

    aput-object p3, p2, p4

    const p3, 0x214026bd    # 6.51034E-19f

    .line 6157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa4

    aput-object p3, p2, p4

    const p3, 0x214026be

    .line 6158
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa5

    aput-object p3, p2, p4

    const p3, 0x214026bf

    .line 6159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa6

    aput-object p3, p2, p4

    const p3, 0x214026c0

    .line 6160
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa7

    aput-object p3, p2, p4

    const p3, 0x214026c1

    .line 6161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa8

    aput-object p3, p2, p4

    const p3, 0x214026c2

    .line 6162
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa9

    aput-object p3, p2, p4

    const p3, 0x214026c3

    .line 6163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaa

    aput-object p3, p2, p4

    const p3, 0x214026c4

    .line 6164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xab

    aput-object p3, p2, p4

    const p3, 0x214026c5

    .line 6165
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xac

    aput-object p3, p2, p4

    const p3, 0x214026c6

    .line 6166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xad

    aput-object p3, p2, p4

    const p3, 0x214026c7

    .line 6167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xae

    aput-object p3, p2, p4

    const p3, 0x214026c8

    .line 6168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaf

    aput-object p3, p2, p4

    const p3, 0x214026c9

    .line 6169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb0

    aput-object p3, p2, p4

    const p3, 0x214126ca

    .line 6170
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb1

    aput-object p3, p2, p4

    const p3, 0x214026cb

    .line 6171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb2

    aput-object p3, p2, p4

    const p3, 0x214026cc

    .line 6172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb3

    aput-object p3, p2, p4

    const p3, 0x214026d0

    .line 6173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb4

    aput-object p3, p2, p4

    const p3, 0x214026cd

    .line 6174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb5

    aput-object p3, p2, p4

    const p3, 0x214026ce

    .line 6175
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb6

    aput-object p3, p2, p4

    const p3, 0x214026cf

    .line 6176
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb7

    aput-object p3, p2, p4

    const p3, 0x214026d1

    .line 6177
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb8

    aput-object p3, p2, p4

    const p3, 0x214026d2

    .line 6178
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb9

    aput-object p3, p2, p4

    const p3, 0x214026d3

    .line 6179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xba

    aput-object p3, p2, p4

    const p3, 0x214026d4

    .line 6180
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbb

    aput-object p3, p2, p4

    const p3, 0x214126d5

    .line 6181
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbc

    aput-object p3, p2, p4

    const p3, 0x216126d6

    .line 6182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbd

    aput-object p3, p2, p4

    const p3, 0x214026d9

    .line 6183
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbe

    aput-object p3, p2, p4

    const p3, 0x214026db

    .line 6184
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbf

    aput-object p3, p2, p4

    const p3, 0x214026dc

    .line 6185
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc0

    aput-object p3, p2, p4

    const p3, 0x214026dd

    .line 6186
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc1

    aput-object p3, p2, p4

    const p3, 0x214026da

    .line 6187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc2

    aput-object p3, p2, p4

    const p3, 0x214026de

    .line 6188
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc3

    aput-object p3, p2, p4

    const p3, 0x214026e1

    .line 6189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc4

    aput-object p3, p2, p4

    const p3, 0x214026e2

    .line 6190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc5

    aput-object p3, p2, p4

    const p3, 0x214026ea

    .line 6191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc6

    aput-object p3, p2, p4

    const p3, 0x214026eb

    .line 6192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc7

    aput-object p3, p2, p4

    const p3, 0x214026ec

    .line 6193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc8

    aput-object p3, p2, p4

    const p3, 0x214126ef

    .line 6194
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc9

    aput-object p3, p2, p4

    const p3, 0x214126f0

    .line 6195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xca

    aput-object p3, p2, p4

    const p3, 0x214126f1

    .line 6196
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcb

    aput-object p3, p2, p4

    const p3, 0x214126f2

    .line 6197
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcc

    aput-object p3, p2, p4

    const p3, 0x2140381a

    .line 6198
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcd

    aput-object p3, p2, p4

    const p3, 0x214126f3

    .line 6199
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xce

    aput-object p3, p2, p4

    const p3, 0x214026f4

    .line 6200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcf

    aput-object p3, p2, p4

    const p3, 0x214026f5

    .line 6201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd0

    aput-object p3, p2, p4

    const p3, 0x214026f8

    .line 6202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd1

    aput-object p3, p2, p4

    const p3, 0x214026f9

    .line 6203
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd2

    aput-object p3, p2, p4

    const p3, 0x214026fa

    .line 6204
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd3

    aput-object p3, p2, p4

    const p3, 0x214126fb

    .line 6205
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd4

    aput-object p3, p2, p4

    const p3, 0x214026fc

    .line 6206
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd5

    aput-object p3, p2, p4

    const p3, 0x214026fd

    .line 6207
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd6

    aput-object p3, p2, p4

    const p3, 0x214026fe

    .line 6208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd7

    aput-object p3, p2, p4

    const p3, 0x214026ff

    .line 6209
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd8

    aput-object p3, p2, p4

    const p3, 0x21402704

    .line 6210
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd9

    aput-object p3, p2, p4

    const p3, 0x21402702

    .line 6211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xda

    aput-object p3, p2, p4

    const p3, 0x21402700

    .line 6212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdb

    aput-object p3, p2, p4

    const p3, 0x21402701

    .line 6213
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdc

    aput-object p3, p2, p4

    const p3, 0x21402703

    .line 6214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdd

    aput-object p3, p2, p4

    const p3, 0x21402705

    .line 6215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xde

    aput-object p3, p2, p4

    const p3, 0x21402706

    .line 6216
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdf

    aput-object p3, p2, p4

    const p3, 0x21402708

    .line 6217
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe0

    aput-object p3, p2, p4

    const p3, 0x21412709

    .line 6218
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe1

    aput-object p3, p2, p4

    const p3, 0x2140270a

    .line 6219
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe2

    aput-object p3, p2, p4

    const p3, 0x2170270c

    .line 6220
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe3

    aput-object p3, p2, p4

    const p3, 0x2170270d

    .line 6221
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe4

    aput-object p3, p2, p4

    .line 5993
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/scu/CarScuManager;->mScuPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method private bytesToInt([BI)I
    .locals 2

    .line 6435
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private getGpsSpeed()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6524
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getGpsSpeed()F

    move-result v0

    return v0
.end method

.method private getPhoneSmMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7903
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuPhoneSmMode()I

    move-result v0

    return v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_scu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public SetFcwAebSensitivitySwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10685
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->SetFcwAebSensitivitySwitchStatus(I)V

    return-void
.end method

.method public getAccLkaWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8566
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAccLkaWarning()I

    move-result v0

    return v0
.end method

.method public getAccStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6964
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAccStatus()I

    move-result v0

    return v0
.end method

.method public getAebAlarmSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9865
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAebAlarmSwitchState()I

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

    .line 10101
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAlcCtrlRemindInfo()I

    move-result v0

    return v0
.end method

.method public getAllSrrRadarEmissStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10667
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAllSrrRadarEmissStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getAltimeter()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7778
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAltimeter()[F

    move-result-object v0

    return-object v0
.end method

.method public getApaLicenseRequest()[B
    .locals 3

    const v0, 0x2170270c

    const/4 v1, 0x0

    .line 11085
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->getByteVectorProperty(II)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getApaLicenseRequest failed due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApaVpaStatus()I
    .locals 4

    const v0, 0x21402708

    const/4 v1, 0x0

    .line 11068
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApaVpaStatus throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarScuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getAssLineChanged()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7995
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAssLineChanged()I

    move-result v0

    return v0
.end method

.method public getAutoParkErrorCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6570
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAutoParkErrorCode()I

    move-result v0

    return v0
.end method

.method public getAutoParkSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7700
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAutoParkSwitch()I

    move-result v0

    return v0
.end method

.method public getBlindAreaDetectionWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7192
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBlindAreaDetectionWarning()I

    move-result v0

    return v0
.end method

.method public getBlindAreaLeftWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6819
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBlindAreaLeftWarning()I

    move-result v0

    return v0
.end method

.method public getBlindAreaRightWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6836
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBlindAreaRightWarning()I

    move-result v0

    return v0
.end method

.method public getCarPositionInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6788
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCarPositionInfo()[F

    move-result-object v0

    return-object v0
.end method

.method public getCutInPreventionWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8522
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuCutInPreventionWarning()I

    move-result v0

    return v0
.end method

.method public getCutLinePreventSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7155
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getCutLinePreventSw()I

    move-result v0

    return v0
.end method

.method public getDisplayCruiseSpeed()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8796
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDisplayCruiseSpeed()I

    move-result v0

    return v0
.end method

.method public getDoorOpenWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7293
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDoorOpenWarning()I

    move-result v0

    return v0
.end method

.method public getDoorsLRadarDisplayLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10554
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsLRadarDisplayLevel()I

    move-result v0

    return v0
.end method

.method public getDoorsLRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10585
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsLRadarDistance()I

    move-result v0

    return v0
.end method

.method public getDoorsObstacleDetectionSt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8981
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsObstacleDetectionSt()[I

    move-result-object v0

    return-object v0
.end method

.method public getDoorsRRadarDisplayLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10571
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsRRadarDisplayLevel()I

    move-result v0

    return v0
.end method

.method public getDoorsRRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10599
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsRRadarDistance()I

    move-result v0

    return v0
.end method

.method public getDoorsRadarDisplayLevel()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9013
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsRadarDisplayLevel()[I

    move-result-object v0

    return-object v0
.end method

.method public getDoorsRadarDistance()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8995
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDoorsRadarDistance()[I

    move-result-object v0

    return-object v0
.end method

.method public getDsmCameraStatus()I
    .locals 3

    .line 10845
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDsmCameraStatus()I

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

    .line 10847
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

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getDsmPrompt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9980
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDsmPrompt()I

    move-result v0

    return v0
.end method

.method public getDsmStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10350
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDsmStatus()I

    move-result v0

    return v0
.end method

.method public getDsmTiredDistractionManualStatus()I
    .locals 4

    const v0, 0x21402704

    const/4 v1, 0x0

    .line 10757
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarScuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDsmTiredDistractionSen()I
    .locals 3

    .line 10800
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDsmTiredDistractionSen()I

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

    .line 10802
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

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDsmTiredDistractionStatus()I
    .locals 3

    .line 10718
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDsmTiredDistractionStatus()I

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

    .line 10720
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

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getEBAActiveStatus()I
    .locals 4

    const v0, 0x21402705

    const/4 v1, 0x0

    .line 11000
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11002
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

    const-string v2, "CarScuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getElkSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9392
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuElkSwitchState()I

    move-result v0

    return v0
.end method

.method public getEnvCharacterInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6774
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEnvCharacterInfo()[F

    move-result-object v0

    return-object v0
.end method

.method public getErrorTips()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8052
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuErrorTips()I

    move-result v0

    return v0
.end method

.method public getExtraLatCtrlRemindInfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8409
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuExtraLatCtrlRemindInfo()I

    move-result v0

    return v0
.end method

.method public getFarLampAutoSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7120
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFarLampAutoSwitch()I

    move-result v0

    return v0
.end method

.method public getFatigueDetectionSw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7374
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFatigueDetectionSw()I

    move-result v0

    return v0
.end method

.method public getFcwAebSensitivitySwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10702
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFcwAebSensitivitySwitchStatus()I

    move-result v0

    return v0
.end method

.method public getFishEyeCamFailureSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8728
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuFishEyeCamFailureSt()I

    move-result v0

    return v0
.end method

.method public getFrontCollisionSecurity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7006
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontCollisionSecurity()I

    move-result v0

    return v0
.end method

.method public getFrontRadarData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8185
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getFrontRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7817
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuFrontMinDistance()I

    move-result v0

    return v0
.end method

.method public getFrontRadarFaultSt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6485
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method public getFrontRadarLevel()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6453
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getFrontRadarLevel()[I

    move-result-object v0

    return-object v0
.end method

.method public getFsdSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8676
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuFsdSwitchState()I

    move-result v0

    return v0
.end method

.method public getHighSpeedNavgation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7531
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHighSpeedNavigation()I

    move-result v0

    return v0
.end method

.method public getHighSpeedNavigation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7565
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getHighSpeedNavigation()I

    move-result v0

    return v0
.end method

.method public getHmiDopRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10631
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuHmiDopRemind()I

    move-result v0

    return v0
.end method

.method public getIntelligentCallButton()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7635
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIntelligentCallButton()I

    move-result v0

    return v0
.end method

.method public getIntelligentParkOutSwStatus()I
    .locals 4

    const v0, 0x21402706

    const/4 v1, 0x0

    .line 11039
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/scu/CarScuManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11041
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

    const-string v2, "CarScuManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIntelligentSpeedLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7454
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getIntelligentSpeedLimit()I

    move-result v0

    return v0
.end method

.method public getKeyPark()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7765
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuKeyPark()I

    move-result v0

    return v0
.end method

.method public getKeyRemoteSmButton()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7733
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getKeyRemoteSMButton()I

    move-result v0

    return v0
.end method

.method public getKeyRemoteType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6702
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getKeyRemoteType()I

    move-result v0

    return v0
.end method

.method public getLAvmData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8120
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLAvmData()[F

    move-result-object v0

    return-object v0
.end method

.method public getLaneAlignmentAssist()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7491
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLaneAlignmentAssist()I

    move-result v0

    return v0
.end method

.method public getLaneChangeAssist()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7334
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLaneChangeAssist()I

    move-result v0

    return v0
.end method

.method public getLaneDepartureWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7046
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLaneDepartureWarning()I

    move-result v0

    return v0
.end method

.method public getLaneSupportSystemStateAndWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7085
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLaneSupportSystemStateAndWarning()I

    move-result v0

    return v0
.end method

.method public getLeftDoorOpenWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8322
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftDoorOpenWarning()I

    move-result v0

    return v0
.end method

.method public getLeftRightBlindSpotDetectionSwitchStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10405
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftRightBlindSpotDetectionSwitchStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftRightDoorOpenWarningSwitchStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10443
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftRightDoorOpenWarningSwitchStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftRightRearCollisionSwitchStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10424
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftRightRearCollisionSwitchStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftRightRearCollisionWarning()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 8300
    fill-array-data v0, :array_0

    const v1, 0x21412709

    const/4 v2, 0x0

    .line 8302
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/car/hardware/scu/CarScuManager;->getIntVectorProperty(II)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 8304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeftRightRearCollisionWarning throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarScuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getLeftRightRearCrossTrafficAlertStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10462
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftRightRearCrossTrafficAlertStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getLeftSdcBlindStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9440
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcBlindStatus()I

    move-result v0

    return v0
.end method

.method public getLeftSdcIndexN()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9806
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLeftSdcIndexN()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9666
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarDistance()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9722
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarErrorStatus()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarHallCounter()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9834
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarHallCounter()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarPeakLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9694
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarPeakLevel()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarRt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9764
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarRt()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9424
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarStatus()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarStatusCcp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9708
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarStatusCcp()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarTof()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9680
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarTof()I

    move-result v0

    return v0
.end method

.method public getLeftSdcRadarWaveWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9778
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcRadarWaveWidth()I

    move-result v0

    return v0
.end method

.method public getLeftSdcSceneStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9456
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcSceneStatus()I

    move-result v0

    return v0
.end method

.method public getLeftSdcURadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9552
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLeftSdcURadarDistance()I

    move-result v0

    return v0
.end method

.method public getLocatData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8081
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLocatData()[F

    move-result-object v0

    return-object v0
.end method

.method public getLocatDataWithZ()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8644
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLocatDataWithZ()[F

    move-result-object v0

    return-object v0
.end method

.method public getMainCamFailureSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8746
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuMainCamFailureSt()I

    move-result v0

    return v0
.end method

.method public getMemoryParkingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10307
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuMemoryParkingState()I

    move-result v0

    return v0
.end method

.method public getMileageExtraParams()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6517
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMileageExtraParams()[F

    move-result-object v0

    return-object v0
.end method

.method public getMrrAssistSystemStates()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8264
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuMrrAssistSystemStates()[I

    move-result-object v0

    return-object v0
.end method

.method public getMrrFailureSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8710
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuMrrFailureSt()I

    move-result v0

    return v0
.end method

.method public getMrrRadarEmissStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10648
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuMrrRadarEmissStatus()I

    move-result v0

    return v0
.end method

.method public getNarrowCamFailureSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8764
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNarrowCamFailureSt()I

    move-result v0

    return v0
.end method

.method public getNearestEnableRadar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6427
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getNearestEnableRadar()I

    move-result v0

    return v0
.end method

.method public getNgpAvoidTruckSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9095
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpAvoidTruckSwSt()I

    move-result v0

    return v0
.end method

.method public getNgpDriverConfirmLaneChangeSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9127
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpDriverConfirmLaneChangeSwSt()I

    move-result v0

    return v0
.end method

.method public getNgpInfoTips1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8930
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpInfoTips1()I

    move-result v0

    return v0
.end method

.method public getNgpLaneChangeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9162
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpLaneChangeMode()I

    move-result v0

    return v0
.end method

.method public getNgpLcTips1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8900
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpLcTips1()I

    move-result v0

    return v0
.end method

.method public getNgpModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9914
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpModeStatus()I

    move-result v0

    return v0
.end method

.method public getNgpOperationButtonSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8855
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpOperationButtonSt()I

    move-result v0

    return v0
.end method

.method public getNgpPreferFastLaneSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9063
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpPreferFastLaneSwSt()I

    move-result v0

    return v0
.end method

.method public getNgpRemindMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9196
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpRemindMode()I

    move-result v0

    return v0
.end method

.method public getNgpTipsWindowsSwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8964
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuNgpTipsWindowsSwSt()I

    move-result v0

    return v0
.end method

.method public getParkByMemorySwSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9934
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuParkByMemorySwSt()I

    move-result v0

    return v0
.end method

.method public getParkSlotInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6760
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getParkSlotInfo()[F

    move-result-object v0

    return-object v0
.end method

.method public getParkingProgress()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8094
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuParkingProgress()[F

    move-result-object v0

    return-object v0
.end method

.method public final getParkingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6297
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getParkingStatus()I

    move-result v0

    return v0
.end method

.method public getPhoneParkType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6735
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPhoneParkType()I

    move-result v0

    return v0
.end method

.method public getPhoneSmButton()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7667
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPhoneSMButton()I

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

    .line 6257
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mScuPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getQuitNgpOddSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8817
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getQuitNgpOddSt()I

    move-result v0

    return v0
.end method

.method public getRAvmData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8133
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRAvmData()[F

    move-result-object v0

    return-object v0
.end method

.method public getRadarDataInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6802
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRadarDataInfo()[F

    move-result-object v0

    return-object v0
.end method

.method public getRadarDisplayActive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8039
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRadarDisplayActive()I

    move-result v0

    return v0
.end method

.method public getRadarVoiceActive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8159
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRadarVoiceActive()I

    move-result v0

    return v0
.end method

.method public getRadarVoiceTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8172
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRadarVoiceTone()I

    move-result v0

    return v0
.end method

.method public getRadarWarningVoiceStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6623
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRadarWarningVoiceStatus()I

    move-result v0

    return v0
.end method

.method public getRearCollisionSecurity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7258
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearCollisionSecurity()I

    move-result v0

    return v0
.end method

.method public getRearCollisionWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8284
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRearCollisionWarning()I

    move-result v0

    return v0
.end method

.method public getRearCrossEmergencyWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7225
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearCrossEmergencyWarning()I

    move-result v0

    return v0
.end method

.method public getRearCrossLeftWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6852
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearCrossLeftWarning()I

    move-result v0

    return v0
.end method

.method public getRearCrossRightWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6868
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRearCrossRightWarning()I

    move-result v0

    return v0
.end method

.method public getRemoteFlag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10117
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRemoteFlag()I

    move-result v0

    return v0
.end method

.method public getRightDoorOpenWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8339
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightDoorOpenWarning()I

    move-result v0

    return v0
.end method

.method public getRightSdcBlindStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9472
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcBlindStatus()I

    move-result v0

    return v0
.end method

.method public getRightSdcIndexN()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9792
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getRightRightSdcIndexN()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9596
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarDistance()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9652
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarErrorStatus()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarHallCounter()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9848
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarHallCounter()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarPeakLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9624
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarPeakLevel()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarRt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9736
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarRt()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9408
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarStatus()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarStatusCcp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9638
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarStatusCcp()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarTof()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9610
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarTof()I

    move-result v0

    return v0
.end method

.method public getRightSdcRadarWaveWidth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9750
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcRadarWaveWidth()I

    move-result v0

    return v0
.end method

.method public getRightSdcSceneStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9488
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcSceneStatus()I

    move-result v0

    return v0
.end method

.method public getRightSdcURadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9566
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRightSdcURadarDistance()I

    move-result v0

    return v0
.end method

.method public getRoadVoiceTips()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8605
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRoadVoiceTips()I

    move-result v0

    return v0
.end method

.method public final getScu322LogData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6353
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScu322LogData()[I

    move-result-object v0

    return-object v0
.end method

.method public getScu322LogDataD20()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8435
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScu322LogDataD20()[I

    move-result-object v0

    return-object v0
.end method

.method public final getScu3FDLogData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6365
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScu3FDLogData()[I

    move-result-object v0

    return-object v0
.end method

.method public final getScu3FELogData()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6377
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScu3FELogData()[I

    move-result-object v0

    return-object v0
.end method

.method public getScuAccExitReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9354
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAccExitReason()I

    move-result v0

    return v0
.end method

.method public getScuAlarmFaultStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8422
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAlarmFaultStatus()I

    move-result v0

    return v0
.end method

.method public getScuAutoParkSt()I
    .locals 3

    .line 10889
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuAutoParkSt()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getScuBsdStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8474
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuBsdStatus()I

    move-result v0

    return v0
.end method

.method public getScuDsmDdawStatus()I
    .locals 3

    .line 10978
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuDsmDdawStatus()I

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

    .line 10980
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScuDsmDdSwStatus throw RemoteException | RuntimeException e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getScuHmiSafetyAssistRemid()I
    .locals 3

    .line 10935
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuHmiSafetyAssistRemid()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getScuLccExitReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9341
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLccExitReason()I

    move-result v0

    return v0
.end method

.method public getScuLdwLkaSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10006
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLdwLkaSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getScuLdwStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8461
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLdwStatus()I

    move-result v0

    return v0
.end method

.method public getScuLkaState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8548
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLkaState()I

    move-result v0

    return v0
.end method

.method public getScuLkaSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10043
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuLkaSwitchState()I

    move-result v0

    return v0
.end method

.method public getScuModeIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7857
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuModeIndex()I

    move-result v0

    return v0
.end method

.method public final getScuOperationTips()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6389
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuOperationTips()I

    move-result v0

    return v0
.end method

.method public getScuRctaStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8487
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRctaStatus()I

    move-result v0

    return v0
.end method

.method public getScuRearMirrorControlState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8384
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRearMirrorControlState()I

    move-result v0

    return v0
.end method

.method public getScuReverseTrackSt()I
    .locals 3

    .line 10917
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuReverseTrackSt()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getScuSlaStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8448
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlaStatus()I

    move-result v0

    return v0
.end method

.method public getSdCUltrasonicRadarVoiceTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9243
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcUltrasonicRadarVoiceTone()I

    move-result v0

    return v0
.end method

.method public getSdcAutoModeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9504
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcAutoModeStatus()I

    move-result v0

    return v0
.end method

.method public getSdcCtrlIndex1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9520
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcCtrlIndex1()I

    move-result v0

    return v0
.end method

.method public getSdcCtrlIndex2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9538
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcCtrlIndex2()I

    move-result v0

    return v0
.end method

.method public getSdcRadarFusion()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9820
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcRadarFusion()[I

    move-result-object v0

    return-object v0
.end method

.method public getSdcTips()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9296
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcTips()I

    move-result v0

    return v0
.end method

.method public getSdcTts()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9314
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcTts()I

    move-result v0

    return v0
.end method

.method public getSdcUltrasonicRadarVoiceTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9260
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSdcUltrasonicRadarVoiceTone()I

    move-result v0

    return v0
.end method

.method public getSensorData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8107
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSensorData()[F

    move-result-object v0

    return-object v0
.end method

.method public getSideCamsFailureSt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8782
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSideCamsFailureSt()[I

    move-result-object v0

    return-object v0
.end method

.method public final getSideReversingWarning()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6271
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSideReversingWarning()I

    move-result v0

    return v0
.end method

.method public getSlaAlarmSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8631
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlaAlarmSwitchState()I

    move-result v0

    return v0
.end method

.method public getSlotData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8211
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlotData()[F

    move-result-object v0

    return-object v0
.end method

.method public getSlotForPark()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8146
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlotForPark()[F

    move-result-object v0

    return-object v0
.end method

.method public getSlotTheta()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7791
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlotTheta()[I

    move-result-object v0

    return-object v0
.end method

.method public getSlotsNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8225
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSlotsNumber()I

    move-result v0

    return v0
.end method

.method public getSpdLimitWarnType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6649
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSpdLimitWarnType()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitControlSystemState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10288
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSpeedLimitControlSystemState()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitDriverConfirmStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10166
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSpeedLimitDriverConfirmStatus()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitRange()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10199
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSpeedLimitRange()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitRemindVoice()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10329
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSpeedLimitRemindVoice()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10233
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSpeedLimitSwitchState()I

    move-result v0

    return v0
.end method

.method public getSteeringWheelEps()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9882
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSteeringWheelEps()I

    move-result v0

    return v0
.end method

.method public getSuperParkMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8068
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuSuperParkMode()I

    move-result v0

    return v0
.end method

.method public getSuperParkModeStatus()I
    .locals 3

    .line 7599
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSuperParkModeStatus()I

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

    .line 7601
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSuperParkModeStatus throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarScuManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTailRadarData()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8198
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTailRadarData()[F

    move-result-object v0

    return-object v0
.end method

.method public getTailRadarDistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7830
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuRearMinDistance()I

    move-result v0

    return v0
.end method

.method public getTailRadarFaultSt()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6503
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTailRadarFaultSt()[I

    move-result-object v0

    return-object v0
.end method

.method public getTailRadarLevel()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6467
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTailRadarLevel()[I

    move-result-object v0

    return-object v0
.end method

.method public getTargetParkingPosition()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7804
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuTargetParkingPosition()[I

    move-result-object v0

    return-object v0
.end method

.method public getTrafficSignRecognition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7409
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrafficSignRecognition()I

    move-result v0

    return v0
.end method

.method public getURadarDataInfo()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10071
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuURadarDataInfo()[F

    move-result-object v0

    return-object v0
.end method

.method public getXpilot3St()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9031
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getScuXpilot3Status()I

    move-result v0

    return v0
.end method

.method public getXpilotStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6918
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpilotStatus()I

    move-result v0

    return v0
.end method

.method public getXpuLatCtrlRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6940
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLatCtrlRemind()I

    move-result v0

    return v0
.end method

.method public getXpuLongCtrlRemind()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6892
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getXpuLongCtrlRemind()I

    move-result v0

    return v0
.end method

.method public notifyRearViewMirrorAdjustmentPageState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8692
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->notifyScuRearViewMirrorAdjustmentPageState(I)V

    return-void
.end method

.method public sendNaviLoadLinkType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10386
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->sendScuNaviLoadLinkType(I)V

    return-void
.end method

.method public sendToApaLicenseResponseAndDoc([B)V
    .locals 2

    const v0, 0x2170270c

    const/4 v1, 0x0

    .line 11102
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/scu/CarScuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendApaLicenseResponseAndDoc failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendtOApaAdasFunctionActiveSt([B)V
    .locals 2

    const v0, 0x2170270d

    const/4 v1, 0x0

    .line 11119
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/scu/CarScuManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling sendApaLicenseResponseAndDoc failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAdasMapInfo([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6746
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAdasMapInfo([B)V

    return-void
.end method

.method public setAssLineChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7981
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuAssLineChanged(I)V

    return-void
.end method

.method public final setAutoParkInState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6401
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoParkInState(I)V

    return-void
.end method

.method public final setAutoParkOutState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6413
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoParkOutState(I)V

    return-void
.end method

.method public setAutoParkReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6670
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoParkReq(I)V

    return-void
.end method

.method public setAutoParkSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7683
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoParkSwitch(I)V

    return-void
.end method

.method public final setAutoPilotLocationInfo(FFFFFFJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 6329
    iget-object v1, v0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoPilotLocationInfo(FFFFFFJ)V

    return-void
.end method

.method public setBlindAreaDetectionWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7171
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBlindAreaDetectionWarning(I)V

    return-void
.end method

.method public setCommonHomeSlotID(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6554
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuCommonHomeSlotID(I)V

    return-void
.end method

.method public setCurrentElectronicEyeSpeedLimitAndDistance(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10058
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuCurrentElectronicEyeSpeedLimitAndDistance(II)V

    return-void
.end method

.method public setCurrentRoadSpeedLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9328
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuCurrentRoadSpeedLimit(I)V

    return-void
.end method

.method public setCutLinePreventSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7136
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setCutLinePreventSw(I)V

    return-void
.end method

.method public setDetailRoadClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7967
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuDetailRoadClass(I)V

    return-void
.end method

.method public setDistractionSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8503
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuDistractionSwitch(I)V

    return-void
.end method

.method public setDoorOpenWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7274
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDoorOpenWarning(I)V

    return-void
.end method

.method public setDsmCameraStatus(I)V
    .locals 2

    .line 10865
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDsmCameraStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10867
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

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setDsmStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10366
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuDsmStatus(I)V

    return-void
.end method

.method public setDsmTiredDistractionManualStatus(I)I
    .locals 2

    const v0, 0x21402704

    const/4 v1, 0x0

    .line 10778
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/scu/CarScuManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 10780
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

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setDsmTiredDistractionSen(I)V
    .locals 2

    .line 10821
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDsmTiredDistractionSen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10823
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

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setDsmTiredDistractionStatus(I)V
    .locals 2

    .line 10738
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDsmTiredDistractionStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10740
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

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setElkSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9370
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuElkSwitch(I)V

    return-void
.end method

.method public setEventInfoRD(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10616
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuEventInfoRD(I)V

    return-void
.end method

.method public final setFactoryScuTest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6341
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuTest(I)V

    return-void
.end method

.method public setFarLampAutoSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7101
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFarLampAutoSwitch(I)V

    return-void
.end method

.method public setFatigueDetectionSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7352
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFatigueDetectionSw(I)V

    return-void
.end method

.method public setFreeParking1Data(FFFIIFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8353
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuFreeParking1Data(FFFIIFF)V

    return-void
.end method

.method public setFreeParking2Data(FFFIIFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8367
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuFreeParking2Data(FFFIIFF)V

    return-void
.end method

.method public setFrontCollisionSecurity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6980
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setFrontCollisionSecurity(I)V

    return-void
.end method

.method public setFsdSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8660
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuFsdSwitch(I)V

    return-void
.end method

.method public setHighSpeedNavgation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7510
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHighSpeedNavigation(I)V

    return-void
.end method

.method public setHighSpeedNavigation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7547
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setHighSpeedNavigation(I)V

    return-void
.end method

.method public setIntelligentCallButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7619
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIntelligentCallButton(I)V

    return-void
.end method

.method public setIntelligentParkOutSw(I)I
    .locals 2

    .line 11020
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIntelligentParkOutSw(I)I

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

    .line 11022
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIntelligentParkOutSw throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setIntelligentSpeedLimit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7430
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setIntelligentSpeedLimit(I)V

    return-void
.end method

.method public setIntelligentSpeedLimitValue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10266
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuIntelligentSpeedLimitValue(I)V

    return-void
.end method

.method public setKeyPark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7749
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuKeyPark(I)V

    return-void
.end method

.method public setKeyRemoteParkType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6686
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setKeyRemoteParkType(I)V

    return-void
.end method

.method public setKeyRemoteSmButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7716
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setKeyRemoteSMButton(I)V

    return-void
.end method

.method public setLaneAlignmentAssist(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7470
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLaneAlignmentAssist(I)V

    return-void
.end method

.method public setLaneChangeAssist(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7309
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLaneChangeAssist(I)V

    return-void
.end method

.method public setLaneDepartureWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7024
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLaneDepartureWarning(I)V

    return-void
.end method

.method public setLaneSupportSystemStateAndWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7065
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLaneSupportSystemStateAndWarning(I)V

    return-void
.end method

.method public setLocalWeather(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7875
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuLocalWeather(IIII)V

    return-void
.end method

.method public final setLocationInfo(FFFFFJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6313
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLocationInfo(FFFFFJ)V

    return-void
.end method

.method public setNaviDangerAreaRDInfo(IIIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10536
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNaviDangerAreaRDInfo(IIIIIII)V

    return-void
.end method

.method public setNaviRoadConnectAttrib(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10496
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNaviRoadConnectAttrib(I)V

    return-void
.end method

.method public setNgpAvoidTruckSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9079
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpAvoidTruckSw(I)V

    return-void
.end method

.method public setNgpDriverConfirmLaneChangeSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9111
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpDriverConfirmLaneChangeSw(I)V

    return-void
.end method

.method public setNgpLaneChangeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9144
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpLaneChangeMode(I)V

    return-void
.end method

.method public setNgpOperationButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8834
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpOperationButton(I)V

    return-void
.end method

.method public setNgpPreferFastLaneSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9047
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpPreferFastLaneSw(I)V

    return-void
.end method

.method public setNgpRemindMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9179
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpRemindMode(I)V

    return-void
.end method

.method public setNgpTipsWindowsSw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8947
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuNgpTipsWindowsSw(I)V

    return-void
.end method

.method public setParkByMemorySw(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9950
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuParkByMemorySw(I)V

    return-void
.end method

.method public final setParkLotChoseIndex2Scu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6584
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setParkLotChoseIndex2Scu(I)V

    return-void
.end method

.method public final setParkLotRecvIndex2Scu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6596
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setParkLotRecvIndex2Scu(I)V

    return-void
.end method

.method public setParkingGroundState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9582
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuParkingGroundState(I)V

    return-void
.end method

.method public setPhoneApButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6540
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setPhoneAPButton(I)V

    return-void
.end method

.method public setPhoneParkType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6719
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setPhoneParkType(I)V

    return-void
.end method

.method public setPhoneSmButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7651
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setPhoneSMButton(I)V

    return-void
.end method

.method public setPhoneSmMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7894
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuPhoneSmMode(I)V

    return-void
.end method

.method public final setRadarWarningVoiceStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6610
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRadarWarningVoiceStatus(I)V

    return-void
.end method

.method public setRearCollisionSecurity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7241
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearCollisionSecurity(I)V

    return-void
.end method

.method public setRearCrossEmergencyWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7208
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setRearCrossEmergencyWarning(I)V

    return-void
.end method

.method public setRoadAttribType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10133
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuRoadAttribType(I)V

    return-void
.end method

.method public setRoadAttributes(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7942
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuRoadAttributes(II)V

    return-void
.end method

.method public setScuDmsMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8009
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuDmsMode(I)V

    return-void
.end method

.method public setScuDsmDdawStatus(I)I
    .locals 2

    .line 10956
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuDsmDdawStatus(I)I

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

    .line 10958
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScuDsmDdSwStatus throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarScuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setScuLdwLkaSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10023
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuLdwLkaSwitchStatus(I)V

    return-void
.end method

.method public setScuOtaTagStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9278
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuOtaTagStatus(I)V

    return-void
.end method

.method public setScuRoadAttr(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7919
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuRoadAttr(I)V

    return-void
.end method

.method public setSeatBeltReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8023
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSeatBeltReq(I)V

    return-void
.end method

.method public final setSideReversingWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6283
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSideReversingWarning(I)V

    return-void
.end method

.method public setSlaAlarmSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8618
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSlaAlarmSwitch(I)V

    return-void
.end method

.method public setSpdLimitWarnType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6638
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSpdLimitWarnType(I)V

    return-void
.end method

.method public setSpeedLimitDriverConfirmSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10149
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSpeedLimitDriverConfirmSwitch(I)V

    return-void
.end method

.method public setSpeedLimitRange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10182
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSpeedLimitRange(I)V

    return-void
.end method

.method public setSpeedLimitSwitchState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10215
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSpeedLimitSwitchState(I)V

    return-void
.end method

.method public setSsLeftSystemStatus([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9210
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSsLeftSystemStatus([B)V

    return-void
.end method

.method public setSsRightSystemStatus([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9224
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuSsRightSystemStatus([B)V

    return-void
.end method

.method public setSuperParkMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7582
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSuperParkMode(I)V

    return-void
.end method

.method public setTrafficSignRecognition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7390
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrafficSignRecognition(I)V

    return-void
.end method

.method public setVoiceLaneChangeCommand(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9898
    iget-object v0, p0, Landroid/car/hardware/scu/CarScuManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setScuVoiceLaneChangeCommand(I)V

    return-void
.end method
