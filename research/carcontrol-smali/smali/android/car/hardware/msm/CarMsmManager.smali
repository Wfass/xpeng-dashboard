.class public final Landroid/car/hardware/msm/CarMsmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarMsmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;,
        Landroid/car/hardware/msm/CarMsmManager$PropertyId;
    }
.end annotation


# static fields
.field public static final ALL_POS_SET_MEMORY_TYPE_NO_REQ:I = 0x0

.field public static final ALL_POS_SET_MEMORY_TYPE_RECALL_POSITION:I = 0x2

.field public static final ALL_POS_SET_MEMORY_TYPE_SAVE_POSITION:I = 0x1

.field public static final COMMON_STATE_FOLD:I = 0x0

.field public static final COMMON_STATE_UNFOLD:I = 0x1

.field private static final DBG:Z = false

.field public static final DEACT_FOLD_SWITCH_PRESSED:I = 0xa

.field public static final DEACT_GEAR_NOT_IN_P:I = 0xe

.field public static final DEACT_HMI_STOP_COMMAND_RECEIVED:I = 0xd

.field public static final DEACT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final DEACT_THIRD_ROW_SEAT_MOVED:I = 0x10

.field public static final DEACT_THIRD_ROW_SEAT_OCCUPIED:I = 0xc

.field public static final DEACT_VEHICLE_OVER_SPEED:I = 0xf

.field public static final DEACT_ZG_SWITCH_PRESSED:I = 0x9

.field public static final EASY_ENTRY_FUNCTION_DISABLE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EASY_ENTRY_FUNCTION_OFF:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EZ_DEACT_CF_DOOR_OPENING:I = 0x13

.field public static final EZ_DEACT_EZ_SWITCH_PRESSED:I = 0xa

.field public static final EZ_DEACT_GEAR_NOT_IN_P:I = 0xf

.field public static final EZ_DEACT_HMI_STOP_COMMAND_RECEIVED:I = 0xe

.field public static final EZ_DEACT_MSMT_RESPONSE_TIMEOUT:I = 0xb

.field public static final EZ_DEACT_NOT_ENOUGH_SPACE:I = 0xc

.field public static final EZ_DEACT_SECROW_SEAT_MOVED:I = 0x11

.field public static final EZ_DEACT_SECROW_SEAT_OCCUPIED:I = 0xd

.field public static final EZ_DEACT_VEHICLE_OVER_SPEED:I = 0x10

.field public static final EZ_PPRECON_GEAR_NOT_IN_P:I = 0x7

.field public static final EZ_PPRECON_SECROW_SEAT_MOVING:I = 0x4

.field public static final EZ_PPRECON_SECROW_SEAT_OCCUPIED:I = 0x6

.field public static final EZ_PPRECON_VEHICLE_OVER_SPEED:I = 0x8

.field public static final EZ_PRECON_CF_DOOR_OPENED:I = 0x12

.field public static final EZ_PRECON_EZ_SWITCH_PRESSED:I = 0x2

.field public static final EZ_PRECON_NOT_ENOUGH_SPACE:I = 0x9

.field public static final EZ_PRECON_OTHER_FUNCTION_ACTIVATED:I = 0x5

.field public static final EZ_PRECON_SEAT_AUTO_ADJ_DISABLE:I = 0x3

.field public static final EZ_PRECON_ZG_SWITCH_PRESSED:I = 0x1

.field public static final FOLD_DEACT_MSMT_RESPONSE_TIMEOUT:I = 0x11

.field public static final FOLD_DEACT_SEAT_BELT_BUCKLED:I = 0x13

.field public static final FOLD_PRCON_STOW_POSITION_NOT_IN_FULLY_FOLDED:I = 0x14

.field public static final FOLD_PRECON_SEAT_BELT_BUCKLED:I = 0x12

.field public static final FOLD_PRECON_SEAT_FOLDED:I = 0x8

.field public static final FOLD_PRECON_SEAT_UNFOLDED:I = 0x9

.field public static final FUNCTION_STATE_DISADLE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GEAR_NOT_IN_P:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADREST_STATUS_NORMAL:I = 0x0

.field public static final HEADREST_STATUS_REMOVED:I = 0x1

.field public static final ID_BCM_SECROW_LTSEAT_STOP_MOVE_REQ:I = 0x21401d1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_SECROW_LTSEAT_TILT:I = 0x21411d1a

.field public static final ID_BCM_SECROW_LTSEAT_TILTPOS:I = 0x21401d22

.field public static final ID_BCM_SECROW_LTSEAT_UNFOLD_REQ:I = 0x21401d1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_SECROW_RTSEAT_STOP_MOVE_REQ:I = 0x21401d1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_BCM_SECROW_RTSEAT_TILT:I = 0x21411d1d

.field public static final ID_BCM_SECROW_RTSEAT_TILTPOS:I = 0x21401d23

.field public static final ID_BCM_SECROW_RTSEAT_UNFOLD_REQ:I = 0x21401d1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_ALL_POS_SET:I = 0x21701c7a

.field public static final ID_MSMD_ALL_POS_SET_NEW:I = 0x21701d0c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_ANTI_FATIGUE_MODE_REQ:I = 0x2140501d

.field public static final ID_MSMD_ANTI_FATIGUE_REQ:I = 0x2140501c

.field public static final ID_MSMD_ANTI_FATIGUE_STATUS:I = 0x2140501e

.field public static final ID_MSMD_CUSHIONTILT_INIT_ST:I = 0x2140500d

.field public static final ID_MSMD_CUSH_MASSG_LVL:I = 0x21405032

.field public static final ID_MSMD_CUSH_MASSG_PROG:I = 0x21405031

.field public static final ID_MSMD_HEADREST_ST:I = 0x21401cd5

.field public static final ID_MSMD_HORZPOS_INIT_ST:I = 0x2140500e

.field public static final ID_MSMD_LUMB_CTRL_SW:I = 0x21401d75

.field public static final ID_MSMD_LUMB_RELAX_LVL:I = 0x2140504c

.field public static final ID_MSMD_LUMB_RELAX_MODE:I = 0x2140501a

.field public static final ID_MSMD_LUM_SW_CENTER:I = 0x21401d4f

.field public static final ID_MSMD_LUM_SW_MODE:I = 0x21401d4e

.field public static final ID_MSMD_MASSG_AREA:I = 0x2140505b

.field public static final ID_MSMD_MASSG_ELEM_CMD:I = 0x21411d43

.field public static final ID_MSMD_MASSG_ERR_ST:I = 0x21401d61

.field public static final ID_MSMD_MASSG_LVL:I = 0x21401d3b

.field public static final ID_MSMD_MASSG_LVL_MEM_SWITCH:I = 0x21405048

.field public static final ID_MSMD_MASSG_PROG:I = 0x21401d3a

.field public static final ID_MSMD_MCU_WELCOME_ACTIVE:I = 0x21401d6d

.field public static final ID_MSMD_MEMORY_REQ:I = 0x21401d60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_POS_SAVE:I = 0x21701c79

.field public static final ID_MSMD_POS_SAVE_NEW:I = 0x21701d0b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_RELAX_LVL_MEM_SWITCH:I = 0x21405050

.field public static final ID_MSMD_RELAX_MODE_MEM_SWITCH:I = 0x2140504e

.field public static final ID_MSMD_SEATCUSHEXTPOS:I = 0x21401d24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_SEATCUSHTILTPOS:I = 0x21401d25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_SEATHORZCMD:I = 0x21411c50

.field public static final ID_MSMD_SEATHORZPOS:I = 0x21401c56

.field public static final ID_MSMD_SEATILTINGPOS:I = 0x21401c58

.field public static final ID_MSMD_SEATLEGHEIGHTCMD:I = 0x21411c53
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_SEATLEGHEIGHTPOS:I = 0x21401c59

.field public static final ID_MSMD_SEATLUMBHORZCMD:I = 0x21411c54

.field public static final ID_MSMD_SEATLUMBVERTICALCMD:I = 0x21411c55

.field public static final ID_MSMD_SEATMEMORY_MODE:I = 0x21405046

.field public static final ID_MSMD_SEATRECALL_MODE:I = 0x2140504a

.field public static final ID_MSMD_SEATTILTINGCMD:I = 0x21411c51

.field public static final ID_MSMD_SEATVERTICALCMD:I = 0x21411c52

.field public static final ID_MSMD_SEATVERTICALPOS:I = 0x21401c57

.field public static final ID_MSMD_SEAT_CUSHION_EXT:I = 0x21411d17

.field public static final ID_MSMD_SEAT_CUSHION_TILT_CMD:I = 0x21411c53

.field public static final ID_MSMD_SEAT_CUSH_TILT:I = 0x21411d17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMD_SEAT_INIT_ST:I = 0x21405008

.field public static final ID_MSMD_SEAT_LEG_HORZ_POS:I = 0x21401d67

.field public static final ID_MSMD_SEAT_MOVEST:I = 0x21401dd2

.field public static final ID_MSMD_SEAT_SIDEWINGS_AUTO_ACTIVE_ST:I = 0x2140502d

.field public static final ID_MSMD_SEAT_SIDEWINGS_AUTO_SENSITIVITY:I = 0x21405045

.field public static final ID_MSMD_SEAT_SIDEWINGS_AUTO_SW:I = 0x2140502b

.field public static final ID_MSMD_SEAT_SIDEWINGS_CMD:I = 0x21415029

.field public static final ID_MSMD_SEAT_SIDEWINGS_DRVMODE_FOLLOW:I = 0x2140502c

.field public static final ID_MSMD_SEAT_SIDEWINGS_POS:I = 0x2140502a

.field public static final ID_MSMD_SEAT_STOPMOVING:I = 0x21401cd9

.field public static final ID_MSMD_SEAT_TILT_LEVEL_OFF:I = 0x21401d16

.field public static final ID_MSMD_SPECIAL_MODE:I = 0x2140501f

.field public static final ID_MSMD_TILTINGPOS_INIT_ST:I = 0x2140500f

.field public static final ID_MSMD_VERTICALPOS_INIT_ST:I = 0x21405010

.field public static final ID_MSMP_ALL_POS_SET:I = 0x21411cd8

.field public static final ID_MSMP_CUSH_MASSG_LVL:I = 0x21405037

.field public static final ID_MSMP_CUSH_MASSG_PROG:I = 0x21405036

.field public static final ID_MSMP_HEADREST_ST:I = 0x21401cd6

.field public static final ID_MSMP_HORZPOS_INIT_ST:I = 0x21405011

.field public static final ID_MSMP_LUMB_CTRL_SW:I = 0x21401d76

.field public static final ID_MSMP_LUMB_RELAX_LVL:I = 0x2140504d

.field public static final ID_MSMP_LUMB_RELAX_MODE:I = 0x2140501b

.field public static final ID_MSMP_LUM_SW_CENTER:I = 0x21401d51

.field public static final ID_MSMP_LUM_SW_MODE:I = 0x21401d50

.field public static final ID_MSMP_MASSG_AREA:I = 0x2140505c

.field public static final ID_MSMP_MASSG_ELEM_CMD:I = 0x21411d44

.field public static final ID_MSMP_MASSG_ERR_ST:I = 0x21401d62

.field public static final ID_MSMP_MASSG_LVL:I = 0x21401d3c

.field public static final ID_MSMP_MASSG_LVL_MEM_SWITCH:I = 0x21405049

.field public static final ID_MSMP_MASSG_PROG:I = 0x21401d3d

.field public static final ID_MSMP_MCU_WELCOME:I = 0x21401478

.field public static final ID_MSMP_MCU_WELCOME_ACTIVE:I = 0x21401d6e

.field public static final ID_MSMP_POS_SAVE:I = 0x21411d42

.field public static final ID_MSMP_RELAX_LVL_MEM_SWITCH:I = 0x21405051

.field public static final ID_MSMP_RELAX_MODE_MEM_SWITCH:I = 0x2140504f

.field public static final ID_MSMP_SEATCUSHEXTPOS:I = 0x21401d26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_MSMP_SEATCUSHTILTCMD:I = 0x21405022

.field public static final ID_MSMP_SEATCUSHTILTPOS:I = 0x21405021

.field public static final ID_MSMP_SEATHORZCMD:I = 0x21411c5c

.field public static final ID_MSMP_SEATHORZPOS:I = 0x21401cd2

.field public static final ID_MSMP_SEATILTINGPOS:I = 0x21401cd4

.field public static final ID_MSMP_SEATLUMBHORZCMD:I = 0x21411d32

.field public static final ID_MSMP_SEATLUMBVERTICALCMD:I = 0x21411d31

.field public static final ID_MSMP_SEATMEMORY_MODE:I = 0x21405047

.field public static final ID_MSMP_SEATRECALL_MODE:I = 0x2140504b

.field public static final ID_MSMP_SEATTILTINGCMD:I = 0x21411c5d

.field public static final ID_MSMP_SEATVERTICALCMD:I = 0x21411c5e

.field public static final ID_MSMP_SEATVERTICALPOS:I = 0x21401cd3

.field public static final ID_MSMP_SEATZEROGRAVCMD:I = 0x21415044

.field public static final ID_MSMP_SEAT_CHILD_LOCK:I = 0x21405023

.field public static final ID_MSMP_SEAT_CUSH_EXT:I = 0x21411d18

.field public static final ID_MSMP_SEAT_FUNC_SOURCE:I = 0x2140502f

.field public static final ID_MSMP_SEAT_INIT_ST:I = 0x21405009

.field public static final ID_MSMP_SEAT_LEG_HORZ_POS:I = 0x21401d68

.field public static final ID_MSMP_SEAT_LEG_LENGTH:I = 0x21415041

.field public static final ID_MSMP_SEAT_LEG_VERT_POS:I = 0x21405030

.field public static final ID_MSMP_SEAT_MOVEST:I = 0x21401dd3

.field public static final ID_MSMP_SEAT_SPL_KG_POS:I = 0x2140505a

.field public static final ID_MSMP_SEAT_STOPMOVING:I = 0x21401cda

.field public static final ID_MSMP_SEAT_THIGHT_LENGTH:I = 0x21415042

.field public static final ID_MSMP_SEAT_THIGHT_LENGTH_POS:I = 0x21405043

.field public static final ID_MSMP_SEAT_TILT_LEVEL_OFF:I = 0x21401d19

.field public static final ID_MSMP_SEAT_ZEROGRAV_ERRST:I = 0x2140502e

.field public static final ID_MSMP_SEAT_ZERO_GRAV_POS:I = 0x21405028

.field public static final ID_MSMP_SPECIAL_MODE:I = 0x21405020

.field public static final ID_MSMP_TILTINGPOS_INIT_ST:I = 0x21405013

.field public static final ID_MSMTL_SEAT_STOW:I = 0x21405052

.field public static final ID_MSMTL_SEAT_STOW_ERRST:I = 0x21405056

.field public static final ID_MSMTL_SEAT_STOW_ST:I = 0x21405054

.field public static final ID_MSMTR_SEAT_STOW:I = 0x21405053

.field public static final ID_MSMTR_SEAT_STOW_ERRST:I = 0x21405057

.field public static final ID_MSMTR_SEAT_STOW_ST:I = 0x21405055

.field public static final ID_MSMT_ALLPOS_INIT_ST:I = 0x2141500c

.field public static final ID_MSMT_ALLPOS_SET:I = 0x21411d8d

.field public static final ID_MSMT_LTSEAT_HEADMOVEST:I = 0x21401dcd

.field public static final ID_MSMT_LTSEAT_HEADVERTICALCMD:I = 0x21411d99

.field public static final ID_MSMT_LTSEAT_HEADVERTICALPOS:I = 0x21401db9

.field public static final ID_MSMT_LTSEAT_TILT:I = 0x21411d98

.field public static final ID_MSMT_LTSEAT_TILTPOS:I = 0x21401db8

.field public static final ID_MSMT_LTSEAT_TILT_FOLD:I = 0x21401da9

.field public static final ID_MSMT_LTSEAT_TILT_FOLD_ERRST:I = 0x21405001

.field public static final ID_MSMT_LTSEAT_TILT_ST:I = 0x21401dbe

.field public static final ID_MSMT_MIDSEAT_HEADMOVEST:I = 0x21401dce

.field public static final ID_MSMT_MIDSEAT_HEADVERTICALCMD:I = 0x21411dbd

.field public static final ID_MSMT_MIDSEAT_HEADVERTICALPOS:I = 0x21401dbc

.field public static final ID_MSMT_MIDSEAT_TILT:I = 0x21401d9c

.field public static final ID_MSMT_RTSEAT_HEADMOVEST:I = 0x21401dcf

.field public static final ID_MSMT_RTSEAT_HEADVERTICALCMD:I = 0x21411d9b

.field public static final ID_MSMT_RTSEAT_HEADVERTICALPOS:I = 0x21401dbb

.field public static final ID_MSMT_RTSEAT_TILT:I = 0x21411d9a

.field public static final ID_MSMT_RTSEAT_TILTPOS:I = 0x21401dba

.field public static final ID_MSMT_RTSEAT_TILT_FOLD:I = 0x21401daa

.field public static final ID_MSMT_RTSEAT_TILT_FOLD_ERRST:I = 0x21405002

.field public static final ID_MSMT_RTSEAT_TILT_ST:I = 0x21401dbf

.field public static final ID_MSMT_SEAT_STOW:I = 0x21401dab

.field public static final ID_MSMT_SEAT_STOW_ERRST:I = 0x21405003

.field public static final ID_MSMT_SEAT_STOW_ST:I = 0x21401dc0

.field public static final ID_MSM_SECROW_LTSEAT_ALLPOS_SAVE:I = 0x2141505e

.field public static final ID_MSM_SECROW_LTSEAT_ALLPOS_SET:I = 0x21411d8b

.field public static final ID_MSM_SECROW_LTSEAT_ANGLEPOS:I = 0x21401daf

.field public static final ID_MSM_SECROW_LTSEAT_EASYENTRY:I = 0x21401da3

.field public static final ID_MSM_SECROW_LTSEAT_EASYENTRY_ERRST:I = 0x21405004

.field public static final ID_MSM_SECROW_LTSEAT_FUNCST:I = 0x21401da5

.field public static final ID_MSM_SECROW_LTSEAT_FUNC_TRIGSRC:I = 0x21405014

.field public static final ID_MSM_SECROW_LTSEAT_HEADHORZCMD:I = 0x21411d92

.field public static final ID_MSM_SECROW_LTSEAT_HEADHORZPOS:I = 0x21401db2

.field public static final ID_MSM_SECROW_LTSEAT_HEADVERTICALCMD:I = 0x21411d91

.field public static final ID_MSM_SECROW_LTSEAT_HEADVERTICALPOS:I = 0x21401db1

.field public static final ID_MSM_SECROW_LTSEAT_HORZPOS:I = 0x21401dae

.field public static final ID_MSM_SECROW_LTSEAT_INIT_ST:I = 0x2141500a

.field public static final ID_MSM_SECROW_LTSEAT_LEGVERTICALCMD:I = 0x21411d90

.field public static final ID_MSM_SECROW_LTSEAT_LEGVERTICALPOS:I = 0x21401db0

.field public static final ID_MSM_SECROW_LTSEAT_LUMBHORZCMD:I = 0x21411d9e

.field public static final ID_MSM_SECROW_LTSEAT_LUMBVERTICALCMD:I = 0x21411d9d

.field public static final ID_MSM_SECROW_LTSEAT_SEATANGLECMD:I = 0x21411d8f

.field public static final ID_MSM_SECROW_LTSEAT_SEATHORZCMD:I = 0x21411d8e

.field public static final ID_MSM_SECROW_LTSEAT_STOPMOVING:I = 0x21401dac

.field public static final ID_MSM_SECROW_LTSEAT_SUMMARY_INIT_ST:I = 0x21405018

.field public static final ID_MSM_SECROW_LTSEAT_ZEROGRAV:I = 0x21401da1

.field public static final ID_MSM_SECROW_LTSEAT_ZEROGRAV_ERRST:I = 0x21405006

.field public static final ID_MSM_SECROW_LTSEA_MOVEST:I = 0x21401dd0

.field public static final ID_MSM_SECROW_LTSEA_ST:I = 0x21401dcb

.field public static final ID_MSM_SECROW_LT_SEAT_CHILD_LOCK:I = 0x21405024

.field public static final ID_MSM_SECROW_RTSEAT_ALLPOS_SAVE:I = 0x2141505f

.field public static final ID_MSM_SECROW_RTSEAT_ALLPOS_SET:I = 0x21411d8c

.field public static final ID_MSM_SECROW_RTSEAT_ANGLEPOS:I = 0x21401db4

.field public static final ID_MSM_SECROW_RTSEAT_EASYENTRY:I = 0x21401da4

.field public static final ID_MSM_SECROW_RTSEAT_EASYENTRY_ERRST:I = 0x21405005

.field public static final ID_MSM_SECROW_RTSEAT_FUNCST:I = 0x21401da6

.field public static final ID_MSM_SECROW_RTSEAT_FUNC_TRIGSRC:I = 0x21405015

.field public static final ID_MSM_SECROW_RTSEAT_HEADHORZCMD:I = 0x21411d97

.field public static final ID_MSM_SECROW_RTSEAT_HEADHORZPOS:I = 0x21401db7

.field public static final ID_MSM_SECROW_RTSEAT_HEADVERTICALCMD:I = 0x21411d96

.field public static final ID_MSM_SECROW_RTSEAT_HEADVERTICALPOS:I = 0x21401db6

.field public static final ID_MSM_SECROW_RTSEAT_HORZPOS:I = 0x21401db3

.field public static final ID_MSM_SECROW_RTSEAT_INIT_ST:I = 0x2141500b

.field public static final ID_MSM_SECROW_RTSEAT_LEGVERTICALCMD:I = 0x21411d95

.field public static final ID_MSM_SECROW_RTSEAT_LEGVERTICALPOS:I = 0x21401db5

.field public static final ID_MSM_SECROW_RTSEAT_LUMBHORZCMD:I = 0x21411da0

.field public static final ID_MSM_SECROW_RTSEAT_LUMBVERTICALCMD:I = 0x21411d9f

.field public static final ID_MSM_SECROW_RTSEAT_SEATANGLECMD:I = 0x21411d94

.field public static final ID_MSM_SECROW_RTSEAT_SEATHORZCMD:I = 0x21411d93

.field public static final ID_MSM_SECROW_RTSEAT_STOPMOVING:I = 0x21401dad

.field public static final ID_MSM_SECROW_RTSEAT_SUMMARY_INIT_ST:I = 0x21405019

.field public static final ID_MSM_SECROW_RTSEAT_ZEROGRAV:I = 0x21401da2

.field public static final ID_MSM_SECROW_RTSEAT_ZEROGRAV_ERRST:I = 0x21405007

.field public static final ID_MSM_SECROW_RTSEA_MOVEST:I = 0x21401dd1

.field public static final ID_MSM_SECROW_RTSEA_ST:I = 0x21401dcc

.field public static final ID_MSM_SECROW_RT_SEAT_CHILD_LOCK:I = 0x21405025

.field public static final ID_MSM_TRDROW_LTSEAT_FUNC_TRIGSRC:I = 0x21405016

.field public static final ID_MSM_TRDROW_LT_SEAT_CHILD_LOCK:I = 0x21405026

.field public static final ID_MSM_TRDROW_RTSEAT_FUNC_TRIGSRC:I = 0x21405017

.field public static final ID_MSM_TRDROW_RT_SEAT_CHILD_LOCK:I = 0x21405027

.field public static final ID_SECROW_LTSEAT_CUSHEXTPOS:I = 0x21401d34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SECROW_LTSEAT_CUSHEXT_REQ:I = 0x21411d33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SECROW_LTSEAT_LEG_HORZ_POS:I = 0x21401d69

.field public static final ID_SECROW_LTSEAT_LEG_HORZ_REQ:I = 0x21411d6b

.field public static final ID_SECROW_LTSEAT_SPL_KG_POS:I = 0x21405059

.field public static final ID_SECROW_LTSEAT_UNLOCK:I = 0x21401d38

.field public static final ID_SECROW_LT_ALL_POS_SET:I = 0x21411d48

.field public static final ID_SECROW_LT_CUSH_MASSG_LVL:I = 0x21405034

.field public static final ID_SECROW_LT_CUSH_MASSG_PROG:I = 0x21405033

.field public static final ID_SECROW_LT_MASSG_AREA:I = 0x21405035

.field public static final ID_SECROW_LT_MASSG_ELEM_CMD:I = 0x21411d45

.field public static final ID_SECROW_LT_MASSG_ERR_ST:I = 0x21401d63

.field public static final ID_SECROW_LT_MASSG_LVL:I = 0x21401d3f

.field public static final ID_SECROW_LT_MASSG_PROG:I = 0x21401d3e

.field public static final ID_SECROW_RTSEAT_CUSHEXTPOS:I = 0x21401d36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SECROW_RTSEAT_CUSHEXT_REQ:I = 0x21411d35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_SECROW_RTSEAT_LEG_HORZ_POS:I = 0x21401d6a

.field public static final ID_SECROW_RTSEAT_LEG_HORZ_REQ:I = 0x21411d6c

.field public static final ID_SECROW_RTSEAT_SPL_KG_POS:I = 0x21405058

.field public static final ID_SECROW_RTSEAT_UNLOCK:I = 0x21401d37

.field public static final ID_SECROW_RT_ALL_POS_SET:I = 0x21411d49

.field public static final ID_SECROW_RT_ARMREST_FOLD_ST:I = 0x2140505d

.field public static final ID_SECROW_RT_CUSH_MASSG_LVL:I = 0x21405039

.field public static final ID_SECROW_RT_CUSH_MASSG_PROG:I = 0x21405038

.field public static final ID_SECROW_RT_MASSG_AREA:I = 0x21405040

.field public static final ID_SECROW_RT_MASSG_ELEM_CMD:I = 0x21411d46

.field public static final ID_SECROW_RT_MASSG_ERR_ST:I = 0x21401d64

.field public static final ID_SECROW_RT_MASSG_LVL:I = 0x21401d41

.field public static final ID_SECROW_RT_MASSG_PROG:I = 0x21401d40

.field public static final INT_SEAT_ADJPHYSW_PRESSED:I = 0x5

.field public static final INT_SEAT_ADJSOFTSW_PRESSED:I = 0x6

.field public static final INT_SEAT_SECRT_SEAT_OCCUPIED:I = 0x8

.field public static final INT_SEAT_SIDWINGS_AUTO_SENS_NORMAL:I = 0x0

.field public static final INT_SEAT_SIDWINGS_AUTO_SENS_SENSITIVITY:I = 0x1

.field public static final INT_SEAT_UNITIALIZED:I = 0x7

.field public static final INT_SEAT_ZGENTER_PRESSED:I = 0x9

.field public static final INT_SEAT_ZGERECOVER_PRESSED:I = 0xa

.field public static final LUMBER_SWITCH_MODE_CUSHION_EXTENSION:I = 0x1

.field public static final LUMBER_SWITCH_MODE_LUMBER:I = 0x0

.field public static final LUMB_CTRL_SW_CTRL_DISABLE:I = 0x0

.field public static final LUMB_CTRL_SW_CTRL_ENABLE:I = 0x1

.field public static final MASSG_AREA_BACKREST:I = 0x0

.field public static final MASSG_AREA_BOTH_BACKREST_CUSHION:I = 0x2

.field public static final MASSG_AREA_CUSHION:I = 0x1

.field public static final MASSG_LEVEL_HIGH_INTENSITY:I = 0x3

.field public static final MASSG_LEVEL_NORMAL_INTENSITY:I = 0x2

.field public static final MASSG_LEVEL_NO_COMMAND:I = 0xa

.field public static final MASSG_LEVEL_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASSG_LEVEL_WEAK_INTENSITY:I = 0x1

.field public static final MASSG_PROG_ELEM_DEFLATION:I = 0x2

.field public static final MASSG_PROG_ELEM_INFLATION:I = 0x1

.field public static final MASSG_PROG_ELEM_MAINTAIN_PRESSURE:I = 0x3

.field public static final MASSG_PROG_ELEM_NO_COMMAND:I = 0x0

.field public static final MASSG_PROG_STATUS_MODE_1:I = 0x1

.field public static final MASSG_PROG_STATUS_MODE_10:I = 0xa

.field public static final MASSG_PROG_STATUS_MODE_11:I = 0xb

.field public static final MASSG_PROG_STATUS_MODE_12:I = 0xc

.field public static final MASSG_PROG_STATUS_MODE_13:I = 0xd

.field public static final MASSG_PROG_STATUS_MODE_2:I = 0x2

.field public static final MASSG_PROG_STATUS_MODE_3:I = 0x3

.field public static final MASSG_PROG_STATUS_MODE_4:I = 0x4

.field public static final MASSG_PROG_STATUS_MODE_5:I = 0x5

.field public static final MASSG_PROG_STATUS_MODE_6:I = 0x6

.field public static final MASSG_PROG_STATUS_MODE_7:I = 0x7

.field public static final MASSG_PROG_STATUS_MODE_8:I = 0x8

.field public static final MASSG_PROG_STATUS_MODE_9:I = 0x9

.field public static final MASSG_PROG_STATUS_MODE_DIRECT_CONTROL:I = 0xe

.field public static final MASSG_PROG_STATUS_MODE_NO_COMMAND:I = 0xf

.field public static final MASSG_PROG_STATUS_OFF:I = 0x0

.field public static final MSMD_ALL_POS_SET_MEMORY_TYPE_NO_REQ:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSMD_ALL_POS_SET_MEMORY_TYPE_RECALL_POSITION:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSMD_ALL_POS_SET_MEMORY_TYPE_SAVE_POSITION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSMT_CTRL_FOLD:I = 0x1

.field public static final MSMT_CTRL_STOP:I = 0x2

.field public static final MSMT_CTRL_STOW_ENTER:I = 0x1

.field public static final MSMT_CTRL_STOW_RESTORE:I = 0x2

.field public static final MSMT_CTRL_STOW_STOP:I = 0x3

.field public static final MSMT_CTRL_UNFOLD:I = 0x2

.field public static final MSMT_FOLD_ACTIVATED:I = 0x2

.field public static final MSMT_FOLD_PENDING:I = 0x1

.field public static final MSMT_HEAD_AUTO_ADJ:I = 0x2

.field public static final MSMT_HEAD_INITAL_ADJ:I = 0x3

.field public static final MSMT_HEAD_MANUAL_ADJ:I = 0x1

.field public static final MSMT_HEAD_STOP:I = 0x0

.field public static final MSMT_STOWFUN_STOP:I = 0x5

.field public static final MSMT_STOW_ACTIVATED:I = 0x2

.field public static final MSMT_STOW_PENDING:I = 0x1

.field public static final MSMT_STOW_STATE_FULLY_FOLED:I = 0x1

.field public static final MSMT_STOW_STATE_HALF_STOWED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSMT_STOW_STATE_NOT_FULLY_STOWED:I = 0x2

.field public static final MSMT_STOW_STATE_STOWED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MSMT_STOW_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STATE_FULLY_FOLED:I = 0x2

.field public static final MSMT_TILT_STATE_HALF_FOLED:I = 0x1

.field public static final MSMT_TILT_STATE_UNKNOWN:I = 0x0

.field public static final MSMT_TILT_STOP:I = 0x5

.field public static final MSMT_UNFOLD_ACTIVATED:I = 0x4

.field public static final MSMT_UNFOLD_PENDING:I = 0x3

.field public static final MSMT_UNSTOW_ACTIVATED:I = 0x4

.field public static final MSMT_UNSTOW_PENDING:I = 0x3

.field public static final MSM_ANTI_FATIGUE_MODE_BACKWARD:I = 0x2

.field public static final MSM_ANTI_FATIGUE_MODE_FORWARD:I = 0x1

.field public static final MSM_ANTI_FATIGUE_NO_REQ:I = 0x0

.field public static final MSM_ANTI_FATIGUE_START:I = 0x1

.field public static final MSM_ANTI_FATIGUE_STATE_ACTIVE:I = 0x2

.field public static final MSM_ANTI_FATIGUE_STATE_INACTIVE:I = 0x0

.field public static final MSM_ANTI_FATIGUE_STATE_READY:I = 0x1

.field public static final MSM_ANTI_FATIGUE_STOP:I = 0x2

.field public static final MSM_CONTROL_PENDING:I = 0x2

.field public static final MSM_CONTROL_START:I = 0x1

.field public static final MSM_CONTROL_STOP:I = 0x3

.field public static final MSM_EASYENTRY_ENTERED:I = 0x4

.field public static final MSM_EASYENTRY_PENDING:I = 0x3

.field public static final MSM_FOLD_INACTIVE:I = 0x0

.field public static final MSM_FRONTSEAT_AVOIDANCE_ADJ:I = 0x4

.field public static final MSM_FUNCTION_INACTIVE:I = 0x0

.field public static final MSM_FUNCTION_STOP:I = 0x5

.field public static final MSM_INITIALIZED:I = 0x1

.field public static final MSM_IN_NORMAL_POS:I = 0x0

.field public static final MSM_IN_ZG_POS:I = 0x1

.field public static final MSM_LUMB_RELAX_MODE_1:I = 0x1

.field public static final MSM_LUMB_RELAX_MODE_2:I = 0x2

.field public static final MSM_LUMB_RELAX_MODE_3:I = 0x3

.field public static final MSM_LUMB_RELAX_MODE_OFF:I = 0x0

.field public static final MSM_LUMB_RELAX_MODE_ON:I = 0xf

.field public static final MSM_MCU_WELCOME_ACTIVE:I = 0x1

.field public static final MSM_MCU_WELCOME_INACTIVE:I = 0x0

.field public static final MSM_MODE_CTRL_ENTER:I = 0x1

.field public static final MSM_MODE_CTRL_EXIT:I = 0x2

.field public static final MSM_MODE_CTRL_STOP:I = 0x3

.field public static final MSM_MOVE_BACKWARD:I = 0x2

.field public static final MSM_MOVE_DOWN:I = 0x2

.field public static final MSM_MOVE_FORWARD:I = 0x1

.field public static final MSM_MOVE_RELEASE:I = 0x1

.field public static final MSM_MOVE_SHRINK:I = 0x2

.field public static final MSM_MOVE_UP:I = 0x1

.field public static final MSM_NOT_INITIALIZED:I = 0x0

.field public static final MSM_NO_ERROR:I = 0x0

.field public static final MSM_REQUEST_NO_COMMAND:I = 0x0

.field public static final MSM_REQUEST_RECLINE:I = 0x1

.field public static final MSM_REQUEST_RECLINE_EXIT:I = 0x2

.field public static final MSM_REQUEST_RECLINE_STOP:I = 0x3

.field public static final MSM_SEATMEMORY_MODE_NO_PRESS:I = 0x0

.field public static final MSM_SEATMEMORY_MODE_ONE:I = 0x1

.field public static final MSM_SEATMEMORY_MODE_THREE:I = 0x3

.field public static final MSM_SEATMEMORY_MODE_TWO:I = 0x2

.field public static final MSM_SEAT_AUTO_ADJ:I = 0x2

.field public static final MSM_SEAT_AVOIDANCE_ADJ:I = 0x6

.field public static final MSM_SEAT_EASYENTRY_ADJ:I = 0x4

.field public static final MSM_SEAT_INITAL_ADJ:I = 0x3

.field public static final MSM_SEAT_MANUAL_ADJ:I = 0x1

.field public static final MSM_SEAT_STOP:I = 0x0

.field public static final MSM_SEAT_ZEROGRAVITY_ADJ:I = 0x5

.field public static final MSM_SPECIAL_MODE_REQ_EXIT:I = 0x1

.field public static final MSM_SPECIAL_MODE_REQ_RECLINE:I = 0x0

.field public static final MSM_SPECIAL_MODE_REQ_STOP:I = 0x2

.field public static final MSM_SPECIAL_MODE_REQ_ZG:I = 0x3

.field public static final MSM_SPECIAL_MODE_STATUS_ENTERING_RECINE:I = 0x1

.field public static final MSM_SPECIAL_MODE_STATUS_ENTERING_ZG:I = 0x4

.field public static final MSM_SPECIAL_MODE_STATUS_EXITING_RECINE:I = 0x2

.field public static final MSM_SPECIAL_MODE_STATUS_EXITING_ZG:I = 0x5

.field public static final MSM_SPECIAL_MODE_STATUS_INACTIVE:I = 0x0

.field public static final MSM_SPECIAL_MODE_STATUS_IN_RECINE:I = 0x3

.field public static final MSM_SPECIAL_MODE_STATUS_IN_ZG:I = 0x6

.field public static final MSM_SPECIAL_MODE_STATUS_RECOVERING:I = 0x7

.field public static final MSM_SPL_KG_MOD_RECOVERING:I = 0x8

.field public static final MSM_STATE_DEFAULT:I = 0x3

.field public static final MSM_STATE_EASY_ENTRY:I = 0x2

.field public static final MSM_STATE_OTHER:I = 0x0

.field public static final MSM_STATE_ZERO_GRAVITY:I = 0x1

.field public static final MSM_STATUS_ERROR:I = 0x1

.field public static final MSM_STATUS_NO_COMMAND:I = 0x0

.field public static final MSM_STATUS_NO_ERROR:I = 0x0

.field public static final MSM_STATUS_OFF:I = 0x0

.field public static final MSM_STATUS_ON:I = 0x1

.field public static final MSM_STATUS_UNLOCK:I = 0x1

.field public static final MSM_STOWFUN_INACTIVE:I = 0x0

.field public static final MSM_TRIGSOURCE_HMI_REQUEST:I = 0x2

.field public static final MSM_TRIGSOURCE_INVALID:I = 0x0

.field public static final MSM_TRIGSOURCE_PHYSICAL_SWITCH:I = 0x1

.field public static final MSM_ZEROGRAV_ENTERED:I = 0x2

.field public static final MSM_ZEROGRAV_ENTERING:I = 0x6

.field public static final MSM_ZEROGRAV_EXITING:I = 0x7

.field public static final MSM_ZEROGRAV_PENDING:I = 0x1

.field public static final Msm_BlowOrHeat_Level1:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_BlowOrHeat_Level2:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_BlowOrHeat_Level3:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_Move_Backward:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_Move_Down:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_Move_Forward:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Msm_Move_Up:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_ERROR:I = 0x0

.field public static final POSITION_MEMORY_NO_REQUEST_STATUS:I = 0x0

.field public static final POSITION_MEMORY_RECALL_STATUS:I = 0x2

.field public static final POSITION_MEMORY_SAVE_STATUS:I = 0x1

.field public static final PPRECON_SECROW_SEAT_MOVING:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRECON_EG_SWITCH_PRESSED:I = 0x2

.field public static final PRECON_GEAR_NOT_IN_P:I = 0x5

.field public static final PRECON_NOT_ENOUGH_SPACE:I = 0x7

.field public static final PRECON_OTHER_FUNCTION_ACTIVATED:I = 0x3

.field public static final PRECON_SEAT_ADJPHYSW_PRESSED:I = 0x2

.field public static final PRECON_SEAT_ADJSOFTSW_PRESSED:I = 0x3

.field public static final PRECON_SEAT_AUTO_ADJ_DISABLE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRECON_SEAT_AUTO_ADJ_DISABLED:I = 0x1

.field public static final PRECON_SEAT_SECRT_SEAT_OCCUPIED:I = 0x4

.field public static final PRECON_SEAT_UNITIALIZED:I = 0x1

.field public static final PRECON_SECOND_ROW_SEAT_MOVING:I = 0x4

.field public static final PRECON_SECROW_SEAT_OCCUPIED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRECON_THIED_ROW_SEAT_OCCUPIED:I = 0x4

.field public static final PRECON_THIRD_ROW_SEAT_MOVING:I = 0x2

.field public static final PRECON_TRDROW_SEAT_OCCUPIED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRECON_VEHICLE_OVER_SPEED:I = 0x6

.field public static final PRECON_ZG_SWITCH_PRESSED:I = 0x1

.field public static final SEAT_AUTO_JUSTING_DISABLE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEAT_NOT_INITIALIZED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEAT_OCCUPIED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEAT_SECROW_FOLD:I = 0x1

.field public static final SEAT_SECROW_UNFOLD:I = 0x2

.field public static final SEAT_TILT_LEVEL_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTING_STATE_OFF:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SPECIAL_CABIN_MODE_ACTIVATED:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STOP_SEAT_MOVING:I = 0x1

.field public static final STOW_DEACT_MSMT_RESPONSE_TIMEOUT:I = 0x12

.field public static final STOW_DEACT_SEAT_BELT_BUCKLED:I = 0x11

.field public static final STOW_PRECON_SEAT_BELT_BUCKLED:I = 0x8

.field public static final STOW_PRECON_SEAT_FOLDE:I = 0xa

.field public static final STOW_PRECON_VEHICLE_OVER_SPEED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SWITCH_STATUS_INVALID:I = 0x2

.field public static final SWITCH_STATUS_NOT_PRESSED:I = 0x0

.field public static final SWITCH_STATUS_PRESSED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarMsmManager"

.field public static final ZG_DEACT_HMI_STOP_COMMAND_RECEIVED:I = 0xd

.field public static final ZG_DEACT_MSMT_RESPONSE_TIMEOUT:I = 0xa

.field public static final ZG_DEACT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final ZG_DEACT_SECROW_SEAT_MOVED:I = 0xe

.field public static final ZG_DEACT_THIRD_ROW_SEAT_MOVED:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ZG_DEACT_THIRD_ROW_SEAT_OCCUPIED:I = 0xc

.field public static final ZG_PRECON_FRONT_ROW_NOT_ENOUGH_SPACE:I = 0xf

.field public static final ZG_PRECON_NOT_ENOUGH_SPACE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ZG_PRECON_OTHER_FUNCTION_ACTIVATED:I = 0x5

.field public static final ZG_PRECON_SEAT_AUTO_ADJ_DISABLE:I = 0x3

.field public static final ZG_PRECON_THIED_ROW_SEAT_OCCUPIED:I = 0x6

.field public static final ZG_PRECON_THIRD_ROW_NOT_ENOUGH_SPACE:I = 0x10

.field public static final ZG_PRECON_THIRD_ROW_SEAT_MOVING:I = 0x7


# instance fields
.field private final mMsmPropertyIds:Landroid/util/ArraySet;
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
    .locals 1

    const/4 p3, 0x0

    const-string p4, "CarMsmManager"

    .line 3975
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 3734
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0xe1

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21411c50

    .line 3736
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21411c51

    .line 3737
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21411c52

    .line 3738
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21411c53

    .line 3739
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p4, 0x21411c54

    .line 3740
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, p2, p5

    const p4, 0x21411c55

    .line 3741
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, p2, p5

    const p4, 0x21401c56

    .line 3742
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, p2, p5

    const p4, 0x21401c57

    .line 3743
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    aput-object p4, p2, p5

    const p4, 0x21401c58

    .line 3744
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x8

    aput-object p4, p2, p5

    const p4, 0x21401c59

    .line 3745
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x9

    aput-object p4, p2, p5

    const p4, 0x21411c5c

    .line 3746
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xa

    aput-object p4, p2, p5

    const p4, 0x21411c5d

    .line 3747
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xb

    aput-object p4, p2, p5

    const p4, 0x21411c5e

    .line 3748
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xc

    aput-object p4, p2, p5

    const p4, 0x21405022

    .line 3749
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd

    aput-object p4, p2, p5

    const p4, 0x21415044

    .line 3750
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xe

    aput-object p4, p2, p5

    const p4, 0x21701c7a

    .line 3751
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xf

    aput-object p4, p2, p5

    const p4, 0x21701c79

    .line 3752
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x10

    aput-object p4, p2, p5

    const p4, 0x21401cd2

    .line 3753
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x11

    aput-object p4, p2, p5

    const p4, 0x21401cd3

    .line 3754
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x12

    aput-object p4, p2, p5

    const p4, 0x21401cd4

    .line 3755
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x13

    aput-object p4, p2, p5

    const p4, 0x21405021

    .line 3756
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x14

    aput-object p4, p2, p5

    const p4, 0x21405043

    .line 3757
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x15

    aput-object p4, p2, p5

    const p4, 0x21401cd5

    .line 3758
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x16

    aput-object p4, p2, p5

    const p4, 0x21401cd6

    .line 3759
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x17

    aput-object p4, p2, p5

    const p4, 0x21411cd8

    .line 3760
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x18

    aput-object p4, p2, p5

    const p4, 0x21401cd9

    .line 3761
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x19

    aput-object p4, p2, p5

    const p4, 0x21401cda

    .line 3762
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1a

    aput-object p4, p2, p5

    const p4, 0x21701d0c

    .line 3763
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1b

    aput-object p4, p2, p5

    const p4, 0x21701d0b

    .line 3764
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1c

    aput-object p4, p2, p5

    const p4, 0x21401d16

    .line 3765
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1d

    aput-object p4, p2, p5

    const p4, 0x21411d17

    .line 3766
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1e

    aput-object p4, p2, p5

    const p5, 0x21411d18

    .line 3767
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x1f

    aput-object p5, p2, v0

    const p5, 0x21415041

    .line 3768
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x20

    aput-object p5, p2, v0

    const p5, 0x21415042

    .line 3769
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x21

    aput-object p5, p2, v0

    const p5, 0x21401d19

    .line 3770
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x22

    aput-object p5, p2, v0

    const p5, 0x21411d1a

    .line 3771
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x23

    aput-object p5, p2, v0

    const p5, 0x21411d1d

    .line 3772
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x24

    aput-object p5, p2, v0

    const p5, 0x21401d22

    .line 3773
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x25

    aput-object p5, p2, v0

    const p5, 0x21401d23

    .line 3774
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x26

    aput-object p5, p2, v0

    const p5, 0x21401d67

    .line 3775
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x27

    aput-object p5, p2, v0

    const p5, 0x21401d25

    .line 3776
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x28

    aput-object p5, p2, v0

    const p5, 0x21405030

    .line 3777
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x29

    aput-object p5, p2, v0

    const p5, 0x21401d68

    .line 3778
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2a

    aput-object p5, p2, v0

    const p5, 0x21401478

    .line 3779
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2b

    aput-object p5, p2, v0

    const p5, 0x21411d31

    .line 3780
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2c

    aput-object p5, p2, v0

    const p5, 0x21411d32

    .line 3781
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2d

    aput-object p5, p2, v0

    const p5, 0x21411d6b

    .line 3782
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2e

    aput-object p5, p2, v0

    const p5, 0x21411d6c

    .line 3783
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x2f

    aput-object p5, p2, v0

    const p5, 0x21401d69

    .line 3784
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x30

    aput-object p5, p2, v0

    const p5, 0x21401d6a

    .line 3785
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x31

    aput-object p5, p2, v0

    const p5, 0x21401d37

    .line 3786
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x32

    aput-object p5, p2, v0

    const p5, 0x21401d38

    .line 3787
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x33

    aput-object p5, p2, v0

    const p5, 0x21401d3a

    .line 3788
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x34

    aput-object p5, p2, v0

    const p5, 0x21401d3b

    .line 3789
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x35

    aput-object p5, p2, v0

    const p5, 0x21401d3d

    .line 3790
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x36

    aput-object p5, p2, v0

    const p5, 0x21401d3c

    .line 3791
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x37

    aput-object p5, p2, v0

    const p5, 0x21401d3e

    .line 3792
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x38

    aput-object p5, p2, v0

    const p5, 0x21401d3f

    .line 3793
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x39

    aput-object p5, p2, v0

    const p5, 0x21401d40

    .line 3794
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3a

    aput-object p5, p2, v0

    const p5, 0x21401d41

    .line 3795
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3b

    aput-object p5, p2, v0

    const p5, 0x21411d42

    .line 3796
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3c

    aput-object p5, p2, v0

    const p5, 0x21411d43

    .line 3797
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3d

    aput-object p5, p2, v0

    const p5, 0x21411d44

    .line 3798
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3e

    aput-object p5, p2, v0

    const p5, 0x21411d45

    .line 3799
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x3f

    aput-object p5, p2, v0

    const p5, 0x21411d46

    .line 3800
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x40

    aput-object p5, p2, v0

    const p5, 0x21411d48

    .line 3801
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x41

    aput-object p5, p2, v0

    const p5, 0x21411d49

    .line 3802
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x42

    aput-object p5, p2, v0

    const p5, 0x21401d4e

    .line 3803
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x43

    aput-object p5, p2, v0

    const p5, 0x21401d4f

    .line 3804
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x44

    aput-object p5, p2, v0

    const p5, 0x21401d50

    .line 3805
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x45

    aput-object p5, p2, v0

    const p5, 0x21401d51

    .line 3806
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x46

    aput-object p5, p2, v0

    const p5, 0x21401d60

    .line 3807
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x47

    aput-object p5, p2, v0

    const p5, 0x21401d61

    .line 3808
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x48

    aput-object p5, p2, v0

    const p5, 0x21401d62

    .line 3809
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x49

    aput-object p5, p2, v0

    const p5, 0x21401d63

    .line 3810
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4a

    aput-object p5, p2, v0

    const p5, 0x21401d64

    .line 3811
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4b

    aput-object p5, p2, v0

    const p5, 0x21401d6d

    .line 3812
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4c

    aput-object p5, p2, v0

    const p5, 0x21401d6e

    .line 3813
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4d

    aput-object p5, p2, v0

    const p5, 0x21401d75

    .line 3814
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4e

    aput-object p5, p2, v0

    const p5, 0x21401d76

    .line 3815
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x4f

    aput-object p5, p2, v0

    const p5, 0x21411d8b

    .line 3816
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x50

    aput-object p5, p2, v0

    const p5, 0x21411d8c

    .line 3817
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x51

    aput-object p5, p2, v0

    const p5, 0x21411d8d

    .line 3818
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x52

    aput-object p5, p2, v0

    const p5, 0x21411d8e

    .line 3819
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x53

    aput-object p5, p2, v0

    const p5, 0x21411d8f

    .line 3820
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x54

    aput-object p5, p2, v0

    const p5, 0x21411d90

    .line 3821
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x55

    aput-object p5, p2, v0

    const p5, 0x21411d91

    .line 3822
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x56

    aput-object p5, p2, v0

    const p5, 0x21411d92

    .line 3823
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x57

    aput-object p5, p2, v0

    const p5, 0x21411d93

    .line 3824
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x58

    aput-object p5, p2, v0

    const p5, 0x21411d94

    .line 3825
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x59

    aput-object p5, p2, v0

    const p5, 0x21411d95

    .line 3826
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5a

    aput-object p5, p2, v0

    const p5, 0x21411d96

    .line 3827
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5b

    aput-object p5, p2, v0

    const p5, 0x21411d97

    .line 3828
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5c

    aput-object p5, p2, v0

    const p5, 0x21411d98

    .line 3829
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5d

    aput-object p5, p2, v0

    const p5, 0x21411d99

    .line 3830
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5e

    aput-object p5, p2, v0

    const p5, 0x21411d9a

    .line 3831
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x5f

    aput-object p5, p2, v0

    const p5, 0x21411d9b

    .line 3832
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x60

    aput-object p5, p2, v0

    const p5, 0x21401d9c

    .line 3833
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x61

    aput-object p5, p2, v0

    const p5, 0x21411d9d

    .line 3834
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x62

    aput-object p5, p2, v0

    const p5, 0x21411d9e

    .line 3835
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x63

    aput-object p5, p2, v0

    const p5, 0x21411d9f

    .line 3836
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x64

    aput-object p5, p2, v0

    const p5, 0x21411da0

    .line 3837
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x65

    aput-object p5, p2, v0

    const p5, 0x21401da1

    .line 3838
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x66

    aput-object p5, p2, v0

    const p5, 0x21401da2

    .line 3839
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x67

    aput-object p5, p2, v0

    const p5, 0x21401da3

    .line 3840
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x68

    aput-object p5, p2, v0

    const p5, 0x21401da4

    .line 3841
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x69

    aput-object p5, p2, v0

    const p5, 0x21401da5

    .line 3842
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6a

    aput-object p5, p2, v0

    const p5, 0x21401da6

    .line 3843
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6b

    aput-object p5, p2, v0

    const p5, 0x21401da9

    .line 3844
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6c

    aput-object p5, p2, v0

    const p5, 0x21401daa

    .line 3845
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6d

    aput-object p5, p2, v0

    const p5, 0x21401dab

    .line 3846
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6e

    aput-object p5, p2, v0

    const p5, 0x21401dac

    .line 3847
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x6f

    aput-object p5, p2, v0

    const p5, 0x21401dad

    .line 3848
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x70

    aput-object p5, p2, v0

    const p5, 0x21401dae

    .line 3849
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x71

    aput-object p5, p2, v0

    const p5, 0x21401daf

    .line 3850
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x72

    aput-object p5, p2, v0

    const p5, 0x21401db0

    .line 3851
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x73

    aput-object p5, p2, v0

    const p5, 0x21401db1

    .line 3852
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x74

    aput-object p5, p2, v0

    const p5, 0x21401db2

    .line 3853
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x75

    aput-object p5, p2, v0

    const p5, 0x21401db3

    .line 3854
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x76

    aput-object p5, p2, v0

    const p5, 0x21401db4

    .line 3855
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x77

    aput-object p5, p2, v0

    const p5, 0x21401db5

    .line 3856
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x78

    aput-object p5, p2, v0

    const p5, 0x21401db6

    .line 3857
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x79

    aput-object p5, p2, v0

    const p5, 0x21401db7

    .line 3858
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7a

    aput-object p5, p2, v0

    const p5, 0x21401db8

    .line 3859
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7b

    aput-object p5, p2, v0

    const p5, 0x21401db9

    .line 3860
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7c

    aput-object p5, p2, v0

    const p5, 0x21401dba

    .line 3861
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7d

    aput-object p5, p2, v0

    const p5, 0x21401dbb

    .line 3862
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7e

    aput-object p5, p2, v0

    const p5, 0x21401dbc

    .line 3863
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x7f

    aput-object p5, p2, v0

    const p5, 0x21411dbd

    .line 3864
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x80

    aput-object p5, p2, v0

    const p5, 0x21401dbe

    .line 3865
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x81

    aput-object p5, p2, v0

    const p5, 0x21401dbf

    .line 3866
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x82

    aput-object p5, p2, v0

    const p5, 0x21401dc0

    .line 3867
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x83

    aput-object p5, p2, v0

    const p5, 0x21401dcb

    .line 3868
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x84

    aput-object p5, p2, v0

    const p5, 0x21401dcc

    .line 3869
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x85

    aput-object p5, p2, v0

    const p5, 0x21401dcd

    .line 3870
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x86

    aput-object p5, p2, v0

    const p5, 0x21401dce

    .line 3871
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x87

    aput-object p5, p2, v0

    const p5, 0x21401dcf

    .line 3872
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x88

    aput-object p5, p2, v0

    const p5, 0x21401dd0

    .line 3873
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x89

    aput-object p5, p2, v0

    const p5, 0x21401dd1

    .line 3874
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x8a

    aput-object p5, p2, v0

    const p5, 0x21401dd2

    .line 3875
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x8b

    aput-object p5, p2, v0

    const p5, 0x21401dd3

    .line 3876
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/16 v0, 0x8c

    aput-object p5, p2, v0

    const/16 p5, 0x8d

    aput-object p3, p2, p5

    const/16 p3, 0x8e

    aput-object p4, p2, p3

    const p3, 0x21405001

    .line 3879
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8f

    aput-object p3, p2, p4

    const p3, 0x21405002

    .line 3880
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x90

    aput-object p3, p2, p4

    const p3, 0x21405003

    .line 3881
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x91

    aput-object p3, p2, p4

    const p3, 0x21405004

    .line 3882
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x92

    aput-object p3, p2, p4

    const p3, 0x21405005

    .line 3883
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x93

    aput-object p3, p2, p4

    const p3, 0x21405006

    .line 3884
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x94

    aput-object p3, p2, p4

    const p3, 0x21405007

    .line 3885
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x95

    aput-object p3, p2, p4

    const p3, 0x21405008

    .line 3886
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x96

    aput-object p3, p2, p4

    const p3, 0x21405009

    .line 3887
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x97

    aput-object p3, p2, p4

    const p3, 0x2141500a

    .line 3888
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x98

    aput-object p3, p2, p4

    const p3, 0x2141500b

    .line 3889
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x99

    aput-object p3, p2, p4

    const p3, 0x2141500c

    .line 3890
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9a

    aput-object p3, p2, p4

    const p3, 0x2140500e

    .line 3891
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9b

    aput-object p3, p2, p4

    const p3, 0x21405010

    .line 3892
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9c

    aput-object p3, p2, p4

    const p3, 0x2140500d

    .line 3893
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9d

    aput-object p3, p2, p4

    const p3, 0x2140500f

    .line 3894
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9e

    aput-object p3, p2, p4

    const p3, 0x21405011

    .line 3895
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9f

    aput-object p3, p2, p4

    const p3, 0x21405013

    .line 3896
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa0

    aput-object p3, p2, p4

    const p3, 0x21405014

    .line 3897
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa1

    aput-object p3, p2, p4

    const p3, 0x21405015

    .line 3898
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa2

    aput-object p3, p2, p4

    const p3, 0x21405016

    .line 3899
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa3

    aput-object p3, p2, p4

    const p3, 0x21405017

    .line 3900
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa4

    aput-object p3, p2, p4

    const p3, 0x2140501a

    .line 3901
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa5

    aput-object p3, p2, p4

    const p3, 0x2140501b

    .line 3902
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa6

    aput-object p3, p2, p4

    const p3, 0x2140501c

    .line 3903
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa7

    aput-object p3, p2, p4

    const p3, 0x2140501d

    .line 3904
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa8

    aput-object p3, p2, p4

    const p3, 0x2140501e

    .line 3905
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa9

    aput-object p3, p2, p4

    const p3, 0x2140501f

    .line 3906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaa

    aput-object p3, p2, p4

    const p3, 0x21405020

    .line 3907
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xab

    aput-object p3, p2, p4

    const p3, 0x21405018

    .line 3908
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xac

    aput-object p3, p2, p4

    const p3, 0x21405019

    .line 3909
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xad

    aput-object p3, p2, p4

    const p3, 0x21405023

    .line 3910
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xae

    aput-object p3, p2, p4

    const p3, 0x21405024

    .line 3911
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xaf

    aput-object p3, p2, p4

    const p3, 0x21405025

    .line 3912
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb0

    aput-object p3, p2, p4

    const p3, 0x21405026

    .line 3913
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb1

    aput-object p3, p2, p4

    const p3, 0x21405027

    .line 3914
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb2

    aput-object p3, p2, p4

    const p3, 0x21405028

    .line 3915
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb3

    aput-object p3, p2, p4

    const p3, 0x2140502c

    .line 3916
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb4

    aput-object p3, p2, p4

    const p3, 0x2140502b

    .line 3917
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb5

    aput-object p3, p2, p4

    const p3, 0x21405045

    .line 3918
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb6

    aput-object p3, p2, p4

    const p3, 0x2140502d

    .line 3919
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb7

    aput-object p3, p2, p4

    const p3, 0x2140502a

    .line 3920
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb8

    aput-object p3, p2, p4

    const p3, 0x21415029

    .line 3921
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb9

    aput-object p3, p2, p4

    const p3, 0x2140502e

    .line 3922
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xba

    aput-object p3, p2, p4

    const p3, 0x2140502f

    .line 3923
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbb

    aput-object p3, p2, p4

    const p3, 0x21405031

    .line 3924
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbc

    aput-object p3, p2, p4

    const p3, 0x21405032

    .line 3925
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbd

    aput-object p3, p2, p4

    const p3, 0x21405036

    .line 3926
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbe

    aput-object p3, p2, p4

    const p3, 0x21405037

    .line 3927
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xbf

    aput-object p3, p2, p4

    const p3, 0x21405033

    .line 3928
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc0

    aput-object p3, p2, p4

    const p3, 0x21405034

    .line 3929
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc1

    aput-object p3, p2, p4

    const p3, 0x21405035

    .line 3930
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc2

    aput-object p3, p2, p4

    const p3, 0x21405038

    .line 3931
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc3

    aput-object p3, p2, p4

    const p3, 0x21405039

    .line 3932
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc4

    aput-object p3, p2, p4

    const p3, 0x21405040

    .line 3933
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc5

    aput-object p3, p2, p4

    const p3, 0x21405046

    .line 3934
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc6

    aput-object p3, p2, p4

    const p3, 0x21405047

    .line 3935
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc7

    aput-object p3, p2, p4

    const p3, 0x21405048

    .line 3936
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc8

    aput-object p3, p2, p4

    const p3, 0x21405049

    .line 3937
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc9

    aput-object p3, p2, p4

    const p3, 0x2140504a

    .line 3938
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xca

    aput-object p3, p2, p4

    const p3, 0x2140504b

    .line 3939
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xcb

    aput-object p3, p2, p4

    const p4, 0x2140504c

    .line 3940
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xcc

    aput-object p4, p2, p5

    const p4, 0x2140504d

    .line 3941
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xcd

    aput-object p4, p2, p5

    const p4, 0x2140504e

    .line 3942
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xce

    aput-object p4, p2, p5

    const p4, 0x2140504f

    .line 3943
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xcf

    aput-object p4, p2, p5

    const p4, 0x21405050

    .line 3944
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd0

    aput-object p4, p2, p5

    const p4, 0x21405051

    .line 3945
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd1

    aput-object p4, p2, p5

    const p4, 0x21405052

    .line 3946
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd2

    aput-object p4, p2, p5

    const p4, 0x21405053

    .line 3947
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd3

    aput-object p4, p2, p5

    const p4, 0x21405054

    .line 3948
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd4

    aput-object p4, p2, p5

    const p4, 0x21405055

    .line 3949
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd5

    aput-object p4, p2, p5

    const p4, 0x21405056

    .line 3950
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd6

    aput-object p4, p2, p5

    const p4, 0x21405057

    .line 3951
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd7

    aput-object p4, p2, p5

    const/16 p4, 0xd8

    aput-object p3, p2, p4

    const p3, 0x21405059

    .line 3953
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd9

    aput-object p3, p2, p4

    const p3, 0x21405058

    .line 3954
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xda

    aput-object p3, p2, p4

    const p3, 0x2140505a

    .line 3955
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdb

    aput-object p3, p2, p4

    const p3, 0x2140505b

    .line 3956
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdc

    aput-object p3, p2, p4

    const p3, 0x2140505c

    .line 3957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdd

    aput-object p3, p2, p4

    const p3, 0x2140505d

    .line 3958
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xde

    aput-object p3, p2, p4

    const p3, 0x2141505e

    .line 3959
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xdf

    aput-object p3, p2, p4

    const p3, 0x2141505f

    .line 3960
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe0

    aput-object p3, p2, p4

    .line 3735
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/msm/CarMsmManager;->mMsmPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_msm"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDriverAntiFatigueStatus()I
    .locals 2

    const v0, 0x2140501e

    const/4 v1, 0x0

    .line 8949
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverCushMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9276
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverCushMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getDriverCushMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9260
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverCushMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getDriverHeadrestStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5045
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverHeadrestStatus()I

    move-result v0

    return v0
.end method

.method public getDriverLumbRelaxMode()I
    .locals 2

    const v0, 0x2140501a

    const/4 v1, 0x0

    .line 8853
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSeatBackPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4422
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDrvSeatBackPosition()I

    move-result v0

    return v0
.end method

.method public getDriverSeatCushTiltPosition()I
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

.method public getDriverSeatCushionTiltInitState()I
    .locals 3

    .line 8689
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatCushionTiltInitState()I

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

    .line 8691
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverSeatCushionTiltInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatHorizPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4308
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDrvSeatHorizPosition()I

    move-result v0

    return v0
.end method

.method public getDriverSeatHorzPosInitState()I
    .locals 3

    .line 8649
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatHorzPosInitState()I

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

    .line 8651
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverSeatHorzPosInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatInitState()I
    .locals 3

    .line 8485
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatInitState()I

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

    .line 8487
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverSeatInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatLegHorzPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5336
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatLegHorzPosition()I

    move-result v0

    return v0
.end method

.method public getDriverSeatLegPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4542
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDrvSeatLegPosition()I

    move-result v0

    return v0
.end method

.method public getDriverSeatLumberSwitchCenterPressStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6516
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatLumberSwitchCenterPressStatus()I

    move-result v0

    return v0
.end method

.method public getDriverSeatLumberSwitchMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6498
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatLumberSwitchMode()I

    move-result v0

    return v0
.end method

.method public getDriverSeatMassgElem()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6325
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatMassgElem()[I

    move-result-object v0

    return-object v0
.end method

.method public getDriverSeatMassgErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6588
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatMassgErrorStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5991
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getDriverSeatMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5956
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDriverSeatMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getDriverSeatMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8184
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatMoveState()I

    move-result v0

    return v0
.end method

.method public getDriverSeatTiltingInitState()I
    .locals 3

    .line 8709
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatTiltingInitState()I

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

    .line 8711
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverSeatTiltingInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatVertiPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4364
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmDrvSeatVertiPosition()I

    move-result v0

    return v0
.end method

.method public getDriverSeatVerticalPosInitState()I
    .locals 3

    .line 8669
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDriverSeatVerticalPosInitState()I

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

    .line 8671
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDriverSeatVerticalPosInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSideWingsAutoActiveSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502d

    const/4 v1, 0x0

    .line 4294
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSideWingsAutoSensitivity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405045

    const/4 v1, 0x0

    .line 4280
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSideWingsAutoSw()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502b

    const/4 v1, 0x0

    .line 4251
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSideWingsDrvModeFollow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502c

    const/4 v1, 0x0

    .line 4223
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSideWingsPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502a

    const/4 v1, 0x0

    .line 4195
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDriverSpecialMode()I
    .locals 2

    const v0, 0x2140501f

    const/4 v1, 0x0

    .line 8981
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvLumbRelaxIntensity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504c

    const/4 v1, 0x0

    .line 9712
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvMassgArea()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505b

    const/4 v1, 0x0

    .line 10028
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvSeatMemRecallReq()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504a

    const/4 v1, 0x0

    .line 9660
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvSeatMemStoreReq()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405046

    const/4 v1, 0x0

    .line 9566
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMsmTrdLeftSeatStowFunSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405052

    const/4 v1, 0x0

    .line 9815
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMsmTrdRightSeatStowFunSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405053

    const/4 v1, 0x0

    .line 9851
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMsmpFuncSource()I
    .locals 2

    const v0, 0x2140502f

    const/4 v1, 0x0

    .line 9202
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMsmpZeroGravErrorSt()I
    .locals 2

    const v0, 0x2140502e

    const/4 v1, 0x0

    .line 9187
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMsmtLeftSeatFoldFunSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7434
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmtLeftSeatFoldFunSt()I

    move-result v0

    return v0
.end method

.method public getMsmtRightSeatFoldFunSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7472
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmtRightSeatFoldFunSt()I

    move-result v0

    return v0
.end method

.method public getMsmtSeatStowFunSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7510
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmtSeatStowFunSt()I

    move-result v0

    return v0
.end method

.method public getPassengerCushMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9350
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerCushMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getPassengerCushMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9317
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerCushMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getPassengerHeadrestStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5061
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerHeadrestStatus()I

    move-result v0

    return v0
.end method

.method public getPassengerLumbRelaxMode()I
    .locals 2

    const v0, 0x2140501b

    const/4 v1, 0x0

    .line 8869
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPassengerSeatBackPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4454
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatBackPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatCushExtPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5322
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatCushExtPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatCushTiltPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405021

    const/4 v1, 0x0

    .line 4484
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPassengerSeatHorizontalPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4336
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatHorizontalPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatHorzPosInitState()I
    .locals 3

    .line 8729
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPassengerSeatHorzPosInitState()I

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

    .line 8731
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPassengerSeatHorzPosInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerSeatInitState()I
    .locals 3

    .line 8505
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPassengerSeatInitState()I

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

    .line 8507
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPassengerSeatInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerSeatLegHorzPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5363
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatLegHorzPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatLegVertPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5350
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatLegVertPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatLumberSwitchCenterPressStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6551
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatLumberSwitchCenterPressStatus()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatLumberSwitchMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6533
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatLumberSwitchMode()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatMassgElem()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6366
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatMassgElem()[I

    move-result-object v0

    return-object v0
.end method

.method public getPassengerSeatMassgErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6609
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatMassgErrorStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerSeatMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6088
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6051
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8203
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPassengerSeatMoveState()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatThightLengthPosition()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405043

    const/4 v1, 0x0

    .line 4528
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPassengerSeatTiltingInitState()I
    .locals 3

    .line 8749
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getPassengerSeatTiltingInitState()I

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

    .line 8751
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPassengerSeatTiltingInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPassengerSeatVerticalPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4392
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatVerticalPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSeatZeroGravPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4584
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerSeatZeroGravPosition()I

    move-result v0

    return v0
.end method

.method public getPassengerSpecialMode()I
    .locals 2

    const v0, 0x21405020

    const/4 v1, 0x0

    .line 9018
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPassengerWelcomeSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5582
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmPassengerWelcomeSwitch()I

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

    .line 3998
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mMsmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPsngrLumbRelaxIntensity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504d

    const/4 v1, 0x0

    .line 9747
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrMassgArea()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505c

    const/4 v1, 0x0

    .line 10062
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrSeatChildLock()I
    .locals 2

    const v0, 0x21405023

    const/4 v1, 0x0

    .line 9047
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrSeatMemRecallReq()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504a

    const/4 v1, 0x0

    .line 9677
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrSeatMemStoreReq()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405047

    const/4 v1, 0x0

    .line 9583
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrSeatSplkgPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505a

    const/4 v1, 0x0

    .line 9994
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecRowLTCushMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9424
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLTCushMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getSecRowLTCushMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9391
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLTCushMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getSecRowLTMassgArea()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405035

    const/4 v1, 0x0

    .line 10079
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatCushExtPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5791
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatCushExtPosition()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatEasyEntryErrorSt()I
    .locals 3

    .line 8355
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatEasyEntryErrorSt()I

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

    .line 8357
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowLeftSeatEasyEntryErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowLeftSeatFuncSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7372
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatFuncSt()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatFunctionTrigSource()I
    .locals 3

    .line 8770
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatFunctionTrigSource()I

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

    .line 8772
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowLeftSeatFunctionTrigSource throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowLeftSeatInitState()[I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 8530
    fill-array-data v0, :array_0

    .line 8533
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatInitState()[I

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

    .line 8535
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowLeftSeatInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarMsmManager"

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
        0x0
    .end array-data
.end method

.method public getSecRowLeftSeatLegHorzPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5805
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatLegHorzPosition()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatMassgElem()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6408
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatMassgElem()[I

    move-result-object v0

    return-object v0
.end method

.method public getSecRowLeftSeatMassgErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6629
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatMassgErrorStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6186
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6149
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowLeftSeatMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getSecRowLeftSeatPos()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6755
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatPos()[I

    move-result-object v0

    return-object v0
.end method

.method public getSecRowLeftSeatSummaryInitState()I
    .locals 3

    .line 8581
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatSummaryInitState()I

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

    .line 8583
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowLeftSeatSummaryInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowLeftSeatZeroGravErrorSt()I
    .locals 3

    .line 8430
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLeftSeatZeroGravErrorSt()I

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

    .line 8432
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowLeftSeatZeroGravErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowLtSeatAnglePos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7596
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatAnglePos()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatChildLock()I
    .locals 2

    const v0, 0x21405024

    const/4 v1, 0x0

    .line 9076
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatHeadHorzPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7681
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatHeadHorzPos()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatHeadVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7653
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatHorzPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7568
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatLegVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7624
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatLegVerticalPos()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8143
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatMoveState()I

    move-result v0

    return v0
.end method

.method public getSecRowLtSeatState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8050
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowLtSeatState()I

    move-result v0

    return v0
.end method

.method public getSecRowRTCushMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9514
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRTCushMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getSecRowRTCushMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9481
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRTCushMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getSecRowRTMassgArea()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405040

    const/4 v1, 0x0

    .line 10096
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatCushExtPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5851
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatCushExtPosition()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatEasyEntryErrorSt()I
    .locals 3

    .line 8394
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatEasyEntryErrorSt()I

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

    .line 8396
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowRightSeatEasyEntryErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowRightSeatFuncSt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7395
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatFuncSt()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatFunctionTrigSource()I
    .locals 3

    .line 8791
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatFunctionTrigSource()I

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

    .line 8793
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowRightSeatFunctionTrigSource throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowRightSeatInitState()[I
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 8558
    fill-array-data v0, :array_0

    .line 8561
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatInitState()[I

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

    .line 8563
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecRowRightSeatInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarMsmManager"

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
        0x0
    .end array-data
.end method

.method public getSecRowRightSeatLegHorzPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5865
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatLegHorzPosition()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatMassgElem()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6449
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatMassgElem()[I

    move-result-object v0

    return-object v0
.end method

.method public getSecRowRightSeatMassgErrorStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6645
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatMassgErrorStatus()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatMassgIntensity()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6284
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatMassgIntensity()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatMassgProgMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6247
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecRowRightSeatMassgProgMode()I

    move-result v0

    return v0
.end method

.method public getSecRowRightSeatPos()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6833
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatPos()[I

    move-result-object v0

    return-object v0
.end method

.method public getSecRowRightSeatSummaryInitState()I
    .locals 3

    .line 8602
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatSummaryInitState()I

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

    .line 8604
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowRightSeatSummaryInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowRightSeatZeroGravErrorSt()I
    .locals 3

    .line 8465
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRightSeatZeroGravErrorSt()I

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

    .line 8467
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecRowRightSeatZeroGravErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSecRowRtSeatAnglePos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7737
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatAnglePos()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatChildLock()I
    .locals 2

    const v0, 0x21405025

    const/4 v1, 0x0

    .line 9105
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatHeadHorzPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7821
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatHeadHorzPos()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatHeadVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7793
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatHorzPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7709
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatHorzPos()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatLegVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7765
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatLegVerticalPos()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8164
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatMoveState()I

    move-result v0

    return v0
.end method

.method public getSecRowRtSeatState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8068
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getSecRowRtSeatState()I

    move-result v0

    return v0
.end method

.method public getSecrowLtSeatSplkgPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405059

    const/4 v1, 0x0

    .line 9960
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecrowLtSeatTiltPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5428
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecrowLtSeatTiltPosition()I

    move-result v0

    return v0
.end method

.method public getSecrowRightArmsetFoldStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505d

    const/4 v1, 0x0

    .line 10128
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecrowRtSeatSplkgPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405058

    const/4 v1, 0x0

    .line 9977
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getSecrowRtSeatTiltPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5513
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMsmSecrowRtSeatTiltPosition()I

    move-result v0

    return v0
.end method

.method public getTrdLeftRowSeatStowErrorSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405056

    const/4 v1, 0x0

    .line 9913
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdLeftRowSeatStowState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405054

    const/4 v1, 0x0

    .line 9867
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRightRowSeatStowErrorSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405057

    const/4 v1, 0x0

    .line 9943
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRightRowSeatStowState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405055

    const/4 v1, 0x0

    .line 9883
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRowLeftSeatFunctionTrigSource()I
    .locals 3

    .line 8812
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLeftSeatFunctionTrigSource()I

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

    .line 8814
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowLeftSeatFunctionTrigSource throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowLeftSeatTiltFoldErrorSt()I
    .locals 3

    .line 8239
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLeftSeatTiltFoldErrorSt()I

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

    .line 8241
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowLeftSeatTiltFoldErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowLeftSeatTiltState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7998
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLeftSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatChildLock()I
    .locals 2

    const v0, 0x21405026

    const/4 v1, 0x0

    .line 9134
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatHeadMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8086
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLtSeatHeadMoveState()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatHeadVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7877
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowLtSeatTiltPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7849
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowLtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidSeatHeadMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8104
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowMidSeatHeadMoveState()I

    move-result v0

    return v0
.end method

.method public getTrdRowMidSeatHeadVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7961
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRightSeatFunctionTrigSource()I
    .locals 3

    .line 8833
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRightSeatFunctionTrigSource()I

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

    .line 8835
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowRightSeatFunctionTrigSource throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowRightSeatTiltFoldErrorSt()I
    .locals 3

    .line 8279
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRightSeatTiltFoldErrorSt()I

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

    .line 8281
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowRightSeatTiltFoldErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowRightSeatTiltState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8015
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRightSeatTiltState()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatChildLock()I
    .locals 2

    const v0, 0x21405027

    const/4 v1, 0x0

    .line 9163
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatHeadMoveState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8122
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRtSeatHeadMoveState()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatHeadVerticalPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7933
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowRtSeatTiltPos()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7905
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowRtSeatTiltPos()I

    move-result v0

    return v0
.end method

.method public getTrdRowSeatAllPos()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6896
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowSeatAllPos()[I

    move-result-object v0

    return-object v0
.end method

.method public getTrdRowSeatInitState()[I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 8626
    fill-array-data v0, :array_0

    .line 8629
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowSeatInitState()[I

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

    .line 8631
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrdRowSeatInitState throw RemoteException | RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarMsmManager"

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

.method public getTrdRowSeatStowErrorSt()I
    .locals 3

    .line 8316
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowSeatStowErrorSt()I

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

    .line 8318
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrdRowSeatStowErrorSt throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarMsmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTrdRowSeatStowState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8032
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getTrdRowSeatStowState()I

    move-result v0

    return v0
.end method

.method public saveDriverAllPositionsToMcu(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4961
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->saveMsmDriverAllPositionsToMcu(IIII)V

    return-void
.end method

.method public saveDriverAllPositionsToMcu(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v6, 0x7f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4984
    invoke-virtual/range {v0 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->saveDriverAllPositionsToMcu(IIIIII)V

    return-void
.end method

.method public saveDriverAllPositionsToMcu(IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5007
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/car/hardware/XpVehicle/IXpVehicle;->saveMsmDAllPositionsToMcu(IIIIII)V

    return-void
.end method

.method public savePassengerAllPositionsToMcu(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5028
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->saveMsmPassengerAllPositionsToMcu(IIII)V

    return-void
.end method

.method public setDriverAllPositions(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4685
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverAllPositions(IIII)V

    return-void
.end method

.method public setDriverAllPositions(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4710
    invoke-virtual/range {v0 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->setDriverAllPositions(IIIIII)V

    return-void
.end method

.method public setDriverAllPositions(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x7f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4736
    invoke-virtual/range {v0 .. v7}, Landroid/car/hardware/msm/CarMsmManager;->setDriverAllPositions(IIIIIII)V

    return-void
.end method

.method public setDriverAllPositions(IIIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4763
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverAllPositionsToLDCU(IIIIIII)V

    return-void
.end method

.method public setDriverAntiFatigueMode(I)I
    .locals 2

    const v0, 0x2140501d

    const/4 v1, 0x0

    .line 8933
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setDriverAntiFatigueReq(I)I
    .locals 2

    const v0, 0x2140501c

    const/4 v1, 0x0

    .line 8918
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setDriverCushMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9240
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverCushMassgIntensity(I)V

    return-void
.end method

.method public setDriverCushMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9223
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverCushMassgProgMode(I)V

    return-void
.end method

.method public setDriverLegVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4082
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvLegVertiMove(II)V

    return-void
.end method

.method public setDriverLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4128
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvLumbHorzMove(II)V

    return-void
.end method

.method public setDriverLumbRelaxMode(I)I
    .locals 2

    const v0, 0x2140501a

    const/4 v1, 0x0

    .line 8885
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setDriverLumbVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4148
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvLumbVertiMove(II)V

    return-void
.end method

.method public setDriverSeatBackMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4038
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatBackMove(II)V

    return-void
.end method

.method public setDriverSeatBackPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4438
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatBackPosition(I)V

    return-void
.end method

.method public setDriverSeatCushTiltPos(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5130
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatCushTiltPos(II)V

    return-void
.end method

.method public setDriverSeatCushTiltPosition(I)V
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

.method public setDriverSeatCushionExtMove(II)I
    .locals 1

    .line 5150
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatCushTiltPos(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDriverSeatCushionExtMove throw RuntimeException | RemoteException e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarMsmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setDriverSeatCushionTiltMove(II)I
    .locals 1

    .line 4102
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvLegVertiMove(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4105
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDriverSeatCushionTiltMove throws RuntimeException | RemoteException e "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarMsmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public setDriverSeatHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4018
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatHorizMove(II)V

    return-void
.end method

.method public setDriverSeatHorizPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4322
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatHorizPosition(I)V

    return-void
.end method

.method public setDriverSeatLegHorzPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5279
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatLegHorzPosition(I)V

    return-void
.end method

.method public setDriverSeatLegPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4556
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatLegPosition(I)V

    return-void
.end method

.method public setDriverSeatLumbControlSwitchEnable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6661
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatLumbControlSwitchEnable(I)V

    return-void
.end method

.method public setDriverSeatMassgElem([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6303
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 6306
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatMassgElem([I)V

    return-void

    .line 6304
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setDriverSeatMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5974
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatMassgIntensity(I)V

    return-void
.end method

.method public setDriverSeatMassgIntensityMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405048

    const/4 v1, 0x0

    .line 9611
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSeatMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5927
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatMassgProgMode(I)V

    return-void
.end method

.method public setDriverSeatPositionMemoryRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6571
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatPositionMemoryRequest(I)V

    return-void
.end method

.method public setDriverSeatRelaxIntensityMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405050

    const/4 v1, 0x0

    .line 9599
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSeatRelaxModeMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504e

    const/4 v1, 0x0

    .line 9763
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSeatTiltLevelOff(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5108
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverSeatTiltLevelOff(I)V

    return-void
.end method

.method public setDriverSeatVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4060
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatVertiMove(II)V

    return-void
.end method

.method public setDriverSeatVertiPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4378
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDrvSeatVertiPosition(I)V

    return-void
.end method

.method public setDriverSideWingsAutoSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405045

    const/4 v1, 0x0

    .line 4265
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSideWingsAutoSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502b

    const/4 v1, 0x0

    .line 4237
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSideWingsDrvModeFollow(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502c

    const/4 v1, 0x0

    .line 4209
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSideWingsMove(II)V
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

    const p1, 0x21415029

    .line 4168
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/msm/CarMsmManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setDriverSideWingsPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140502a

    const/4 v1, 0x0

    .line 4181
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverSpecialMode(I)I
    .locals 2

    const v0, 0x2140501f

    const/4 v1, 0x0

    .line 8964
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setDriverWelcomeActive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5603
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmDriverWelcomeActive(I)V

    return-void
.end method

.method public setDrvLumbRelaxIntensity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504c

    const/4 v1, 0x0

    .line 9694
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setDrvMassgArea(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505b

    const/4 v1, 0x0

    .line 10011
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setMsmTrdLeftSeatStowReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405052

    const/4 v1, 0x0

    .line 9796
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setMsmTrdRightSeatStowReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405053

    const/4 v1, 0x0

    .line 9832
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setMsmtLeftSeatFoldReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7414
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmtLeftSeatFoldReq(I)V

    return-void
.end method

.method public setMsmtRightSeatFoldReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7452
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmtRightSeatFoldReq(I)V

    return-void
.end method

.method public setMsmtSeatStowReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7490
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmtSeatStowReq(I)V

    return-void
.end method

.method public setPassengerAllPositions(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 4782
    invoke-virtual/range {v0 .. v5}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerAllPositions(IIIII)V

    return-void
.end method

.method public setPassengerAllPositions(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4811
    invoke-virtual/range {v0 .. v6}, Landroid/car/hardware/msm/CarMsmManager;->setPassengerAllPositions(IIIIII)V

    return-void
.end method

.method public setPassengerAllPositions(IIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 4841
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v8, 0x7f

    const/16 v9, 0x7f

    const/16 v10, 0x7f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerAllPositionsToLDCU(IIIIIIIII)V

    return-void
.end method

.method public setPassengerAllPositions(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 4873
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v8, 0x7f

    const/16 v10, 0x7f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerAllPositionsToLDCU(IIIIIIIII)V

    return-void
.end method

.method public setPassengerAllPositions(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 4906
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v10, 0x7f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerAllPositionsToLDCU(IIIIIIIII)V

    return-void
.end method

.method public setPassengerAllPositions(IIIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 4941
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerAllPositionsToLDCU(IIIIIIIII)V

    return-void
.end method

.method public setPassengerCushMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9334
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerCushMassgIntensity(I)V

    return-void
.end method

.method public setPassengerCushMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9297
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerCushMassgProgMode(I)V

    return-void
.end method

.method public setPassengerLumbRelaxMode(I)I
    .locals 2

    const v0, 0x2140501b

    const/4 v1, 0x0

    .line 8902
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setPassengerSeatBackPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4470
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatBackPosition(I)V

    return-void
.end method

.method public setPassengerSeatCushExt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5209
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatCushExt(II)V

    return-void
.end method

.method public setPassengerSeatCushExtPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5265
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatCushExtPosition(I)V

    return-void
.end method

.method public setPassengerSeatCushTiltPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405021

    const/4 v1, 0x0

    .line 4498
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setPassengerSeatHorizontalPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4350
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatHorizontalPosition(I)V

    return-void
.end method

.method public setPassengerSeatLegHorzPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5306
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLegHorzPosition(I)V

    return-void
.end method

.method public setPassengerSeatLegLength(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5229
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLegLength(II)V

    return-void
.end method

.method public setPassengerSeatLegVertPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5293
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLegVertPosition(I)V

    return-void
.end method

.method public setPassengerSeatLumbControlSwitchEnable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6677
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLumbControlSwitchEnable(I)V

    return-void
.end method

.method public setPassengerSeatLumbHorzPos(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5661
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLumbHorzPos(II)V

    return-void
.end method

.method public setPassengerSeatLumbVerticalPos(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5641
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatLumbVerticalPos(II)V

    return-void
.end method

.method public setPassengerSeatMassgElem([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6344
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 6347
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatMassgElem([I)V

    return-void

    .line 6345
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setPassengerSeatMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6070
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatMassgIntensity(I)V

    return-void
.end method

.method public setPassengerSeatMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6021
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatMassgProgMode(I)V

    return-void
.end method

.method public setPassengerSeatThightLength(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5249
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatThightLength(II)V

    return-void
.end method

.method public setPassengerSeatThightLengthPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405043

    const/4 v1, 0x0

    .line 4513
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setPassengerSeatTitlLevelOff(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5380
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatTitlLevelOff(I)V

    return-void
.end method

.method public setPassengerSeatVerticalPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4406
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatVerticalPosition(I)V

    return-void
.end method

.method public setPassengerSeatZeroGravMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9549
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPsnSeatZeroGravMove(II)V

    return-void
.end method

.method public setPassengerSeatZeroGravPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4570
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerSeatZeroGravPosition(I)V

    return-void
.end method

.method public setPassengerSpecialMode(I)I
    .locals 2

    const v0, 0x21405020

    const/4 v1, 0x0

    .line 8997
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setPassengerWelcomeActive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5621
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerWelcomeActive(I)V

    return-void
.end method

.method public setPassengerWelcomeSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5566
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPassengerWelcomeSwitch(I)V

    return-void
.end method

.method public setPsnSeatBackMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4624
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPsnSeatBackMove(II)V

    return-void
.end method

.method public setPsnSeatCushTiltMove(II)I
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

    const p1, 0x21405022

    .line 4664
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/msm/CarMsmManager;->setIntVectorProperty(II[I)V

    return v1
.end method

.method public setPsnSeatHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4604
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPsnSeatHorizMove(II)V

    return-void
.end method

.method public setPsnSeatVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4644
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmPsnSeatVertiMove(II)V

    return-void
.end method

.method public setPsngrLumbRelaxIntensity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504d

    const/4 v1, 0x0

    .line 9729
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrMassgArea(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505c

    const/4 v1, 0x0

    .line 10045
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrSeatChildLock(I)I
    .locals 2

    const v0, 0x21405023

    const/4 v1, 0x0

    .line 9032
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setPsngrSeatMassgIntensityMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405049

    const/4 v1, 0x0

    .line 9643
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrSeatRelaxIntensityMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21405051

    const/4 v1, 0x0

    .line 9627
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrSeatRelaxModeMemMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140504f

    const/4 v1, 0x0

    .line 9779
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSecRowLTCushMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9408
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLTCushMassgIntensity(I)V

    return-void
.end method

.method public setSecRowLTCushMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9371
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLTCushMassgProgMode(I)V

    return-void
.end method

.method public setSecRowLTMassgArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9440
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLTMassgArea(I)V

    return-void
.end method

.method public setSecRowLeftAngleMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6936
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftAngleMove(II)V

    return-void
.end method

.method public setSecRowLeftHeadHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6996
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftHeadHorizMove(II)V

    return-void
.end method

.method public setSecRowLeftHeadVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6976
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftHeadVertiMove(II)V

    return-void
.end method

.method public setSecRowLeftHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6916
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftHorizMove(II)V

    return-void
.end method

.method public setSecRowLeftLegVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6956
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftLegVertiMove(II)V

    return-void
.end method

.method public setSecRowLeftSeatAllPos(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6465
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatAllPos(II)V

    return-void
.end method

.method public setSecRowLeftSeatCushExtPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5761
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatCushExtPosition(I)V

    return-void
.end method

.method public setSecRowLeftSeatCushExtReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5683
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatCushExtReq(II)V

    return-void
.end method

.method public setSecRowLeftSeatEasyEntryReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7331
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatEasyEntryReq(I)V

    return-void
.end method

.method public setSecRowLeftSeatLegHorzPosReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5703
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatLegHorzPosReq(II)V

    return-void
.end method

.method public setSecRowLeftSeatLegHorzPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5775
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatLegHorzPosition(I)V

    return-void
.end method

.method public setSecRowLeftSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7237
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatLumbHorzMove(II)V

    return-void
.end method

.method public setSecRowLeftSeatLumbVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7217
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatLumbVertiMove(II)V

    return-void
.end method

.method public setSecRowLeftSeatMassgElem([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6385
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 6388
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatMassgElem([I)V

    return-void

    .line 6386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSecRowLeftSeatMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6168
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatMassgIntensity(I)V

    return-void
.end method

.method public setSecRowLeftSeatMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6119
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowLeftSeatMassgProgMode(I)V

    return-void
.end method

.method public setSecRowLeftSeatPos(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 6704
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v10, 0x7f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatPos(IIIIIIIII)V

    return-void
.end method

.method public setSecRowLeftSeatPos(IIIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 6733
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatPos(IIIIIIIII)V

    return-void
.end method

.method public setSecRowLeftSeatZeroGravReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7295
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLeftSeatZeroGravReq(I)V

    return-void
.end method

.method public setSecRowLtSeatAnglePos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7582
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLtSeatAnglePos(I)V

    return-void
.end method

.method public setSecRowLtSeatChildLock(I)I
    .locals 2

    const v0, 0x21405024

    const/4 v1, 0x0

    .line 9061
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setSecRowLtSeatHeadHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7667
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLtSeatHeadHorzPos(I)V

    return-void
.end method

.method public setSecRowLtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7639
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setSecRowLtSeatHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7554
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLtSeatHorzPos(I)V

    return-void
.end method

.method public setSecRowLtSeatLegVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7610
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowLtSeatLegVerticalPos(I)V

    return-void
.end method

.method public setSecRowRTCushMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9498
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRTCushMassgIntensity(I)V

    return-void
.end method

.method public setSecRowRTCushMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9461
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRTCushMassgProgMode(I)V

    return-void
.end method

.method public setSecRowRTMassgArea(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9530
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRTMassgArea(I)V

    return-void
.end method

.method public setSecRowRightHeadHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7096
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightHeadHorizMove(II)V

    return-void
.end method

.method public setSecRowRightHeadVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7076
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightHeadVertiMove(II)V

    return-void
.end method

.method public setSecRowRightHorizMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7016
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightHorizMove(II)V

    return-void
.end method

.method public setSecRowRightLegVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7056
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightLegVertiMove(II)V

    return-void
.end method

.method public setSecRowRightSeatAllPos(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6481
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatAllPos(II)V

    return-void
.end method

.method public setSecRowRightSeatCushExtPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5821
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatCushExtPosition(I)V

    return-void
.end method

.method public setSecRowRightSeatCushExtReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5725
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatCushExtReq(II)V

    return-void
.end method

.method public setSecRowRightSeatEasyEntryReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7349
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatEasyEntryReq(I)V

    return-void
.end method

.method public setSecRowRightSeatLegHorzPosReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5745
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatLegHorzPosReq(II)V

    return-void
.end method

.method public setSecRowRightSeatLegHorzPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5835
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatLegHorzPosition(I)V

    return-void
.end method

.method public setSecRowRightSeatLumbHorzMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7277
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatLumbHorzMove(II)V

    return-void
.end method

.method public setSecRowRightSeatLumbVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7257
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatLumbVertiMove(II)V

    return-void
.end method

.method public setSecRowRightSeatMassgElem([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6427
    array-length v0, p1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 6430
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatMassgElem([I)V

    return-void

    .line 6428
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSecRowRightSeatMassgIntensity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6266
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatMassgIntensity(I)V

    return-void
.end method

.method public setSecRowRightSeatMassgProgMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6217
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecRowRightSeatMassgProgMode(I)V

    return-void
.end method

.method public setSecRowRightSeatPos(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 6782
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v10, 0x7f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatPos(IIIIIIIII)V

    return-void
.end method

.method public setSecRowRightSeatPos(IIIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 6811
    iget-object v1, v0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatPos(IIIIIIIII)V

    return-void
.end method

.method public setSecRowRightSeatZeroGravReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7313
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRightSeatZeroGravReq(I)V

    return-void
.end method

.method public setSecRowRighttAngleMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7036
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRighttAngleMove(II)V

    return-void
.end method

.method public setSecRowRtSeatAnglePos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7723
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRtSeatAnglePos(I)V

    return-void
.end method

.method public setSecRowRtSeatChildLock(I)I
    .locals 2

    const v0, 0x21405025

    const/4 v1, 0x0

    .line 9090
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setSecRowRtSeatHeadHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7807
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRtSeatHeadHorzPos(I)V

    return-void
.end method

.method public setSecRowRtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7779
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setSecRowRtSeatHorzPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7695
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRtSeatHorzPos(I)V

    return-void
.end method

.method public setSecRowRtSeatLegVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7751
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSecRowRtSeatLegVerticalPos(I)V

    return-void
.end method

.method public setSecrowLeftSeatUnlockReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5897
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowLeftSeatUnlockReq(I)V

    return-void
.end method

.method public setSecrowLfSeatUnfoldReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5447
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowLtSeatUnfoldReq(I)V

    return-void
.end method

.method public setSecrowLtSeatSTopMoveReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5465
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowLtSeatSTopMoveReq(I)V

    return-void
.end method

.method public setSecrowLtSeatTiltPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5414
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowLtSeatTiltPosition(I)V

    return-void
.end method

.method public setSecrowLtSeatTiltReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5400
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowLtSeatTiltReq(II)V

    return-void
.end method

.method public setSecrowRTSeatUnfoldReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5550
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowRTSeatUnfoldReq(I)V

    return-void
.end method

.method public setSecrowRightArmsetFoldStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140505d

    const/4 v1, 0x0

    .line 10112
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return-void
.end method

.method public setSecrowRightSeatUnlockReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5881
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowRightSeatUnlockReq(I)V

    return-void
.end method

.method public setSecrowRtSeatSTopMoveReq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5531
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowRtSeatSTopMoveReq(I)V

    return-void
.end method

.method public setSecrowRtSeatTiltPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5499
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowRtSeatTiltPosition(I)V

    return-void
.end method

.method public setSecrowRtSeatTiltReq(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5485
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMsmSecrowRtSeatTiltReq(II)V

    return-void
.end method

.method public setTrdRowLeftHeadVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7136
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowLeftHeadVertiMove(II)V

    return-void
.end method

.method public setTrdRowLeftSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7116
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowLeftSeatTiltMove(II)V

    return-void
.end method

.method public setTrdRowLtSeatChildLock(I)I
    .locals 2

    const v0, 0x21405026

    const/4 v1, 0x0

    .line 9119
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setTrdRowLtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7863
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowLtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowLtSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7835
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowLtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowMidHeadVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7981
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowMidHeadVertiMove(II)V

    return-void
.end method

.method public setTrdRowMidSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7947
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowMidSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowMiddleSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7197
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowMiddleSeatTiltMove(II)V

    return-void
.end method

.method public setTrdRowRightHeadVertiMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7176
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowRightHeadVertiMove(II)V

    return-void
.end method

.method public setTrdRowRightSeatTiltMove(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7156
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowRightSeatTiltMove(II)V

    return-void
.end method

.method public setTrdRowRtSeatChildLock(I)I
    .locals 2

    const v0, 0x21405027

    const/4 v1, 0x0

    .line 9148
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/msm/CarMsmManager;->setIntProperty(III)V

    return v1
.end method

.method public setTrdRowRtSeatHeadVerticalPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7919
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowRtSeatHeadVerticalPos(I)V

    return-void
.end method

.method public setTrdRowRtSeatTiltPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7891
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowRtSeatTiltPos(I)V

    return-void
.end method

.method public setTrdRowSeatAllPos(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    const p1, 0x21411d8d

    .line 6852
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/hardware/msm/CarMsmManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setTrdRowSeatAllPos(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6877
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTrdRowSeatAllPos(IIIII)V

    return-void
.end method

.method public stopDriverSeatMoving(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5076
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopMsmDriverSeatMoving(I)V

    return-void
.end method

.method public stopPassengerSeatMoving(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5091
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopMsmPassengerSeatMoving(I)V

    return-void
.end method

.method public stopSecRowLeftSeatMoving(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7525
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopSecRowLeftSeatMoving(I)V

    return-void
.end method

.method public stopSecRowRightSeatMoving(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7540
    iget-object v0, p0, Landroid/car/hardware/msm/CarMsmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->stopSecRowRightSeatMoving(I)V

    return-void
.end method
