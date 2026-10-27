.class public Landroid/car/xpeng/autodriving/CarAutoDrivingManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarAutoDrivingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/autodriving/CarAutoDrivingManager$CarXpuEventCallback;,
        Landroid/car/xpeng/autodriving/CarAutoDrivingManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_ADS_BCM_POWERMODE:I = 0x21401c64

.field public static final ID_ADS_ECLUSTER_XPU_RDPLEFTWARNINGST:I = 0x2140984c

.field public static final ID_ADS_ECLUSTER_XPU_RDPRIGHTWARNINGST:I = 0x2140984d

.field public static final ID_ADS_ECLUSTER_XPU_TIMEGAPSETDISP:I = 0x2140984f

.field public static final ID_ADS_FRONT_LEFT_DOOR:I = 0x2140918f

.field public static final ID_ADS_FRONT_RIGHT_DOOR:I = 0x21409190

.field public static final ID_ADS_HOOD_ST:I = 0x21409263

.field public static final ID_ADS_LANE_ALIGNMENT_ASSIST:I = 0x2140260e

.field public static final ID_ADS_REAR_LEFT_DOOR:I = 0x21409191

.field public static final ID_ADS_REAR_RIGHT_DOOR:I = 0x21409192

.field public static final ID_ADS_SCU_ACC_ST:I = 0x21409867

.field public static final ID_ADS_SCU_AUTO_PARK_AP_ST:I = 0x21409854

.field public static final ID_ADS_SCU_BSD_LEFT_WARNING:I = 0x21409843

.field public static final ID_ADS_SCU_BSD_RIGHT_WARNING:I = 0x21409844

.field public static final ID_ADS_SCU_DOW_LWARNING:I = 0x21409847

.field public static final ID_ADS_SCU_DOW_RWARNING:I = 0x21409848

.field public static final ID_ADS_SCU_DSM_SWITCH:I = 0x2140980b

.field public static final ID_ADS_SCU_DSM_TIRD_DISTRACTION:I = 0x2140985d

.field public static final ID_ADS_SCU_FARLAMP_AUTO_SW:I = 0x21402603

.field public static final ID_ADS_SCU_FCWAEB_SEN_SW:I = 0x214026fd

.field public static final ID_ADS_SCU_FRONT_COLLISION_SECURITY:I = 0x21402601

.field public static final ID_ADS_SCU_LR_BSD_SW:I = 0x214126ef

.field public static final ID_ADS_SCU_LR_DOW_SW:I = 0x214126f1

.field public static final ID_ADS_SCU_LR_RCTA_SW:I = 0x214126f2

.field public static final ID_ADS_SCU_LR_RCW_SW:I = 0x214126f0

.field public static final ID_ADS_SCU_LR_RCW_WARNING_ST:I = 0x21419840

.field public static final ID_ADS_SCU_LSS_SWST:I = 0x214026fc

.field public static final ID_ADS_SCU_MRR_ASSIST_SYSST:I = 0x2141983f

.field public static final ID_ADS_SCU_PK_BTN:I = 0x21409851

.field public static final ID_ADS_SCU_RCTA_LEFT_WARNING:I = 0x2140983b

.field public static final ID_ADS_SCU_RCTA_RIGHT_WARNING:I = 0x2140983c

.field public static final ID_ADS_SCU_SUPER_PARK_ACTIVE:I = 0x2140982a

.field public static final ID_ADS_TRUNK_ST:I = 0x2140916a

.field public static final ID_ADS_VCU_ACCPEDAL_SIG:I = 0x21401218

.field public static final ID_ADS_VCU_BRKPEDAL_ST:I = 0x21401217

.field public static final ID_ADS_VCU_RAW_CAR_SPEED:I = 0x21601225

.field public static final ID_ADS_VCU_REAL_GEAR_LEVEL:I = 0x2140123c

.field public static final ID_ADS_VDPC_LOCL_LOV_PWR:I = 0x2140904e

.field public static final ID_ADS_VDPC_LOWV_PWR:I = 0x214090e2

.field public static final ID_ADS_XPU_APA_ICON_ST:I = 0x2140983e

.field public static final ID_ADS_XPU_FRONT_DRIVE_OFF:I = 0x2140985c

.field public static final ID_ADS_XPU_HMI_REMIND:I = 0x2140981f

.field public static final ID_ADS_XPU_HMI_VOICE:I = 0x21409820

.field public static final ID_ADS_XPU_RD_PK_HMI_MODE:I = 0x2140982b

.field public static final ID_ADS_XPU_SD_PERIOD_DATA:I = 0x21709841

.field public static final ID_ADS_XPU_SR_PK_EVENT_DATA:I = 0x21709804

.field public static final ID_ADS_XPU_SR_PK_PERIOD_DATA:I = 0x21709803

.field public static final ID_AIR_SCU_FRONT_RADAR:I = 0x2161985e

.field public static final ID_AIR_SCU_FRONT_RADAR_FAULT_ST:I = 0x21419860

.field public static final ID_AIR_SCU_TAIL_RADAR:I = 0x2161985f

.field public static final ID_AIR_SCU_TAIL_RADAR_FAULT_ST:I = 0x21419861

.field public static final ID_AIR_XPU_AEB_AES_ICON_ST:I = 0x21409881

.field public static final ID_BCM_CENTRAL_LOCK_SW:I = 0x21401c09

.field public static final ID_ECLUSTER_XPU_ICM_DISPACT:I = 0x21409863

.field public static final ID_ECLUSTER_XPU_URADARVOICE_REGION:I = 0x21409865

.field public static final ID_ECLUSTER_XPU_URADARVOICE_TONE:I = 0x21409864

.field public static final ID_ECLUSTER_XPU_URADAR_VOICE_ACTIVE:I = 0x21409862

.field public static final ID_FCL_PILOT_FCT_CDN:I = 0x2140982e

.field public static final ID_FLC_ACC_GO_REMINDER:I = 0x2140981c

.field public static final ID_FLC_ACC_HEADWAY_LEVEL:I = 0x2140982c

.field public static final ID_FLC_ACC_ODC:I = 0x2141981a

.field public static final ID_FLC_ACC_ODC_TRIGGER:I = 0x21409819

.field public static final ID_FLC_ACC_TAKEOVER_REQ:I = 0x21409850

.field public static final ID_FLC_AEB_TRIGGER:I = 0x21409837

.field public static final ID_FLC_BLE_XPU_HEARTBEAT:I = 0x21409829

.field public static final ID_FLC_BLE_XPU_SUMMON_CMD:I = 0x21409828

.field public static final ID_FLC_CDP_DMS_DRV_DISTRACTION:I = 0x21409856

.field public static final ID_FLC_CDP_DMS_EYS_CLS_TM:I = 0x2140985b

.field public static final ID_FLC_CDP_DMS_FATIGUE_LEVEL:I = 0x2140985a

.field public static final ID_FLC_CDP_DMS_HEAD_POSE:I = 0x21409859

.field public static final ID_FLC_CDP_DMS_ST:I = 0x21409855

.field public static final ID_FLC_CDP_DMS_WATCH_REGION:I = 0x21409858

.field public static final ID_FLC_CDP_DRV_FATIGUE_ST:I = 0x21409857

.field public static final ID_FLC_CIP_TARGET_VLD:I = 0x21409832

.field public static final ID_FLC_DISTRACTION_WARNING:I = 0x21409815

.field public static final ID_FLC_DRV_ACC:I = 0x2140981b

.field public static final ID_FLC_DRV_AEB_STS:I = 0x21409836

.field public static final ID_FLC_DRV_BSD_WARN:I = 0x21419842

.field public static final ID_FLC_DRV_DOW_WARN:I = 0x21419846

.field public static final ID_FLC_DRV_FCW_STS:I = 0x21409835

.field public static final ID_FLC_DRV_LCW_WARN:I = 0x21419845

.field public static final ID_FLC_DRV_PILOT_MOD:I = 0x21409813

.field public static final ID_FLC_DRV_PILOT_ST:I = 0x21409831

.field public static final ID_FLC_ELK_LANE_DEPARTURE_DIR:I = 0x2140984b

.field public static final ID_FLC_EPS_STEER_TQ:I = 0x21609833

.field public static final ID_FLC_EV_SYS_READY_ST:I = 0x2140983d

.field public static final ID_FLC_FCW_WARNING:I = 0x21409834

.field public static final ID_FLC_HANDSOFF_WARNING:I = 0x21409814

.field public static final ID_FLC_ICC_FCT_SW:I = 0x2140982f

.field public static final ID_FLC_LDP_LANE_DEPARTURE_DIR:I = 0x2140984a

.field public static final ID_FLC_LDW_WARNING:I = 0x21409849

.field public static final ID_FLC_PILOT_FAIL_OPERATION_ST:I = 0x2140984e

.field public static final ID_FLC_PILOT_FRZ_MODE:I = 0x21409817

.field public static final ID_FLC_PILOT_ODC:I = 0x2141981e

.field public static final ID_FLC_PILOT_ODC_TRIGGER:I = 0x2140981d

.field public static final ID_FLC_PILOT_SMART_DODGE:I = 0x21409816

.field public static final ID_FLC_RCTA_WARN:I = 0x2141983a

.field public static final ID_FLC_RCW_WARNING:I = 0x21409838

.field public static final ID_FLC_RCW_WARN_REQ:I = 0x21409839

.field public static final ID_FLC_RIGHT_SHIFT_LVR_ST:I = 0x21409818

.field public static final ID_FLC_SAS_STEER_WHL_AG:I = 0x21609852

.field public static final ID_FLC_SAS_STEER_WHL_AG_SPD:I = 0x21409853

.field public static final ID_FLC_SWS_INTER_CHG_ST:I = 0x21409830

.field public static final ID_FLC_SWS_LE_TOG_ST:I = 0x21409866

.field public static final ID_FLC_SWS_RI_TOG_ST:I = 0x2140982d

.field public static final ID_FLC_TBOX_BLE_CONNECTEDST:I = 0x21401036

.field public static final ID_FLC_TBOX_BLE_PHONE_PARKING:I = 0x21409827

.field public static final ID_FLC_VDP_ANTI_THFT_AUTHEN:I = 0x21409826

.field public static final ID_FLC_XPU_KEEP_LOHI_REQ:I = 0x21409823

.field public static final ID_FLC_XPU_KEEP_READY_REQ:I = 0x21409825

.field public static final ID_FLC_XPU_POWER_REQ:I = 0x21409821

.field public static final ID_FLC_XPU_POWER_REQ_VD:I = 0x21409822

.field public static final ID_FLC_XPU_READY_ON_REQ:I = 0x21409824

.field public static final ID_SCU_FRONT_RADAR:I = 0x2161261c

.field public static final ID_SCU_FRONT_RADAR_FAULT_ST:I = 0x21412649

.field public static final ID_SCU_FRONT_RADAR_LVL:I = 0x2141264a

.field public static final ID_SCU_RADAR_DIS_ACTIVE:I = 0x2140264f

.field public static final ID_SCU_RDATTR_DETAIL_RD:I = 0x2140266e

.field public static final ID_SCU_TAIL_RADAR:I = 0x2161261d

.field public static final ID_SCU_TAIL_RADAR_FAULT_ST:I = 0x2141264d

.field public static final ID_SCU_TAIL_RADAR_LVL:I = 0x2141264e

.field public static final ID_SCU_URADAR_FDIST:I = 0x21402651

.field public static final ID_SCU_URADAR_RDIST:I = 0x21402652

.field private static final TAG:Ljava/lang/String; = "AutoDrivingManager"

.field private static final mASSharedMemoryPropertyIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mASPropertyIds:Landroid/util/ArraySet;
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

    .line 424
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x21709803

    .line 426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x21709804

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x21709841

    .line 428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 425
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mASSharedMemoryPropertyIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p4, 0x0

    const-string p5, "AutoDrivingManager"

    .line 443
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 155
    iput-boolean p4, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->supportShmManager:Z

    .line 158
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x7b

    new-array p2, p2, [Ljava/lang/Integer;

    const p5, 0x21709803

    .line 160
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, p4

    const p4, 0x21709804

    .line 161
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    const p4, 0x21402601

    .line 162
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x2

    aput-object p4, p2, p5

    const p4, 0x2140260e

    .line 163
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    aput-object p4, p2, p5

    const p4, 0x2140980b

    .line 164
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, p2, p5

    const p4, 0x214126ef

    .line 165
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, p2, p5

    const p4, 0x214126f0

    .line 166
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, p2, p5

    const p4, 0x214126f1

    .line 167
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    aput-object p4, p2, p5

    const p4, 0x214126f2

    .line 168
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x8

    aput-object p4, p2, p5

    const p4, 0x214026fc

    .line 169
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x9

    aput-object p4, p2, p5

    const p4, 0x214026fd

    .line 170
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xa

    aput-object p4, p2, p5

    const p4, 0x21402603

    .line 171
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xb

    aput-object p4, p2, p5

    const p4, 0x21409813

    .line 172
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xc

    aput-object p4, p2, p5

    const p4, 0x21409814

    .line 173
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd

    aput-object p4, p2, p5

    const p4, 0x21409815

    .line 174
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xe

    aput-object p4, p2, p5

    const p4, 0x21409816

    .line 175
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xf

    aput-object p4, p2, p5

    const p4, 0x21409817

    .line 176
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x10

    aput-object p4, p2, p5

    const p4, 0x21409818

    .line 177
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x11

    aput-object p4, p2, p5

    const p4, 0x21409819

    .line 178
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x12

    aput-object p4, p2, p5

    const p4, 0x2141981a

    .line 179
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x13

    aput-object p4, p2, p5

    const p4, 0x2140981b

    .line 180
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x14

    aput-object p4, p2, p5

    const p4, 0x2140981c

    .line 181
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x15

    aput-object p4, p2, p5

    const p4, 0x2140981d

    .line 182
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x16

    aput-object p4, p2, p5

    const p4, 0x2141981e

    .line 183
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x17

    aput-object p4, p2, p5

    const p4, 0x2140981f

    .line 184
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x18

    aput-object p4, p2, p5

    const p4, 0x21409820

    .line 185
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x19

    aput-object p4, p2, p5

    const p4, 0x21409821

    .line 186
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1a

    aput-object p4, p2, p5

    const p4, 0x21409822

    .line 187
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1b

    aput-object p4, p2, p5

    const p4, 0x21409823

    .line 188
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1c

    aput-object p4, p2, p5

    const p4, 0x21409824

    .line 189
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1d

    aput-object p4, p2, p5

    const p4, 0x21409825

    .line 190
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1e

    aput-object p4, p2, p5

    const p4, 0x21409826

    .line 191
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x1f

    aput-object p4, p2, p5

    const p4, 0x21409827

    .line 192
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x20

    aput-object p4, p2, p5

    const p4, 0x21401036

    .line 193
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x21

    aput-object p4, p2, p5

    const p4, 0x21409828

    .line 194
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x22

    aput-object p4, p2, p5

    const p4, 0x21409829

    .line 195
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x23

    aput-object p4, p2, p5

    const p4, 0x2140982a

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x24

    aput-object p4, p2, p5

    const p4, 0x2140982b

    .line 197
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x25

    aput-object p4, p2, p5

    const p4, 0x2140982c

    .line 198
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x26

    aput-object p4, p2, p5

    const p4, 0x2140982d

    .line 199
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x27

    aput-object p4, p2, p5

    const p4, 0x2140982e

    .line 200
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x28

    aput-object p4, p2, p5

    const p4, 0x2140982f

    .line 201
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x29

    aput-object p4, p2, p5

    const p4, 0x21409830

    .line 202
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2a

    aput-object p4, p2, p5

    const p4, 0x21409831

    .line 203
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2b

    aput-object p4, p2, p5

    const p4, 0x21409832

    .line 204
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2c

    aput-object p4, p2, p5

    const p4, 0x21601225

    .line 205
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2d

    aput-object p4, p2, p5

    const p4, 0x21401217

    .line 206
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2e

    aput-object p4, p2, p5

    const p4, 0x2140123c

    .line 207
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x2f

    aput-object p4, p2, p5

    const p4, 0x21609833

    .line 208
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x30

    aput-object p4, p2, p5

    const p4, 0x21409834

    .line 209
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x31

    aput-object p4, p2, p5

    const p4, 0x21409835

    .line 210
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x32

    aput-object p4, p2, p5

    const p4, 0x21409836

    .line 211
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x33

    aput-object p4, p2, p5

    const p4, 0x21409837

    .line 212
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x34

    aput-object p4, p2, p5

    const p4, 0x21409838

    .line 213
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x35

    aput-object p4, p2, p5

    const p4, 0x21409839

    .line 214
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x36

    aput-object p4, p2, p5

    const p4, 0x2140983b

    .line 215
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x37

    aput-object p4, p2, p5

    const p4, 0x2140983c

    .line 216
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x38

    aput-object p4, p2, p5

    const p4, 0x2141983a

    .line 217
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x39

    aput-object p4, p2, p5

    const p4, 0x21409843

    .line 218
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3a

    aput-object p4, p2, p5

    const p4, 0x21409844

    .line 219
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3b

    aput-object p4, p2, p5

    const p4, 0x21419842

    .line 220
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3c

    aput-object p4, p2, p5

    const p4, 0x21419845

    .line 221
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3d

    aput-object p4, p2, p5

    const p4, 0x21419846

    .line 222
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3e

    aput-object p4, p2, p5

    const p4, 0x21409847

    .line 223
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x3f

    aput-object p4, p2, p5

    const p4, 0x21409848

    .line 224
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x40

    aput-object p4, p2, p5

    const p4, 0x21409849

    .line 225
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x41

    aput-object p4, p2, p5

    const p4, 0x2140984a

    .line 226
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x42

    aput-object p4, p2, p5

    const p4, 0x2140984b

    .line 227
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x43

    aput-object p4, p2, p5

    const p4, 0x2140984c

    .line 228
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x44

    aput-object p4, p2, p5

    const p4, 0x2140984d

    .line 229
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x45

    aput-object p4, p2, p5

    const p4, 0x214090e2

    .line 230
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x46

    aput-object p4, p2, p5

    const p4, 0x2140904e

    .line 231
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x47

    aput-object p4, p2, p5

    const p4, 0x2140983d

    .line 232
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x48

    aput-object p4, p2, p5

    const p4, 0x2140983e

    .line 233
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x49

    aput-object p4, p2, p5

    const p4, 0x2141983f

    .line 234
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4a

    aput-object p4, p2, p5

    const p4, 0x21419840

    .line 235
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4b

    aput-object p4, p2, p5

    const p4, 0x21709841

    .line 236
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4c

    aput-object p4, p2, p5

    const p4, 0x2140918f

    .line 237
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4d

    aput-object p4, p2, p5

    const p4, 0x21409190

    .line 238
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4e

    aput-object p4, p2, p5

    const p4, 0x21409191

    .line 239
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x4f

    aput-object p4, p2, p5

    const p4, 0x21409192

    .line 240
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x50

    aput-object p4, p2, p5

    const p4, 0x21409263

    .line 241
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x51

    aput-object p4, p2, p5

    const p4, 0x2140916a

    .line 242
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x52

    aput-object p4, p2, p5

    const p4, 0x2140984e

    .line 243
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x53

    aput-object p4, p2, p5

    const p4, 0x2140984f

    .line 244
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x54

    aput-object p4, p2, p5

    const p4, 0x21409850

    .line 245
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x55

    aput-object p4, p2, p5

    const p4, 0x21409851

    .line 246
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x56

    aput-object p4, p2, p5

    const p4, 0x21609852

    .line 247
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x57

    aput-object p4, p2, p5

    const p4, 0x21409853

    .line 248
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x58

    aput-object p4, p2, p5

    const p4, 0x21401218

    .line 249
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x59

    aput-object p4, p2, p5

    const p4, 0x21409854

    .line 250
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5a

    aput-object p4, p2, p5

    const p4, 0x21409855

    .line 251
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5b

    aput-object p4, p2, p5

    const p4, 0x21409856

    .line 252
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5c

    aput-object p4, p2, p5

    const p4, 0x21409857

    .line 253
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5d

    aput-object p4, p2, p5

    const p4, 0x21409858

    .line 254
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5e

    aput-object p4, p2, p5

    const p4, 0x21409859

    .line 255
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x5f

    aput-object p4, p2, p5

    const p4, 0x2140985a

    .line 256
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x60

    aput-object p4, p2, p5

    const p4, 0x2140985b

    .line 257
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x61

    aput-object p4, p2, p5

    const p4, 0x2140985c

    .line 258
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x62

    aput-object p4, p2, p5

    const p4, 0x2140985d

    .line 259
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x63

    aput-object p4, p2, p5

    const p4, 0x21401c64

    .line 260
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x64

    aput-object p4, p2, p5

    const p4, 0x2161985e

    .line 261
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x65

    aput-object p4, p2, p5

    const p4, 0x2161261c

    .line 262
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x66

    aput-object p4, p2, p5

    const p4, 0x2161985f

    .line 263
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x67

    aput-object p4, p2, p5

    const p4, 0x2161261d

    .line 264
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x68

    aput-object p4, p2, p5

    const p4, 0x21419860

    .line 265
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x69

    aput-object p4, p2, p5

    const p4, 0x21412649

    .line 266
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6a

    aput-object p4, p2, p5

    const p4, 0x21419861

    .line 267
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6b

    aput-object p4, p2, p5

    const p4, 0x2141264d

    .line 268
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6c

    aput-object p4, p2, p5

    const p4, 0x21409862

    .line 269
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6d

    aput-object p4, p2, p5

    const p4, 0x2140264f

    .line 270
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6e

    aput-object p4, p2, p5

    const p4, 0x21409863

    .line 271
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x6f

    aput-object p4, p2, p5

    const p4, 0x21409864

    .line 272
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x70

    aput-object p4, p2, p5

    const p4, 0x21409865

    .line 273
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x71

    aput-object p4, p2, p5

    const p4, 0x2141264a

    .line 274
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x72

    aput-object p4, p2, p5

    const p4, 0x2141264e

    .line 275
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x73

    aput-object p4, p2, p5

    const p4, 0x21402651

    .line 276
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x74

    aput-object p4, p2, p5

    const p4, 0x21402652

    .line 277
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x75

    aput-object p4, p2, p5

    const p4, 0x21409866

    .line 278
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x76

    aput-object p4, p2, p5

    const p4, 0x21409867

    .line 279
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x77

    aput-object p4, p2, p5

    const p4, 0x21401c09

    .line 280
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x78

    aput-object p4, p2, p5

    const p4, 0x2140266e

    .line 281
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x79

    aput-object p4, p2, p5

    const p4, 0x21409881

    .line 282
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x7a

    aput-object p4, p2, p5

    .line 159
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mASPropertyIds:Landroid/util/ArraySet;

    .line 444
    invoke-static {p3}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const/4 v4, 0x0

    const-string v5, "AutoDrivingManager"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    .line 449
    invoke-direct/range {v0 .. v5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->supportShmManager:Z

    .line 158
    new-instance p2, Landroid/util/ArraySet;

    const/16 p4, 0x7b

    new-array p4, p4, [Ljava/lang/Integer;

    const p5, 0x21709803

    .line 160
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, p1

    const p1, 0x21709804

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x1

    aput-object p1, p4, p5

    const p1, 0x21402601

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x2

    aput-object p1, p4, p6

    const p1, 0x2140260e

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x3

    aput-object p1, p4, p6

    const p1, 0x2140980b

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x4

    aput-object p1, p4, p6

    const p1, 0x214126ef

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x5

    aput-object p1, p4, p6

    const p1, 0x214126f0

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x6

    aput-object p1, p4, p6

    const p1, 0x214126f1

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x7

    aput-object p1, p4, p6

    const p1, 0x214126f2

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x8

    aput-object p1, p4, p6

    const p1, 0x214026fc

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x9

    aput-object p1, p4, p6

    const p1, 0x214026fd

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xa

    aput-object p1, p4, p6

    const p1, 0x21402603

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xb

    aput-object p1, p4, p6

    const p1, 0x21409813

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xc

    aput-object p1, p4, p6

    const p1, 0x21409814

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xd

    aput-object p1, p4, p6

    const p1, 0x21409815

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xe

    aput-object p1, p4, p6

    const p1, 0x21409816

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0xf

    aput-object p1, p4, p6

    const p1, 0x21409817

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x10

    aput-object p1, p4, p6

    const p1, 0x21409818

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x11

    aput-object p1, p4, p6

    const p1, 0x21409819

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x12

    aput-object p1, p4, p6

    const p1, 0x2141981a

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x13

    aput-object p1, p4, p6

    const p1, 0x2140981b

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x14

    aput-object p1, p4, p6

    const p1, 0x2140981c

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x15

    aput-object p1, p4, p6

    const p1, 0x2140981d

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x16

    aput-object p1, p4, p6

    const p1, 0x2141981e

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x17

    aput-object p1, p4, p6

    const p1, 0x2140981f

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x18

    aput-object p1, p4, p6

    const p1, 0x21409820

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x19

    aput-object p1, p4, p6

    const p1, 0x21409821

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1a

    aput-object p1, p4, p6

    const p1, 0x21409822

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1b

    aput-object p1, p4, p6

    const p1, 0x21409823

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1c

    aput-object p1, p4, p6

    const p1, 0x21409824

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1d

    aput-object p1, p4, p6

    const p1, 0x21409825

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1e

    aput-object p1, p4, p6

    const p1, 0x21409826

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x1f

    aput-object p1, p4, p6

    const p1, 0x21409827

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x20

    aput-object p1, p4, p6

    const p1, 0x21401036

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x21

    aput-object p1, p4, p6

    const p1, 0x21409828

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x22

    aput-object p1, p4, p6

    const p1, 0x21409829

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x23

    aput-object p1, p4, p6

    const p1, 0x2140982a

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x24

    aput-object p1, p4, p6

    const p1, 0x2140982b

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x25

    aput-object p1, p4, p6

    const p1, 0x2140982c

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x26

    aput-object p1, p4, p6

    const p1, 0x2140982d

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x27

    aput-object p1, p4, p6

    const p1, 0x2140982e

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x28

    aput-object p1, p4, p6

    const p1, 0x2140982f

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x29

    aput-object p1, p4, p6

    const p1, 0x21409830

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2a

    aput-object p1, p4, p6

    const p1, 0x21409831

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2b

    aput-object p1, p4, p6

    const p1, 0x21409832

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2c

    aput-object p1, p4, p6

    const p1, 0x21601225

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2d

    aput-object p1, p4, p6

    const p1, 0x21401217

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2e

    aput-object p1, p4, p6

    const p1, 0x2140123c

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x2f

    aput-object p1, p4, p6

    const p1, 0x21609833

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x30

    aput-object p1, p4, p6

    const p1, 0x21409834

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x31

    aput-object p1, p4, p6

    const p1, 0x21409835

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x32

    aput-object p1, p4, p6

    const p1, 0x21409836

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x33

    aput-object p1, p4, p6

    const p1, 0x21409837

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x34

    aput-object p1, p4, p6

    const p1, 0x21409838

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x35

    aput-object p1, p4, p6

    const p1, 0x21409839

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x36

    aput-object p1, p4, p6

    const p1, 0x2140983b

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x37

    aput-object p1, p4, p6

    const p1, 0x2140983c

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x38

    aput-object p1, p4, p6

    const p1, 0x2141983a

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x39

    aput-object p1, p4, p6

    const p1, 0x21409843

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3a

    aput-object p1, p4, p6

    const p1, 0x21409844

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3b

    aput-object p1, p4, p6

    const p1, 0x21419842

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3c

    aput-object p1, p4, p6

    const p1, 0x21419845

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3d

    aput-object p1, p4, p6

    const p1, 0x21419846

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3e

    aput-object p1, p4, p6

    const p1, 0x21409847

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x3f

    aput-object p1, p4, p6

    const p1, 0x21409848

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x40

    aput-object p1, p4, p6

    const p1, 0x21409849

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x41

    aput-object p1, p4, p6

    const p1, 0x2140984a

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x42

    aput-object p1, p4, p6

    const p1, 0x2140984b

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x43

    aput-object p1, p4, p6

    const p1, 0x2140984c

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x44

    aput-object p1, p4, p6

    const p1, 0x2140984d

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x45

    aput-object p1, p4, p6

    const p1, 0x214090e2

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x46

    aput-object p1, p4, p6

    const p1, 0x2140904e

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x47

    aput-object p1, p4, p6

    const p1, 0x2140983d

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x48

    aput-object p1, p4, p6

    const p1, 0x2140983e

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x49

    aput-object p1, p4, p6

    const p1, 0x2141983f

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4a

    aput-object p1, p4, p6

    const p1, 0x21419840

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4b

    aput-object p1, p4, p6

    const p1, 0x21709841

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4c

    aput-object p1, p4, p6

    const p1, 0x2140918f

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4d

    aput-object p1, p4, p6

    const p1, 0x21409190

    .line 238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4e

    aput-object p1, p4, p6

    const p1, 0x21409191

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x4f

    aput-object p1, p4, p6

    const p1, 0x21409192

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x50

    aput-object p1, p4, p6

    const p1, 0x21409263

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x51

    aput-object p1, p4, p6

    const p1, 0x2140916a

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x52

    aput-object p1, p4, p6

    const p1, 0x2140984e

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x53

    aput-object p1, p4, p6

    const p1, 0x2140984f

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x54

    aput-object p1, p4, p6

    const p1, 0x21409850

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x55

    aput-object p1, p4, p6

    const p1, 0x21409851

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x56

    aput-object p1, p4, p6

    const p1, 0x21609852

    .line 247
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x57

    aput-object p1, p4, p6

    const p1, 0x21409853

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x58

    aput-object p1, p4, p6

    const p1, 0x21401218

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x59

    aput-object p1, p4, p6

    const p1, 0x21409854

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5a

    aput-object p1, p4, p6

    const p1, 0x21409855

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5b

    aput-object p1, p4, p6

    const p1, 0x21409856

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5c

    aput-object p1, p4, p6

    const p1, 0x21409857

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5d

    aput-object p1, p4, p6

    const p1, 0x21409858

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5e

    aput-object p1, p4, p6

    const p1, 0x21409859

    .line 255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x5f

    aput-object p1, p4, p6

    const p1, 0x2140985a

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x60

    aput-object p1, p4, p6

    const p1, 0x2140985b

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x61

    aput-object p1, p4, p6

    const p1, 0x2140985c

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x62

    aput-object p1, p4, p6

    const p1, 0x2140985d

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x63

    aput-object p1, p4, p6

    const p1, 0x21401c64

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x64

    aput-object p1, p4, p6

    const p1, 0x2161985e

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x65

    aput-object p1, p4, p6

    const p1, 0x2161261c

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x66

    aput-object p1, p4, p6

    const p1, 0x2161985f

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x67

    aput-object p1, p4, p6

    const p1, 0x2161261d

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x68

    aput-object p1, p4, p6

    const p1, 0x21419860

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x69

    aput-object p1, p4, p6

    const p1, 0x21412649

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6a

    aput-object p1, p4, p6

    const p1, 0x21419861

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6b

    aput-object p1, p4, p6

    const p1, 0x2141264d

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6c

    aput-object p1, p4, p6

    const p1, 0x21409862

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6d

    aput-object p1, p4, p6

    const p1, 0x2140264f

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6e

    aput-object p1, p4, p6

    const p1, 0x21409863

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x6f

    aput-object p1, p4, p6

    const p1, 0x21409864

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x70

    aput-object p1, p4, p6

    const p1, 0x21409865

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x71

    aput-object p1, p4, p6

    const p1, 0x2141264a

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x72

    aput-object p1, p4, p6

    const p1, 0x2141264e

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x73

    aput-object p1, p4, p6

    const p1, 0x21402651

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x74

    aput-object p1, p4, p6

    const p1, 0x21402652

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x75

    aput-object p1, p4, p6

    const p1, 0x21409866

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x76

    aput-object p1, p4, p6

    const p1, 0x21409867

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x77

    aput-object p1, p4, p6

    const p1, 0x21401c09

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x78

    aput-object p1, p4, p6

    const p1, 0x2140266e

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x79

    aput-object p1, p4, p6

    const p1, 0x21409881

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p6, 0x7a

    aput-object p1, p4, p6

    .line 159
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mASPropertyIds:Landroid/util/ArraySet;

    .line 450
    invoke-static {p3}, Landroid/car/hardware/XpVehicle/IXpVehicle$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/XpVehicle/IXpVehicle;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    .line 451
    iput-boolean p5, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->supportShmManager:Z

    return-void
.end method


# virtual methods
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

    .line 464
    iget-object v0, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mASPropertyIds:Landroid/util/ArraySet;

    return-object v0
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

    .line 469
    sget-object v0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->mASSharedMemoryPropertyIds:Ljava/util/Set;

    return-object v0
.end method

.method public sendSharedMemoryData(I[B)V
    .locals 1

    .line 456
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->sendDataWithSharedMemory(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calling sendDataWithSharedMemory error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoDrivingManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected supportSharedMemoryManager()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Landroid/car/xpeng/autodriving/CarAutoDrivingManager;->supportShmManager:Z

    return v0
.end method
