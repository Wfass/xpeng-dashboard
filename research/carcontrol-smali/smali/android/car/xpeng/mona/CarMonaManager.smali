.class public final Landroid/car/xpeng/mona/CarMonaManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarMonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mona/CarMonaManager$CarMonaEventCallback;,
        Landroid/car/xpeng/mona/CarMonaManager$PropertyId;
    }
.end annotation


# static fields
.field public static final AVH_AVAILABLE:I = 0x0

.field public static final AVH_NOT_AVAILABLE:I = 0x1

.field public static final AVH_NOT_STANDBY:I = 0x0

.field public static final AVH_STANDBY:I = 0x1

.field public static BCM_REAR_TAIL_GATE_ANTIPINCH:I = 0x2

.field public static BCM_REAR_TAIL_GATE_NOT_ANTIPINCH:I = 0x1

.field public static BCM_REAR_TAIL_GATE_NOT_AVAILABLE:I = 0x0

.field public static final BCM_RMA_POS_ADJ_REQ_ADJUST:I = 0x2

.field public static final BCM_RMA_POS_ADJ_REQ_NO_CMD:I = 0x1

.field public static final BCM_RMA_POS_ADJ_REQ_RESTORE_BEFORE_ADJUST:I = 0x3

.field public static final COMMOM_INITIAl_STATUS:I = 0x0

.field public static final COMMOM_INVALID:I = 0x2

.field public static final COMMOM_STATUS_OFF:I = 0x0

.field public static final COMMOM_STATUS_ON:I = 0x1

.field public static final COMMOM_VALID:I = 0x1

.field private static final DBG:Z = false

.field public static DRIVER_BUCKLED:I = 0x0

.field public static DRIVER_BUCKLE_INVALID:I = 0x3

.field public static DRIVER_BUCKLE_RESERVED:I = 0x2

.field public static DRIVER_DOOR_INIT:I = 0x0

.field public static DRIVER_DOOR_LOCK:I = 0x1

.field public static DRIVER_DOOR_UNLOCK:I = 0x2

.field public static DRIVER_UNBUCKLE:I = 0x1

.field public static final ENGINE_MODE_EXHIBITION:I = 0x3

.field public static final ENGINE_MODE_FACTORY:I = 0x2

.field public static final ENGINE_MODE_NORMAL:I = 0x1

.field public static final ENGINE_MODE_OTA:I = 0x4

.field public static EPB_FAULT_STATUS_FAULT:I = 0x2

.field public static EPB_FAULT_STATUS_INITIALIZING:I = 0x0

.field public static EPB_FAULT_STATUS_NORMAL:I = 0x1

.field public static EPS_MODE_CHANGE_DISABLE:I = 0x0

.field public static EPS_MODE_CHANGE_ENABLE:I = 0x1

.field public static final ESP_IS_FORBIDDEN:I = 0x1

.field public static final ESP_NOT_FORBIDDEN:I = 0x0

.field public static EXHIB_MODE_NO_REQ:I = 0x0

.field public static EXHIB_MODE_REQ_ENTER:I = 0x1

.field public static EXHIB_MODE_REQ_EXIT:I = 0x2

.field public static FLC_SWS_INTER_CHG_ST_INIT:I = 0x0

.field public static FLC_SWS_INTER_CHG_ST_OFF:I = 0x1

.field public static FLC_SWS_INTER_CHG_ST_ON:I = 0x2

.field public static final HV_CONNECT:I = 0x1

.field public static final HV_DISCONNECT:I = 0x0

.field public static final ID_AccountId_RawData:I = 0x2170928c

.field public static final ID_BCM_DOOR_OPEN_INNER_LIGHT:I = 0x21409301

.field public static final ID_BCM_RMA_POS_ADJ_REQ:I = 0x2140905c

.field public static final ID_BcmDrvrBucSts:I = 0x21409180

.field public static final ID_BcmDrvrDoorLockSts:I = 0x21409181

.field public static final ID_CdpCoastTestModSwt:I = 0x214012b6

.field public static final ID_CdpDSVentnHeatMoveWACReq:I = 0x21409037

.field public static final ID_CdpDrvgMilgTestModSwt:I = 0x2140904b

.field public static final ID_CdpExhibitionModReq:I = 0x214090e6

.field public static final ID_CdpHvCnctReq:I = 0x21409087

.field public static final ID_CdpOTALoPwrReqTiSet:I = 0x214090e1

.field public static final ID_CdpOTAModReq:I = 0x214090e0

.field public static final ID_CdpPSVentnHeatMoveWACReq:I = 0x21409089

.field public static final ID_CdpProtnModSts:I = 0x2140904c

.field public static final ID_ENERGY_REGEN_FORBIDDEN:I = 0x21409007

.field public static final ID_ESP_FORBIDDEN:I = 0x21409008

.field public static final ID_EpbrFlt:I = 0x214090db

.field public static final ID_EpsModChgEnable:I = 0x21409182

.field public static final ID_FLC_SWS_INTER_CHG_ST:I = 0x21409830

.field public static final ID_HVAC_LEFT_SWEEP_VERTICAL_POS:I = 0x21401a72

.field public static final ID_HVAC_REMOTE_MODE_STATUS:I = 0x21409244

.field public static final ID_HVAC_RIGHT_SWEEP_VERTICAL_POS:I = 0x21401a73

.field public static final ID_IPB_AVH_AVAIL:I = 0x21409006

.field public static final ID_IPB_AVH_STANDBY:I = 0x21409005

.field public static final ID_IpbESPOff:I = 0x214090d8

.field public static final ID_MONA_AVERAGE_ENERGY:I = 0x216091ef

.field public static final ID_MONA_GET_APP_HIGH_POWER:I = 0x2141930b

.field public static final ID_MONA_GET_APP_LOW_POWER:I = 0x2141930a

.field public static final ID_MONA_HIGH_POWER_REQ:I = 0x21419303

.field public static final ID_MONA_HVAC_CENTER_HORZ:I = 0x21409081

.field public static final ID_MONA_HVAC_CENTER_OUTLET_SET:I = 0x2141907c

.field public static final ID_MONA_HVAC_CENTER_OUTLET_SW:I = 0x2140903e

.field public static final ID_MONA_HVAC_CENTER_VERT:I = 0x21409082

.field public static final ID_MONA_HVAC_DRV_LEFT_OUTLET_SET:I = 0x2141907d

.field public static final ID_MONA_HVAC_DRV_LEFT_SW:I = 0x2140903a

.field public static final ID_MONA_HVAC_DRV_RIGHT_OUTLET_SET:I = 0x2141907e

.field public static final ID_MONA_HVAC_DRV_RIGHT_SW:I = 0x2140903b

.field public static final ID_MONA_HVAC_PSN_LEFT_OUTLET_SET:I = 0x2141907f

.field public static final ID_MONA_HVAC_PSN_LEFT_SW:I = 0x2140903c

.field public static final ID_MONA_HVAC_PSN_RIGHT_OUTLET_SET:I = 0x21419080

.field public static final ID_MONA_HVAC_PSN_RIGHT_SW:I = 0x2140903d

.field public static final ID_MONA_KEY_NOT_DET_RMN:I = 0x214090d0

.field public static final ID_MONA_LOW_POWER_REQ:I = 0x21419307

.field public static final ID_MONA_LOW_POWER_TICK:I = 0x21419309

.field public static final ID_MONA_MILES_CONSUMPTION:I = 0x217090f5

.field public static final ID_MONA_MSMD_SEAT_ALL_LEAVE_POS_SAVE:I = 0x21419077

.field public static final ID_MONA_MSMD_SEAT_ALL_POS_SAVE:I = 0x21419076

.field public static final ID_MONA_MSMP_SEAT_ALL_LEAVE_POS_SAVE:I = 0x21419079

.field public static final ID_MONA_MSMP_SEAT_ALL_POS_SAVE:I = 0x21419078

.field public static final ID_MONA_OTA_HIGH_POWER_REQ:I = 0x21419302

.field public static final ID_MONA_OTA_LOW_POWER_REQ:I = 0x21419306

.field public static final ID_MONA_OTA_REQ_HV_AND_OTA:I = 0x214190f3

.field public static final ID_MONA_OTA_REQ_LOPWR_AND_TIME:I = 0x214190f2

.field public static final ID_MONA_REAR_TAIL_GATE_ANTI_PINCH_STS:I = 0x214090dd

.field public static final ID_MONA_SWS_CTRL_SCENE_ST:I = 0x214090de

.field public static final ID_MONA_VDP_CDP_LO_PWR_SFT_UP_REQ_SRC:I = 0x21409069

.field public static final ID_MONA_VDP_CDP_REQ_LO_PWR_MOD:I = 0x21409068

.field public static final ID_MONA_WIPER_BTN_ST:I = 0x214090e7

.field public static final ID_RT_HVAC_MAX_COOLING:I = 0x21409315

.field public static final ID_RT_HVAC_MAX_WARMING:I = 0x21409314

.field public static final ID_VCU_N_GEAR_REQ:I = 0x214012b6

.field public static final ID_VdpcDSVentnHeatMoveWASetSts:I = 0x21409038

.field public static final ID_VdpcHvCnctSts:I = 0x2140904d

.field public static final ID_VdpcLoclLoVPwrMod:I = 0x2140904e

.field public static final ID_VdpcLowVPwrMod:I = 0x214090e2

.field public static final ID_VdpcPSVentnHeatMoveWASetSts:I = 0x2140912a

.field public static final ID_VdpcPtAntithftAuthentAtmpts:I = 0x214090d7

.field public static final ID_VdpcRegenInhibtTip:I = 0x214090da

.field public static final ID_VdpcTesterCnctSts:I = 0x2140904a

.field public static final ID_VdpcVehEnginMod:I = 0x2140904f

.field public static final ID_lowBatteryVoltageStatus:I = 0x214090b7

.field public static IPB_ESP_OFF_ESP_AND_TCS_OFF:I = 0x1

.field public static IPB_ESP_OFF_FULL_FUNCTION:I = 0x0

.field public static KEY_NOT_DET_RMN_INTERKEY_REMIND:I = 0x2

.field public static KEY_NOT_DET_RMN_KEY_FROM_KEYFOB_REMIND:I = 0x3

.field public static KEY_NOT_DET_RMN_KEY_FROM_UNLOCK_REMIND:I = 0x4

.field public static KEY_NOT_DET_RMN_NO_IMMOKEY_KEYFOB_REMIND:I = 0x7

.field public static KEY_NOT_DET_RMN_NO_IMMOKEY_NFC_REMIND:I = 0x5

.field public static KEY_NOT_DET_RMN_NO_IMMOKEY_REM_REMIND:I = 0x6

.field public static KEY_NOT_DET_RMN_NO_REMIND:I = 0x0

.field public static KEY_NOT_DET_RMN_PEKEY_REMIND:I = 0x1

.field public static final LOC_LOW_VOL_PWR_ACC:I = 0x2

.field public static final LOC_LOW_VOL_PWR_OFF:I = 0x1

.field public static final LOC_LOW_VOL_PWR_ON:I = 0x3

.field public static final LOC_LOW_VOL_PWR_RESERVED:I = 0x0

.field public static LOW_BATT_STATU_ERROR_OPEN_CIRCUIT:I = 0x1

.field public static LOW_BATT_STATU_HARDWARE_DEFECT:I = 0x2

.field public static LOW_BATT_STATU_LIN_SATURATION:I = 0x3

.field public static LOW_BATT_STATU_NO_ERROR:I = 0x0

.field public static final LOW_POWER_MOD_STS_ACC:I = 0x1

.field public static final LOW_POWER_MOD_STS_OFF:I = 0x0

.field public static final LOW_POWER_MOD_STS_ON:I = 0x2

.field public static final LOW_POWER_SFT_UP_REQ_SRC_AVM_FAST_START:I = 0x6

.field public static final LOW_POWER_SFT_UP_REQ_SRC_ENTERTAINMENT:I = 0x2

.field public static final LOW_POWER_SFT_UP_REQ_SRC_INITIAL:I = 0x0

.field public static final LOW_POWER_SFT_UP_REQ_SRC_OTA:I = 0x1

.field public static final LOW_POWER_SFT_UP_REQ_SRC_REMOTE_CONTROL:I = 0x3

.field public static final LOW_POWER_SFT_UP_REQ_SRC_REMOTE_DIAGNOSTIC:I = 0x4

.field public static final LOW_POWER_SFT_UP_REQ_SRC_RPA:I = 0x5

.field public static LOW_VOL_MODE_ACC:I = 0x2

.field public static LOW_VOL_MODE_INIT:I = 0x0

.field public static LOW_VOL_MODE_OFF:I = 0x1

.field public static LOW_VOL_MODE_ON:I = 0x3

.field public static final MILG_TEST_MODE_INVALID:I = 0x2

.field public static final MILG_TEST_MODE_VALID:I = 0x1

.field public static OTA_MODE_ENTER_HIGH_VOLTAGE:I = 0x1

.field public static OTA_MODE_ENTER_LOW_VOLTAGE:I = 0x2

.field public static OTA_MODE_EXIT:I = 0x3

.field public static OTA_MODE_INITIAl:I = 0x0

.field public static REGEN_INHB_TIP_DTC_FLT_INHB_REGEN:I = 0x1

.field public static REGEN_INHB_TIP_NO_TIP:I = 0x0

.field public static final REGEN_IS_FORBIDDEN:I = 0x1

.field public static final REGEN_NOT_FORBIDDEN:I = 0x0

.field public static final REMOTE_AIR_CONDITION_STATUS_AUTO:I = 0x2

.field public static final REMOTE_AIR_CONDITION_STATUS_DEFROST:I = 0x3

.field public static final REMOTE_AIR_CONDITION_STATUS_NOT_AVAILABLE:I = 0x0

.field public static final REMOTE_AIR_CONDITION_STATUS_OFF:I = 0x1

.field public static SWS_CTRL_SCENE_ST_AUTOTILE_MIRROR_ADJUST_MODE_ON:I = 0x4

.field public static SWS_CTRL_SCENE_ST_COCKPITMODE:I = 0x3

.field public static SWS_CTRL_SCENE_ST_DEFAULT_MODE:I = 0x2

.field public static SWS_CTRL_SCENE_ST_INITIAL:I = 0x0

.field public static SWS_CTRL_SCENE_ST_MIRROR_ADJUST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarMonaManager"

.field public static final TESTER_IS_CONNECT:I = 0x2

.field public static final TESTER_NOT_CONNECT:I = 0x1

.field public static final WIPER_BTN_STS_FAILURE:I = 0x3

.field public static final WIPER_BTN_STS_GEAR_1:I = 0x1

.field public static final WIPER_BTN_STS_GEAR_2:I = 0x2

.field public static final WIPER_BTN_STS_NO_ACTION:I


# instance fields
.field private final mMonaPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarMonaManager"

    .line 1415
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 1324
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x47

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21409005

    .line 1325
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21409006

    .line 1326
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21409007

    .line 1327
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21409008

    .line 1328
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x2140904a

    .line 1329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x2140904b

    .line 1330
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x2140904c

    .line 1331
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x214012b6

    .line 1332
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2140904d

    .line 1334
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140904e

    .line 1335
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x2140904f

    .line 1336
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x2140905c

    .line 1337
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21409068

    .line 1338
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21409069

    .line 1339
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21419076

    .line 1340
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21419077

    .line 1341
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21419078

    .line 1342
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21419079

    .line 1343
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x2141907c

    .line 1344
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x2141907d

    .line 1345
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x2141907e

    .line 1346
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x2141907f

    .line 1347
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21419080

    .line 1348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21409082

    .line 1349
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21409081

    .line 1350
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21401a72

    .line 1351
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21401a73

    .line 1352
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    const p3, 0x21409037

    .line 1353
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1c

    aput-object p3, p2, p4

    const p3, 0x21409038

    .line 1354
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1d

    aput-object p3, p2, p4

    const p3, 0x2140912a

    .line 1355
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1e

    aput-object p3, p2, p4

    const p3, 0x2140903a

    .line 1356
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1f

    aput-object p3, p2, p4

    const p3, 0x2140903b

    .line 1357
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x20

    aput-object p3, p2, p4

    const p3, 0x2140903c

    .line 1358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x21

    aput-object p3, p2, p4

    const p3, 0x2140903d

    .line 1359
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x22

    aput-object p3, p2, p4

    const p3, 0x2140903e

    .line 1360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x23

    aput-object p3, p2, p4

    const p3, 0x21409089

    .line 1361
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x24

    aput-object p3, p2, p4

    const p3, 0x214090d0

    .line 1362
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x25

    aput-object p3, p2, p4

    const p3, 0x214090d8

    .line 1363
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x26

    aput-object p3, p2, p4

    const p3, 0x214090da

    .line 1364
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x27

    aput-object p3, p2, p4

    const p3, 0x214090db

    .line 1365
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x28

    aput-object p3, p2, p4

    const p3, 0x214090d7

    .line 1366
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x29

    aput-object p3, p2, p4

    const p3, 0x214090dd

    .line 1367
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2a

    aput-object p3, p2, p4

    const p3, 0x214090de

    .line 1368
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2b

    aput-object p3, p2, p4

    const p3, 0x214090e0

    .line 1369
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2c

    aput-object p3, p2, p4

    const p3, 0x214090e1

    .line 1370
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2d

    aput-object p3, p2, p4

    const p3, 0x214090e2

    .line 1371
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2e

    aput-object p3, p2, p4

    const p3, 0x214090e6

    .line 1372
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x2f

    aput-object p3, p2, p4

    const p3, 0x214090b7

    .line 1373
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x30

    aput-object p3, p2, p4

    const p3, 0x214090e7

    .line 1374
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x31

    aput-object p3, p2, p4

    const p3, 0x21409087

    .line 1375
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x32

    aput-object p3, p2, p4

    const p3, 0x214190f2

    .line 1376
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x33

    aput-object p3, p2, p4

    const p3, 0x214190f3

    .line 1377
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x34

    aput-object p3, p2, p4

    const p3, 0x217090f5

    .line 1378
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x35

    aput-object p3, p2, p4

    const p3, 0x21409180

    .line 1379
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x36

    aput-object p3, p2, p4

    const p3, 0x21409181

    .line 1380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x37

    aput-object p3, p2, p4

    const p3, 0x21409182

    .line 1381
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x38

    aput-object p3, p2, p4

    const p3, 0x216091ef

    .line 1382
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x39

    aput-object p3, p2, p4

    const p3, 0x2170928c

    .line 1383
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3a

    aput-object p3, p2, p4

    const p3, 0x21409244

    .line 1384
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3b

    aput-object p3, p2, p4

    const p3, 0x21409830

    .line 1385
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3c

    aput-object p3, p2, p4

    const p3, 0x21409301

    .line 1386
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3d

    aput-object p3, p2, p4

    const p3, 0x21419302

    .line 1387
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3e

    aput-object p3, p2, p4

    const p3, 0x21419303

    .line 1388
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x3f

    aput-object p3, p2, p4

    const p3, 0x2141930b

    .line 1389
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x40

    aput-object p3, p2, p4

    const p3, 0x21419309

    .line 1390
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x41

    aput-object p3, p2, p4

    const p3, 0x21419306

    .line 1391
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x42

    aput-object p3, p2, p4

    const p3, 0x21419307

    .line 1392
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x43

    aput-object p3, p2, p4

    const p3, 0x2141930a

    .line 1393
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x44

    aput-object p3, p2, p4

    const p3, 0x21409315

    .line 1394
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x45

    aput-object p3, p2, p4

    const p3, 0x21409314

    .line 1395
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x46

    aput-object p3, p2, p4

    .line 1324
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/xpeng/mona/CarMonaManager;->mMonaPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_mona"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAPPHighPowerReq(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarMonaManager"

    const v1, 0x2141930b

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2662
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/car/xpeng/mona/CarMonaManager;->getIntVectorProperty(II)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/16 v4, 0x9

    if-gt p1, v4, :cond_0

    sub-int/2addr p1, v2

    .line 2664
    aget p1, v1, p1

    return p1

    .line 2666
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAPPHighPowerReq error with invalid app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 2670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw Exception e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getAPPLowPowerReq(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CarMonaManager"

    const v1, 0x2141930a

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2771
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/car/xpeng/mona/CarMonaManager;->getIntVectorProperty(II)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/16 v4, 0x9

    if-gt p1, v4, :cond_0

    sub-int/2addr p1, v2

    .line 2773
    aget p1, v1, p1

    return p1

    .line 2775
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAPPLowPowerReq error with invalid app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 2779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "throw Exception e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getAVHAvailableStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409006

    const/4 v1, 0x0

    .line 1470
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAVHStandbyStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409005

    const/4 v1, 0x0

    .line 1454
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAccountRawData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2170928c

    const/4 v1, 0x0

    .line 2458
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getByteVectorProperty(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getAntithftAuthentAtmpts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090d7

    const/4 v1, 0x0

    .line 2166
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBcmDrvrBucSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409180

    const/4 v1, 0x0

    .line 2422
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getBcmDrvrDoorLockSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409181

    const/4 v1, 0x0

    .line 2435
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCdpCoastTestModSwt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012b6

    const/4 v1, 0x0

    .line 1602
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCdpDrvgMilgTestModSwt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904b

    const/4 v1, 0x0

    .line 1551
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCenterWindHorzPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409081

    const/4 v1, 0x0

    .line 1969
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCenterWindSwSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903e

    const/4 v1, 0x0

    .line 2139
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getCenterWindVertPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409082

    const/4 v1, 0x0

    .line 1951
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvLeftWindSwSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903a

    const/4 v1, 0x0

    .line 2035
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getDrvRightWindSwSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903b

    const/4 v1, 0x0

    .line 2061
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEngineMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904f

    const/4 v1, 0x0

    .line 1688
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEpbrFlt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090db

    const/4 v1, 0x0

    .line 2204
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEpsModChgEnable()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409182

    const/4 v1, 0x0

    .line 2447
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEspForbidden()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409008

    const/4 v1, 0x0

    .line 1502
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getHvConnectStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904d

    const/4 v1, 0x0

    .line 1651
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getIpbESPOff()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090d8

    const/4 v1, 0x0

    .line 2178
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getKeyNotDetRMN()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090d0

    const/4 v1, 0x0

    .line 2156
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLeftSweepWindVerticalPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a72

    const/4 v1, 0x0

    .line 2525
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLoclLoVPwrMod()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904e

    const/4 v1, 0x0

    .line 1669
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLowPowerSftUpReqSrc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409069

    const/4 v1, 0x0

    .line 1779
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getLowPowerSftUpRequest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409068

    const/4 v1, 0x0

    .line 1739
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getMilesConsumptions()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x217090f5

    const/4 v1, 0x0

    .line 2403
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getByteVectorProperty(II)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CarMonaManager"

    const-string v1, "get milesConsumption fail, return null"

    .line 2405
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 2408
    :cond_0
    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->parseFrom([B)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    move-result-object v0

    return-object v0
.end method

.method public getNGearRes()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012b6

    const/4 v1, 0x0

    .line 1635
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

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

    .line 1436
    iget-object v0, p0, Landroid/car/xpeng/mona/CarMonaManager;->mMonaPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPsVentHeatMoveWACSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140912a

    const/4 v1, 0x0

    .line 2009
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrLeftWindSwSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903c

    const/4 v1, 0x0

    .line 2087
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getPsngrRightWindSwSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903d

    const/4 v1, 0x0

    .line 2113
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRearTailGateAntiModeSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090dd

    const/4 v1, 0x0

    .line 2217
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRegenForbiddenSt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409007

    const/4 v1, 0x0

    .line 1486
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRemoteAirConditionModeStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409244

    const/4 v1, 0x0

    .line 2471
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getRightSweepWindVerticalPos()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a73

    const/4 v1, 0x0

    .line 2567
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getTesterCnctSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904a

    const/4 v1, 0x0

    .line 1519
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVdpcLowVPwrMod()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090e2

    const/4 v1, 0x0

    .line 2283
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVdpcRegenInhibtTip()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090da

    const/4 v1, 0x0

    .line 2190
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVentHeatMoveWACSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409038

    const/4 v1, 0x0

    .line 1999
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getWiperBtnSts()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090e7

    const/4 v1, 0x0

    .line 2327
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getlowBatteryVoltageStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090b7

    const/4 v1, 0x0

    .line 2314
    invoke-virtual {p0, v0, v1}, Landroid/car/xpeng/mona/CarMonaManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public setCdpCoastTestModSwt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012b6

    const/4 v1, 0x0

    .line 1586
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpDrvgMilgTestModSwt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904b

    const/4 v1, 0x0

    .line 1535
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpExhibitionModReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090e6

    const/4 v1, 0x0

    .line 2300
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpHvCnctReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409087

    const/4 v1, 0x0

    .line 2343
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpOTALoPwrReqTiSet(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090e1

    const/4 v1, 0x0

    .line 2269
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpOTAModReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090e0

    const/4 v1, 0x0

    .line 2255
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCdpProtnModSts(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140904c

    const/4 v1, 0x0

    .line 1568
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setCenterWindPos(II)V
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

    const p1, 0x2141907c

    .line 1853
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setCenterWindSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903e

    const/4 v1, 0x0

    .line 2126
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setDriverLeftWindPos(II)V
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

    const p1, 0x2141907d

    .line 1873
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setDriverRightWindPos(II)V
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

    const p1, 0x2141907e

    .line 1893
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setDrvLeftWindSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903a

    const/4 v1, 0x0

    .line 2022
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setDrvRightWindSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903b

    const/4 v1, 0x0

    .line 2048
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setFlcSwsInterChgStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409830

    const/4 v1, 0x0

    .line 2483
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setHighPowerReq(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const p1, 0x21419303

    .line 2634
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setHvCnctReqAndOTAModReq(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const p1, 0x214190f3

    .line 2392
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setLeftSweepWindVerticalPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a72

    const/4 v1, 0x0

    .line 2504
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setLoPwrReqAndSrcAndOtaTime(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const p1, 0x214190f2

    .line 2371
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setLowPowerReq(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const p1, 0x21419307

    .line 2742
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setLowPowerSftUpReqSrc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409069

    const/4 v1, 0x0

    .line 1758
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setLowPowerSftUpRequest(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409068

    const/4 v1, 0x0

    .line 1722
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setLowPowerTickAck(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const p1, 0x21419309

    .line 2807
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setMsmdAllDrvPos(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const p1, 0x21419076

    .line 1793
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setMsmdAllLeavePos(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const p1, 0x21419077

    .line 1807
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setMsmpAllDrvPos(II)V
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

    const p1, 0x21419078

    .line 1820
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setMsmpAllLeavePos(II)V
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

    const p1, 0x21419079

    .line 1833
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setNGearReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214012b6

    const/4 v1, 0x0

    .line 1619
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setOTAHighPowerReq(III)V
    .locals 3

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    const/4 v2, 0x1

    aput p2, p1, v2

    aput p3, p1, v1

    const p2, 0x21419302

    .line 2609
    invoke-virtual {p0, p2, v0, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setOTALowPowerReq(IIII)V
    .locals 3

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p1, v0

    const/4 v2, 0x1

    aput p2, p1, v2

    aput p3, p1, v1

    const/4 p2, 0x3

    aput p4, p1, p2

    const p2, 0x21419306

    .line 2708
    invoke-virtual {p0, p2, v0, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setOpenDoorInnerLightEnableSwitch(I)V
    .locals 2

    const v0, 0x21409301

    const/4 v1, 0x0

    .line 2584
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOpenDoorInnerLightEnableSwitch error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMonaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPSVentHeatMoveWACReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409089

    const/4 v1, 0x0

    .line 1989
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrLeftWindPos(II)V
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

    const p1, 0x2141907f

    .line 1913
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setPsngrLeftWindSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903c

    const/4 v1, 0x0

    .line 2074
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setPsngrRightWindPos(II)V
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

    const p1, 0x21419080

    .line 1933
    invoke-virtual {p0, p1, v1, v0}, Landroid/car/xpeng/mona/CarMonaManager;->setIntVectorProperty(II[I)V

    return-void
.end method

.method public setPsngrRightWindSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140903d

    const/4 v1, 0x0

    .line 2100
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setRMirrorPosAdjRequest(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x2140905c

    const/4 v1, 0x0

    .line 1705
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setRightSweepWindVerticalPos(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21401a73

    const/4 v1, 0x0

    .line 2546
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setRtHvacMaxCooling(I)I
    .locals 2

    const v0, 0x21409315

    const/4 v1, 0x0

    .line 2843
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRtHvacMaxCooling throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMonaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setRtHvacMaxWarming(I)I
    .locals 2

    const v0, 0x21409314

    const/4 v1, 0x0

    .line 2822
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRtHvacMaxWarming throw RemoteException | RuntimeException e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarMonaManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public setSwsControlSceneStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x214090de

    const/4 v1, 0x0

    .line 2237
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method

.method public setVentHeatMoveWACReq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21409037

    const/4 v1, 0x0

    .line 1979
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/xpeng/mona/CarMonaManager;->setIntProperty(III)V

    return-void
.end method
