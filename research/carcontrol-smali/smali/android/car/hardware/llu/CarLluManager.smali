.class public final Landroid/car/hardware/llu/CarLluManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarLluManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;,
        Landroid/car/hardware/llu/CarLluManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final FINISH_LLU_SCRIPT_UPDATED:I = 0x2

.field public static final ID_BCM_ANDROID_LL_ST:I = 0x21401cdd

.field public static final ID_CDU_LLU_CTRL:I = 0x21702e08

.field public static final ID_LLU_ACCHARGING_CFG:I = 0x21402e0d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LLU_BREATHMODESW:I = 0x21402e07
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LLU_CHARGING_SW:I = 0x21402e05

.field public static final ID_LLU_DCCHARGING_CFG:I = 0x21402e0e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LLU_FUNCTIONST:I = 0x21402e09

.field public static final ID_LLU_LIGHT_ANGEL_ADJUST:I = 0x21402e1a

.field public static final ID_LLU_LOCK_SOC_DSP_SW:I = 0x21402e11

.field public static final ID_LLU_PHOTO_CFG:I = 0x21402e0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LLU_PHOTO_SW:I = 0x21402e06

.field public static final ID_LLU_POWER_REQ:I = 0x21402e17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LLU_SCRIPT_DATA:I = 0x21412e14

.field public static final ID_LLU_SCRIPT_PARAM:I = 0x21412e13

.field public static final ID_LLU_SCRIPT_ST:I = 0x21402e15

.field public static final ID_LLU_SELF_ACTIVE:I = 0x21402e10

.field public static final ID_LLU_SHOWOFF_CFG:I = 0x21402e0b

.field public static final ID_LLU_SHOWOFF_SW:I = 0x21402e03

.field public static final ID_LLU_SLEEP_CFG:I = 0x21402e0c

.field public static final ID_LLU_SLEEP_SW:I = 0x21402e04

.field public static final ID_LLU_STEP_MOTOR_CTRL_STATUS:I = 0x21402e1b

.field public static final ID_LLU_SW:I = 0x21402e01

.field public static final ID_LLU_UNLOCK_SOC_DSP_SW:I = 0x21402e12

.field public static final ID_LLU_WAKEWAIT_CFG:I = 0x21402e0a

.field public static final ID_LLU_WAKEWAIT_SW:I = 0x21402e02

.field public static final ID_MCU_FB_LLU_ACTIVE:I = 0x2140145d

.field public static final ID_MCU_LLU_ACCHARGINGCFG:I = 0x21401444

.field public static final ID_MCU_LLU_ACTIVE:I = 0x2140145c

.field public static final ID_MCU_LLU_CHARGING_SW:I = 0x2140144f

.field public static final ID_MCU_LLU_DCCHARGINGCFG:I = 0x21401445

.field public static final ID_MCU_LLU_FINDCAR:I = 0x21401442

.field public static final ID_MCU_LLU_LOCK_SOCDSP:I = 0x21401443

.field public static final ID_MCU_LLU_LOCK_UNLOCK_MODE:I = 0x21401490

.field public static final ID_MCU_LLU_MODECTRL:I = 0x21411465

.field public static final ID_MCU_LLU_PERSONANGLE:I = 0x21401447

.field public static final ID_MCU_LLU_PERSONWALK_DIRECTION:I = 0x21401448

.field public static final ID_MCU_LLU_PHOTO_SW:I = 0x21401450

.field public static final ID_MCU_LLU_SHOWOFF_SW:I = 0x2140144b

.field public static final ID_MCU_LLU_SLEEP_SW:I = 0x2140144e

.field public static final ID_MCU_LLU_SPEEDLIMIT_CFG:I = 0x21401446

.field public static final ID_MCU_LLU_SW:I = 0x21401449

.field public static final ID_MCU_LLU_WAKEWAIT_SW:I = 0x2140144a

.field public static final ID_MCU_SELF_CONTROL_DATA:I = 0x21701466

.field public static final INVALID_PERSON_ANGLE:I = 0xff

.field public static final LLU_ACCHARGING_MODE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_ACTIVE_MODE_GENERAL:I = 0x1

.field public static final LLU_ACTIVE_MODE_INACTIVE:I = 0x0

.field public static final LLU_ACTIVE_MODE_SPECIAL_1:I = 0x2

.field public static final LLU_ACTIVE_MODE_SPECIAL_2:I = 0x3

.field public static final LLU_AC_CHARGING_MODE:I = 0x6

.field public static final LLU_AWAKEN_AI_MODE:I = 0x3

.field public static final LLU_AWAKEN_FIXED_LOADING_MODE:I = 0xc

.field public static final LLU_AWAKEN_FIXED_MODE:I = 0x2

.field public static final LLU_CDU_SELF_CTRL_MODE:I = 0xd

.field public static final LLU_DCCHARGING_MODE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_DC_CHARGING_MODE:I = 0x7

.field public static final LLU_FIND_CAR_MODE:I = 0x1

.field public static final LLU_FRONT:I = 0x0

.field public static final LLU_FULL_CHARGED_AWAKEN_MODE:I = 0x4

.field public static final LLU_GESTURE_PHOTO_MODE:I = 0x9

.field public static final LLU_LOCKED_LEAVING_CAR_MODE:I = 0x5

.field public static final LLU_MODE1:I = 0x1

.field public static final LLU_MODE10:I = 0xa

.field public static final LLU_MODE11:I = 0xb

.field public static final LLU_MODE12:I = 0xc

.field public static final LLU_MODE13:I = 0xd

.field public static final LLU_MODE14:I = 0xe

.field public static final LLU_MODE15:I = 0xf

.field public static final LLU_MODE16:I = 0x10

.field public static final LLU_MODE17:I = 0x11

.field public static final LLU_MODE18:I = 0x12

.field public static final LLU_MODE19:I = 0x13

.field public static final LLU_MODE2:I = 0x2

.field public static final LLU_MODE20:I = 0x14

.field public static final LLU_MODE21:I = 0x15

.field public static final LLU_MODE22:I = 0x16

.field public static final LLU_MODE23:I = 0x17

.field public static final LLU_MODE24:I = 0x18

.field public static final LLU_MODE25:I = 0x19

.field public static final LLU_MODE26:I = 0x1a

.field public static final LLU_MODE27:I = 0x1b

.field public static final LLU_MODE28:I = 0x1c

.field public static final LLU_MODE29:I = 0x1d

.field public static final LLU_MODE3:I = 0x3

.field public static final LLU_MODE30:I = 0x1e

.field public static final LLU_MODE4:I = 0x4

.field public static final LLU_MODE5:I = 0x5

.field public static final LLU_MODE6:I = 0x6

.field public static final LLU_MODE7:I = 0x7

.field public static final LLU_MODE8:I = 0x8

.field public static final LLU_MODE9:I = 0x9

.field public static final LLU_NO_OPERATION:I = 0x0

.field public static final LLU_PHOTO_MODE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_POWER_REQ_NO_REQUEST:I = 0x0

.field public static final LLU_POWER_REQ_POWERON:I = 0x1

.field public static final LLU_REAR:I = 0x1

.field public static final LLU_SCRIPT_DATA_FRONT_FINISH:I = 0x6

.field public static final LLU_SCRIPT_DATA_NOT_OK:I = 0x15

.field public static final LLU_SCRIPT_DATA_OK:I = 0x5

.field public static final LLU_SCRIPT_DATA_REAR_FINISH:I = 0x7

.field public static final LLU_SCRIPT_DATA_RECEIVE_TIMEOUT:I = 0x21

.field public static final LLU_SCRIPT_PARAMETER_NOT_OK:I = 0x14

.field public static final LLU_SCRIPT_PARAMETER_OK:I = 0x4

.field public static final LLU_SCRIPT_UPDATED_FINISH_NOT_OK:I = 0x12

.field public static final LLU_SCRIPT_UPDATED_FINISH_OK:I = 0x2

.field public static final LLU_SCRIPT_UPDATED_RESET_NOT_OK:I = 0x13

.field public static final LLU_SCRIPT_UPDATED_RESET_OK:I = 0x3

.field public static final LLU_SCRIPT_UPDATED_START_NOT_OK:I = 0x11

.field public static final LLU_SCRIPT_UPDATED_START_OK:I = 0x1

.field public static final LLU_SEARCH_VEHICLE_MODE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_SHOWOFF_MODE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_SHOWOFF_ON_ROAD_AI_MODE:I = 0xb

.field public static final LLU_SHOWOFF_ON_ROAD_MODE:I = 0xa

.field public static final LLU_SLEEP_MODE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_SOC_PERCENTAGE_MODE:I = 0x8

.field public static final LLU_STEPMOTOR_MOVING:I = 0x1

.field public static final LLU_STEPMOTOR_RESET:I = 0x0

.field public static final LLU_SWITCH_ACTIVE:I = 0x1

.field public static final LLU_SWITCH_AC_RESET_TO_DEFAULT:I = 0x2

.field public static final LLU_SWITCH_DC_RESET_TO_DEFAULT:I = 0x3

.field public static final LLU_SWITCH_INACTIVE:I = 0x0

.field public static final LLU_SWITCH_RESET_TO_DEFAULT:I = 0x2

.field public static final LLU_USER_DEFINED_MODE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LLU_WAKEUP_WAITING_MODE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LL_STATUS_APP_SELF_CTRL:I = 0x3

.field public static final LL_STATUS_LIGHT_SABER:I = 0x4

.field public static final LL_STATUS_NONE:I = 0x0

.field public static final LL_STATUS_PREVIEW_AND_COLOR_EGG:I = 0x2

.field public static final LL_STATUS_SAY_HI:I = 0x1

.field public static final MCU_LLU_ACTIVE:I = 0x1

.field public static final MCU_LLU_COMPLETED:I = 0x2

.field public static final PERSON_WALK_DIRECTION_LEFT_TO_RIGHT:I = 0x1

.field public static final PERSON_WALK_DIRECTION_NOT_MOVE:I = 0x0

.field public static final PERSON_WALK_DIRECTION_RIGHT_TO_LEFT:I = 0x2

.field public static final RESET_LLU_SCRIPT_UPDATED:I = 0x3

.field public static final START_LLU_SCRIPT_UPDATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarLluManager"


# instance fields
.field private final mLluPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarLluManager"

    .line 996
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 944
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x23

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21402e01

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21402e02

    .line 945
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21402e03

    .line 946
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21402e04

    .line 947
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402e05

    .line 948
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21402e06

    .line 949
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21702e08

    .line 950
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21402e09

    .line 951
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21402e0a

    .line 952
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21402e0b

    .line 953
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21402e0c

    .line 954
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21402e10

    .line 955
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21402e11

    .line 956
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21402e12

    .line 957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402e15

    .line 958
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21401442

    .line 959
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21401443

    .line 960
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21401444

    .line 961
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21401445

    .line 962
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21401446

    .line 963
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21401449

    .line 964
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x2140144a

    .line 965
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x2140144b

    .line 966
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x2140144e

    .line 967
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x2140144f

    .line 968
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21401450

    .line 969
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x2140145c

    .line 970
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x2140145d

    .line 971
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21411465

    .line 972
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21701466

    .line 973
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x21401cdd

    .line 974
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x21402e17

    .line 975
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x21401490

    .line 976
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x21402e1b

    .line 977
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x21402e1a

    .line 978
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    .line 944
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/llu/CarLluManager;->mLluPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_llu"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public activateAndroidLluControl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->activateAndroidLluControl()V

    return-void
.end method

.method public deactivateAndroidLluControl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2179
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->deactivateAndroidLluControl()V

    return-void
.end method

.method public getLluAcChargeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1557
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluAcChargeMode()I

    move-result v0

    return v0
.end method

.method public getLluAcChargingCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluAcChargingCfg()I

    move-result v0

    return v0
.end method

.method public getLluBreathMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1292
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluBreathMode()I

    move-result v0

    return v0
.end method

.method public getLluChargingSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluChargingSwitch()I

    move-result v0

    return v0
.end method

.method public getLluCurrentFunction()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluCurrentFunction()I

    move-result v0

    return v0
.end method

.method public getLluDcChargeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1588
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluDcChargeMode()I

    move-result v0

    return v0
.end method

.method public getLluDcChargingCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1864
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluDcChargingCfg()I

    move-result v0

    return v0
.end method

.method public getLluEnableStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluEnableStatus()I

    move-result v0

    return v0
.end method

.method public getLluFindCarSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluFindCarSwitchState()I

    move-result v0

    return v0
.end method

.method public getLluLockSocDspSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1671
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluLockSocDspSwitch()I

    move-result v0

    return v0
.end method

.method public getLluLockUnlockSocDspSwitchState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluLockUnlockSocDspSwitchState()I

    move-result v0

    return v0
.end method

.method public getLluPhotoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluPhotoMode()I

    move-result v0

    return v0
.end method

.method public getLluPhotoSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluPhotoSwitch()I

    move-result v0

    return v0
.end method

.method public getLluScriptStResponse()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluScriptStResponse()I

    move-result v0

    return v0
.end method

.method public getLluShowOffMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluShowOffMode()I

    move-result v0

    return v0
.end method

.method public getLluShowOffSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluShowOffSwitch()I

    move-result v0

    return v0
.end method

.method public getLluSleepMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluSleepMode()I

    move-result v0

    return v0
.end method

.method public getLluSleepSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluSleepSwitch()I

    move-result v0

    return v0
.end method

.method public getLluSpeedLimitCfg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluSpeedLimitCfg()I

    move-result v0

    return v0
.end method

.method public getLluUnLockSocDspSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluUnLockSocDspSwitch()I

    move-result v0

    return v0
.end method

.method public getLluWakeWaitMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluWakeWaitMode()I

    move-result v0

    return v0
.end method

.method public getLluWakeWaitSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getLluWakeWaitSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuActivatedLluSignal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2195
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluWorkStatus()I

    move-result v0

    return v0
.end method

.method public getMcuLLuLockUnlockMode()I
    .locals 3

    .line 2340
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLLuLockUnlockMode()I

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

    .line 2342
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMcuLLuLockUnlockMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLluManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getMcuLluChargingSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2121
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluChargingSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuLluEnableStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1974
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluEnableStatus()I

    move-result v0

    return v0
.end method

.method public getMcuLluPhotoSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2155
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluPhotoSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuLluPowerRequestSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluPowerRequestSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getMcuLluShowOffSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2048
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluShowOffSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuLluSleepSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluSleepSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuLluWakeWaitSwitch()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2011
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluWakeWaitSwitch()I

    move-result v0

    return v0
.end method

.method public getMcuLluWorkStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2211
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getMcuLluWorkStatus()I

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

    .line 1011
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mLluPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public sendLluScriptData(III[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1779
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluScriptData(III[I)V

    return-void
.end method

.method public setAndroidLlSt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2269
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluAndroidLlSt(I)V

    return-void
.end method

.method public setFrontLightLluAngel(I)I
    .locals 3

    const v0, 0x21402e1a

    const/4 v1, 0x0

    .line 2358
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/llu/CarLluManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFrontLightLluAngel throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLluManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setFrontLightStepMotorMovingStatus(I)I
    .locals 3

    const v0, 0x21402e1b

    const/4 v1, 0x0

    .line 2378
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/llu/CarLluManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFrontLightStepMotorMovingStatus Exception e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLluManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setLluAcChargeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1545
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluAcChargeMode(I)V

    return-void
.end method

.method public setLluBreathMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1280
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluBreathMode(I)V

    return-void
.end method

.method public setLluChargingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluChargingSwitch(I)V

    return-void
.end method

.method public setLluCurrentFunction(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1350
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluCurrentFunction(I)V

    return-void
.end method

.method public setLluDcChargeMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1576
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluDcChargeMode(I)V

    return-void
.end method

.method public setLluEnableStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluEnableStatus(I)V

    return-void
.end method

.method public setLluFindCarSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluFindCarSwitch(I)V

    return-void
.end method

.method public setLluLockSocDspSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluLockSocDspSwitch(I)V

    return-void
.end method

.method public setLluLockUnlockSocDspSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1831
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluLockUnlockSocDspSwitch(I)V

    return-void
.end method

.method public setLluPhotoMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1607
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPhotoMode(I)V

    return-void
.end method

.method public setLluPhotoSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPhotoSwitch(I)V

    return-void
.end method

.method public setLluPrivateCtrl(ZIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1241
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    const/16 v6, 0xff

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPrivateCtrl(ZIIIIII)V

    return-void
.end method

.method public setLluPrivateCtrl(ZIIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPrivateCtrl(ZIIIIII)V

    return-void
.end method

.method public setLluScriptParameter(Landroid/car/hardware/llu/LluScriptParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1761
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-virtual {p1}, Landroid/car/hardware/llu/LluScriptParameter;->getData()[I

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluScriptParameter([I)V

    return-void
.end method

.method public setLluScriptStRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1722
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluScriptStRequest(I)V

    return-void
.end method

.method public setLluSelfActive(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluSelfActive(I)V

    return-void
.end method

.method public setLluShowOffMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluShowOffMode(I)V

    return-void
.end method

.method public setLluShowOffSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluShowOffSwitch(I)V

    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1483
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluSleepMode(I)V

    return-void
.end method

.method public setLluSleepSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluSleepSwitch(I)V

    return-void
.end method

.method public setLluSpeedLimitCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluSpeedLimitCfg(I)V

    return-void
.end method

.method public setLluUnLockSocDspSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluUnLockSocDspSwitch(I)V

    return-void
.end method

.method public setLluWakeWaitMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluWakeWaitMode(I)V

    return-void
.end method

.method public setLluWakeWaitSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluWakeWaitSwitch(I)V

    return-void
.end method

.method public setMcuLLuLockUnlockMode(I)V
    .locals 2

    .line 2320
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLLuLockUnlockMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2322
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMcuLLuLockUnlockMode throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarLluManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setMcuLLuSelfControlData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2250
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLLuSelfControlData([B)V

    return-void
.end method

.method public setMcuLluChargingSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2104
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluChargingSwitch(I)V

    return-void
.end method

.method public setMcuLluEnableStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1957
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluEnableStatus(I)V

    return-void
.end method

.method public setMcuLluModeCtrl(IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2232
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluModeCtrl(IIIIII)V

    return-void
.end method

.method public setMcuLluPhotoSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluPhotoSwitch(I)V

    return-void
.end method

.method public setMcuLluPowerRequestSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2287
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPowerRequestSwitchStatus(I)V

    return-void
.end method

.method public setMcuLluShowOffSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2029
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluShowOffSwitch(I)V

    return-void
.end method

.method public setMcuLluSleepSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2066
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluSleepSwitch(I)V

    return-void
.end method

.method public setMcuLluWakeWaitSwitch(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setMcuLluWakeWaitSwitch(I)V

    return-void
.end method

.method public setPersonAngle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1923
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPersonAngle(I)V

    return-void
.end method

.method public setPersonWalkDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Landroid/car/hardware/llu/CarLluManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setLluPersonWalkDirection(I)V

    return-void
.end method
