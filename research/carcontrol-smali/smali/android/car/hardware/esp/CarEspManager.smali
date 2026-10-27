.class public final Landroid/car/hardware/esp/CarEspManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarEspManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;,
        Landroid/car/hardware/esp/CarEspManager$PropertyId;
    }
.end annotation


# static fields
.field public static final APB_SYSTEM_DISPLAY_MESSAGE_INSUFFICIENT_PARK_REPLACE_PARK:I = 0x2

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_NO_RELEASE_TIP_FOR_P_FILE:I = 0x3

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_NO_RELEASE_TIP_FOR_SHIFT:I = 0x1

.field public static final APB_SYSTEM_DISPLAY_MESSAGE_OFF:I = 0x0

.field public static final APB_SYSTEM_STATUS_CLOSED:I = 0x2

.field public static final APB_SYSTEM_STATUS_DISENGAGED:I = 0x5

.field public static final APB_SYSTEM_STATUS_LOCKING:I = 0x4

.field public static final APB_SYSTEM_STATUS_RELEASED:I = 0x1

.field public static final APB_SYSTEM_STATUS_RELEASING:I = 0x3

.field public static final APB_SYSTEM_STATUS_UNDEFINED:I = 0x0

.field public static final AVH_AUTO_MODE:I = 0x3

.field public static final AVH_BUTTON_NOT_TOUCH:I = 0x0

.field public static final AVH_BUTTON_TOUCH:I = 0x1

.field public static final AVH_DEEP_MODE:I = 0x1

.field public static final AVH_FAULT:I = 0x1

.field public static final AVH_NOT_FAULT:I = 0x0

.field public static final AVH_STATUS_ACTIVE:I = 0x1

.field public static final AVH_STATUS_INACTIVE:I = 0x0

.field public static final AVH_STATUS_STANDBY:I = 0x2

.field public static final CST_AVAILABLE_AVAILABLE:I = 0x1

.field public static final CST_AVAILABLE_NOT_AVAILABLE:I = 0x0

.field public static final CST_MODE_BABY_CAR:I = 0x3

.field public static final CST_MODE_CUSTOM:I = 0x5

.field public static final CST_MODE_NORMAL:I = 0x1

.field public static final CST_MODE_NO_COMAND:I = 0x0

.field public static final CST_MODE_OFF:I = 0x4

.field public static final CST_MODE_SPORT:I = 0x2

.field public static final CST_STATUS_ACTIVE:I = 0x2

.field public static final CST_STATUS_IS_DISABLE_INIT_DEFAULT:I = 0x0

.field public static final CST_STATUS_IS_FAILURE:I = 0x3

.field public static final CST_STATUS_STANDBY:I = 0x1

.field private static final DBG:Z = false

.field public static final ENERGY_REGEN_ENHANCE_OFF:I = 0x0

.field public static final ENERGY_REGEN_ENHANCE_ON:I = 0x1

.field public static final EPB_DRIVER_OFF_WARNING_OFF:I = 0x0

.field public static final EPB_DRIVER_OFF_WARNING_RELEASE_PARKING_BRAKE_BY_EPB_BUTTON:I = 0x1

.field public static final EPB_SYSTEM_REQ_APPLY:I = 0x2

.field public static final EPB_SYSTEM_REQ_RELEASED:I = 0x1

.field public static final EPB_WARNING_LAMP_OFF:I = 0x0

.field public static final EPB_WARNING_LAMP_ON:I = 0x1

.field public static final EPS_WARNING_LAMP_OFF:I = 0x0

.field public static final EPS_WARNING_LAMP_ON:I = 0x1

.field public static final ESC_ESP_NORMAL:I = 0x1

.field public static final ESC_ESP_OFF:I = 0x3

.field public static final ESC_ESP_OFFROAD:I = 0x7

.field public static final ESC_ESP_ON:I = 0x4

.field public static final ESC_ESP_RACING:I = 0x5

.field public static final ESC_ESP_RACING_OFF:I = 0x6

.field public static final ESC_ESP_SPORT:I = 0x2

.field public static final ESC_IBS_BRAKEMODE_NORMAL:I = 0x1

.field public static final ESC_IBS_BRAKEMODE_SPORT:I = 0x2

.field public static final ESP_BPF_AUTO:I = 0x4

.field public static final ESP_BPF_ECONOMIC:I = 0x2

.field public static final ESP_BPF_NONE:I = 0x0

.field public static final ESP_BPF_NORMAL:I = 0x1

.field public static final ESP_BPF_SPORT:I = 0x3

.field public static final ESP_FAULT:I = 0x1

.field public static final ESP_NOT_FAULT:I = 0x0

.field public static final ESP_SPEED_INVALID:I = 0x2

.field public static final ESP_SPEED_VALID:I = 0x1

.field public static final ESP_STATUS_ACTIVE:I = 0x1

.field public static final ESP_STATUS_INACTIVE:I = 0x0

.field public static final ESP_STATUS_OFF:I = 0x0

.field public static final ESP_STATUS_ON:I = 0x1

.field public static final ESP_STATUS_STANDBY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESP_TSM_SWITCH_1:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESP_TSM_SWITCH_2:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESP_TSM_SWITCH_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESP_WARNING_REQUEST_NO_WARNING:I = 0x0

.field public static final ESP_WARNING_REQUEST_WARNING:I = 0x1

.field public static final HAS_HBC_REQUEST:I = 0x1

.field public static final HDC_FAULT:I = 0x1

.field public static final HDC_NOT_FAULT:I = 0x0

.field public static final HDC_STATUS_ACTIVE:I = 0x1

.field public static final HDC_STATUS_INACTIVE:I = 0x0

.field public static final HDC_STATUS_STANDBY:I = 0x2

.field public static final ID_AS_ABSOLUTE_HEIGHT:I = 0x2160401d

.field public static final ID_AS_RELATIVE_HEIGHT:I = 0x2160401e

.field public static final ID_ESC_IBS_BRAKE_MODE:I = 0x21402404

.field public static final ID_ESP_ABS_ACT_ST:I = 0x2140241f

.field public static final ID_ESP_ABS_FAULT:I = 0x2140240f

.field public static final ID_ESP_APBSYS_ST:I = 0x21402413

.field public static final ID_ESP_APB_SYSDISP_MSGREQ:I = 0x21402412

.field public static final ID_ESP_AVH:I = 0x21402403

.field public static final ID_ESP_AVH_FAULT:I = 0x2140240b

.field public static final ID_ESP_BODY_PITCH_ADJ:I = 0x2140244b

.field public static final ID_ESP_BPF:I = 0x2140242b

.field public static final ID_ESP_BRK_LINEAR_ADJ:I = 0x2140244a

.field public static final ID_ESP_CDP_INTERVENTION:I = 0x21402417

.field public static final ID_ESP_CST:I = 0x2140242a

.field public static final ID_ESP_CST_AVAILABLE:I = 0x21402449

.field public static final ID_ESP_CST_FORBIDDEN:I = 0x2140243e

.field public static final ID_ESP_CST_MODE:I = 0x21402447

.field public static final ID_ESP_CST_STATUS:I = 0x21402448

.field public static final ID_ESP_DTC_FAULT:I = 0x21402419

.field public static final ID_ESP_EBD_FAULT:I = 0x21402430

.field public static final ID_ESP_EPB_DRIVER_OFF_WARNING:I = 0x2140242c

.field public static final ID_ESP_ESC_MODE:I = 0x2140242f

.field public static final ID_ESP_ESP:I = 0x21402402

.field public static final ID_ESP_ESP_2:I = 0x2140243a

.field public static final ID_ESP_ESP_FAULT:I = 0x21402409

.field public static final ID_ESP_HDC:I = 0x21402408

.field public static final ID_ESP_HDC_FAULT:I = 0x2140240a

.field public static final ID_ESP_IPUF_ACT_ROT_SPD:I = 0x21402420

.field public static final ID_ESP_IPUF_ACT_TORQ:I = 0x21602424

.field public static final ID_ESP_IPUF_MOTOR_ACT_TEMP:I = 0x21402426

.field public static final ID_ESP_IPUF_MOTOR_INVERTER_TEMP:I = 0x21402433

.field public static final ID_ESP_IPUF_MOTOR_TEMP_LL:I = 0x21402432

.field public static final ID_ESP_IPUR_ACT_ROT_SPD:I = 0x21402421

.field public static final ID_ESP_IPUR_ACT_TORQ:I = 0x21602425

.field public static final ID_ESP_IPUR_MOTOR_ACT_TEMP:I = 0x21402427

.field public static final ID_ESP_IPUR_MOTOR_INVERTER_TEMP:I = 0x21402435

.field public static final ID_ESP_IPUR_MOTOR_TEMP_LL:I = 0x21402434

.field public static final ID_ESP_MASTER_CYLINDER_PRESS:I = 0x21602429

.field public static final ID_ESP_OFFROAD:I = 0x21402416

.field public static final ID_ESP_SYS_WARNIND_REQ:I = 0x2140240c

.field public static final ID_ESP_TCS_ACT_ST:I = 0x21402422

.field public static final ID_ESP_TSM_FAULT_ST:I = 0x2140241a

.field public static final ID_ESP_TSM_SW:I = 0x21402418

.field public static final ID_ESP_VDC_ACT_ST:I = 0x21402423

.field public static final ID_ESP_VEHSPD:I = 0x21602401

.field public static final ID_ESP_WARN_LAMP:I = 0x2140240d

.field public static final ID_ESP_WHEEL_SPD_ALL:I = 0x2161241e

.field public static final ID_IBT_BRAKE_TRAVEL:I = 0x21602428

.field public static final ID_IBT_FAILURE_LAMP:I = 0x21402411

.field public static final ID_IBT_HBC_REQ:I = 0x21402414

.field public static final ID_IPB_ENERGY_REGEN_ENHANCE:I = 0x21402437

.field public static final ID_IPB_FWA_WARNING:I = 0x21402431

.field public static final ID_IPB_F_WHEEL_REGEN_ST:I = 0x21402438

.field public static final ID_IPB_R_WHEEL_REGEN_ST:I = 0x21402439

.field public static final INTERVENTION_STATUS:I = 0x1

.field public static final IPB_FWA_NO_FAILURE:I = 0x0

.field public static final IPB_FWA_WARNING_LEVEL_1:I = 0x1

.field public static final IPB_FWA_WARNING_LEVEL_2:I = 0x2

.field public static final NO_HBC_REQUEST:I = 0x0

.field public static final NO_INTERVENTION_STATUS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarEspManager"

.field public static final WHEEL_ENERGY_REGEN_STATUS_FAULTY:I = 0x2

.field public static final WHEEL_ENERGY_REGEN_STATUS_NORMAL_ACTIVE:I = 0x1

.field public static final WHEEL_ENERGY_REGEN_STATUS_NORMAL_PASSIVE:I = 0x3

.field public static final WHEEL_ENERGY_REGEN_STATUS_NOT_INIT:I


# instance fields
.field private final mEspPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarEspManager"

    .line 1083
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 1014
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x36

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402408

    .line 1015
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21402402

    .line 1016
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21402403

    .line 1017
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402404

    .line 1018
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21602401

    .line 1019
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21402409

    .line 1020
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x2140240a

    .line 1021
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x2140240b

    .line 1022
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x2140240c

    .line 1023
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140240d

    .line 1024
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21402412

    .line 1025
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21402413

    .line 1026
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21402414

    .line 1027
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402416

    .line 1028
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402417

    .line 1029
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402418    # 6.50999E-19f

    .line 1030
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x2140241a    # 6.509991E-19f

    .line 1031
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21402419    # 6.5099905E-19f

    .line 1032
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21402411

    .line 1033
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2161241e

    .line 1034
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x2140241f    # 6.5099936E-19f

    .line 1035
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21402420    # 6.509994E-19f

    .line 1036
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21402421    # 6.5099947E-19f

    .line 1037
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21402422    # 6.509995E-19f

    .line 1038
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21402423    # 6.5099957E-19f

    .line 1039
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21602424

    .line 1040
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21402426    # 6.509997E-19f

    .line 1041
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21602425

    .line 1042
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21402427    # 6.509998E-19f

    .line 1043
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21602428

    .line 1044
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21602429

    .line 1045
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x2140242a    # 6.5099993E-19f

    .line 1046
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x2140242b    # 6.51E-19f

    .line 1047
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x2140242c    # 6.5100003E-19f

    .line 1048
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x2160401d

    .line 1049
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x2160401e

    .line 1050
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x2140242f    # 6.510002E-19f

    .line 1051
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x2140240f

    .line 1052
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x21402430    # 6.5100024E-19f

    .line 1053
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x21402432    # 6.5100034E-19f

    .line 1054
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x21402433    # 6.510004E-19f

    .line 1055
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x21402434    # 6.5100045E-19f

    .line 1056
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x21402435    # 6.510005E-19f

    .line 1057
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x21402431    # 6.510003E-19f

    .line 1058
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x21402439    # 6.510007E-19f

    .line 1059
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x21402438    # 6.5100065E-19f

    .line 1060
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x21402437    # 6.510006E-19f

    .line 1061
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x2140243a    # 6.5100076E-19f

    .line 1062
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x2140243e    # 6.5100096E-19f

    .line 1063
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x21402447

    .line 1064
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21402448

    .line 1065
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x21402449

    .line 1066
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x2140244a

    .line 1067
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x2140244b

    .line 1068
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    .line 1014
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/esp/CarEspManager;->mEspPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_esp"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAbsFaultSt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140240f

    const/4 v1, 0x0

    .line 1646
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1648
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getAbsWorkStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1631
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspAbsWorkStatus()I

    move-result v0

    return v0
.end method

.method public getAbsoluteAsHeight()F
    .locals 3

    const v0, 0x2160401d

    const/4 v1, 0x0

    .line 1920
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getFloatProperty(II)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1922
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

    const-string v1, "CarEspManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getAllWheelSpeed()[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspAllWheelSpeed()[F

    move-result-object v0

    return-object v0
.end method

.method public getApbSystemDisplayMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspApbSystemDisplayMessage()I

    move-result v0

    return v0
.end method

.method public getApbSystemStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspApbSystemStatus()I

    move-result v0

    return v0
.end method

.method public getAvh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isEspAvhEnabled()I

    move-result v0

    return v0
.end method

.method public getAvhFault()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->hasEspAvhFault()I

    move-result v0

    return v0
.end method

.method public getBpfStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140242b    # 6.51E-19f

    const/4 v1, 0x0

    .line 1883
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1885
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCSTAvailable()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402449

    const/4 v1, 0x0

    .line 2198
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2200
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCSTBodyPitch()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140244b

    const/4 v1, 0x0

    .line 2260
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2262
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCSTBrakelinearity()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140244a

    const/4 v1, 0x0

    .line 2229
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2231
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCSTMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402447

    const/4 v1, 0x0

    .line 2156
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2158
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCSTStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402448

    const/4 v1, 0x0

    .line 2178
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2180
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCarSpeed()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspCarSpeed()F

    move-result v0

    return v0
.end method

.method public getCstForbiddenSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140243e    # 6.5100096E-19f

    const/4 v1, 0x0

    .line 1848
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCstStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140242a    # 6.5099993E-19f

    const/4 v1, 0x0

    .line 1830
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDtcFaultStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1580
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspDtcFaultStatus()I

    move-result v0

    return v0
.end method

.method public getEbdFaultSt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402430    # 6.5100024E-19f

    const/4 v1, 0x0

    .line 1958
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1960
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getEnergyRegenEnhanceMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402437    # 6.510006E-19f

    const/4 v1, 0x0

    .line 2080
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEpbDriverOffWarningMsg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspEpbDriverOffWarningMsg()I

    move-result v0

    return v0
.end method

.method public getEpbWarningLampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspEpbWarningLampStatus()I

    move-result v0

    return v0
.end method

.method public getEpsWarninglampStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspEpsWarninglampStatus()I

    move-result v0

    return v0
.end method

.method public getEsp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspWorkMode()I

    move-result v0

    return v0
.end method

.method public getEspFault()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->hasEspFault()I

    move-result v0

    return v0
.end method

.method public getEspInterventionStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1511
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspInterventionStatus()I

    move-result v0

    return v0
.end method

.method public getEspMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140242f    # 6.510002E-19f

    const/4 v1, 0x0

    .line 1201
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1203
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

    const-string v1, "CarEspManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getFrontWheelEnergyRegenStatuse()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402438    # 6.5100065E-19f

    const/4 v1, 0x0

    .line 2096
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHbcRequestStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspHbcRequestStatus()I

    move-result v0

    return v0
.end method

.method public getHdc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->isEspHdcEnabled()I

    move-result v0

    return v0
.end method

.method public getHdcFault()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->hasEspHdcFault()I

    move-result v0

    return v0
.end method

.method public getIbsBrakeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIbsBrakeMode()I

    move-result v0

    return v0
.end method

.method public getIbtBrakeTravelDistance()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1784
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIbtBrakeTravelDistance()F

    move-result v0

    return v0
.end method

.method public getIbtFailureLampRequest()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIbtFailureLampRequest()I

    move-result v0

    return v0
.end method

.method public getIbtFwaWarning()I
    .locals 4

    const v0, 0x21402431    # 6.510003E-19f

    const/4 v1, 0x0

    .line 2046
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2048
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIpuFrontActualRotateSpeed()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1700
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuFrontActualRotateSpeed()I

    move-result v0

    return v0
.end method

.method public getIpuFrontActualTorque()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuFrontActualTorque()F

    move-result v0

    return v0
.end method

.method public getIpuFrontMotorActualTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1742
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuFrontMotorActualTemperature()I

    move-result v0

    return v0
.end method

.method public getIpuFrontMotorActualTemperatureLowLatency()I
    .locals 4

    const v0, 0x21402432    # 6.5100034E-19f

    const/4 v1, 0x0

    .line 1975
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1977
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIpuFrontMotorInverterTemperature()I
    .locals 4

    const v0, 0x21402433    # 6.510004E-19f

    const/4 v1, 0x0

    .line 1992
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1994
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIpuRearActualRotateSpeed()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuRearActualRotateSpeed()I

    move-result v0

    return v0
.end method

.method public getIpuRearActualTorque()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuRearActualTorque()F

    move-result v0

    return v0
.end method

.method public getIpuRearMotorActualTemperature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspIpuRearMotorActualTemperature()I

    move-result v0

    return v0
.end method

.method public getIpuRearMotorActualTemperatureLowLatencyLowLatency()I
    .locals 4

    const v0, 0x21402434    # 6.5100045E-19f

    const/4 v1, 0x0

    .line 2009
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2011
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIpuRearMotorInverterTemperature()I
    .locals 4

    const v0, 0x21402435    # 6.510005E-19f

    const/4 v1, 0x0

    .line 2026
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2028
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

    const-string v2, "CarEspManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getMasterCylinderPressure()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1798
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspMasterCylinderPressure()F

    move-result v0

    return v0
.end method

.method public getOffRoadSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspOffRoadSwitchStatus()I

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

    .line 1106
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mEspPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRearWheelEnergyRegenStatuse()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402439    # 6.510007E-19f

    const/4 v1, 0x0

    .line 2112
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRelativeAsHeight()F
    .locals 3

    const v0, 0x2160401e

    const/4 v1, 0x0

    .line 1939
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/esp/CarEspManager;->getFloatProperty(II)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1941
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

    const-string v1, "CarEspManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTcsWorkStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1668
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspTcsWorkStatus()I

    move-result v0

    return v0
.end method

.method public getTsmFaultStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspTsmFaultStatus()I

    move-result v0

    return v0
.end method

.method public getTsmSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspTsmSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getVdcWorkStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getEspVdcWorkStatus()I

    move-result v0

    return v0
.end method

.method public setAvh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspAvhEnabled(I)V

    return-void
.end method

.method public setBpfStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1866
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspBpfStatus(I)V

    return-void
.end method

.method public setCSTBodyPitchAdjustment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140244b

    const/4 v1, 0x0

    .line 2246
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setIntProperty(III)V

    return-void
.end method

.method public setCSTBrakeLinearityAdjustment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140244a

    const/4 v1, 0x0

    .line 2215
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setIntProperty(III)V

    return-void
.end method

.method public setCSTModeCmd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402447

    const/4 v1, 0x0

    .line 2135
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setIntProperty(III)V

    return-void
.end method

.method public setCstStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspCstStatus(I)V

    return-void
.end method

.method public setEnergyRegenEnhanceMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402437    # 6.510006E-19f

    const/4 v1, 0x0

    .line 2066
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setIntProperty(III)V

    return-void
.end method

.method public setEpbSystemSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1427
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspEpbSystemSwitch(I)V

    return-void
.end method

.method public setEsp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspWorkMode(I)V

    return-void
.end method

.method public setEspMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140242f    # 6.510002E-19f

    const/4 v1, 0x0

    .line 1225
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1227
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

    const-string v0, "CarEspManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setHdc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1139
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspHdcEnabled(I)V

    return-void
.end method

.method public setIbsBrakeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspIbsBrakeMode(I)V

    return-void
.end method

.method public setOffRoadSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspOffRoadSwitch(I)V

    return-void
.end method

.method public setTsmSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1528
    iget-object v0, p0, Landroid/car/hardware/esp/CarEspManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setEspTsmSwitchStatus(I)V

    return-void
.end method
