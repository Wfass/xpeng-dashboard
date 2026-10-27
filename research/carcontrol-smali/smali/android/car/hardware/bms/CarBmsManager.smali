.class public final Landroid/car/hardware/bms/CarBmsManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarBmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/bms/CarBmsManager$CarBmsEventCallback;,
        Landroid/car/hardware/bms/CarBmsManager$PropertyId;
    }
.end annotation


# static fields
.field public static final BMS_ABNORMAL_CHARGE_FLAG_ABNORMAL:I = 0x1

.field public static final BMS_ABNORMAL_CHARGE_FLAG_NORMAL:I = 0x0

.field public static final BMS_AC_CHG_STOP_REASON_BMS_ERR:I = 0x2

.field public static final BMS_AC_CHG_STOP_REASON_CCS_ABNORMAL:I = 0x3

.field public static final BMS_AC_CHG_STOP_REASON_CHARGE_FULL:I = 0x1

.field public static final BMS_AC_CHG_STOP_REASON_DEFAULT:I = 0x0

.field public static final BMS_BAT_CHRG_ST_ABNORMAL_STOP:I = 0x4

.field public static final BMS_BAT_CHRG_ST_CHARGE_FULL:I = 0x2

.field public static final BMS_BAT_CHRG_ST_CHARGING:I = 0x1

.field public static final BMS_BAT_CHRG_ST_DC_ERROR_STOP:I = 0x6

.field public static final BMS_BAT_CHRG_ST_DC_NORMAL_STOP:I = 0x5

.field public static final BMS_BAT_CHRG_ST_ERROR_STOP:I = 0x3

.field public static final BMS_BAT_CHRG_ST_IPU_ERR:I = 0x9

.field public static final BMS_BAT_CHRG_ST_NO_CHARGE:I = 0x0

.field public static final BMS_BAT_CHRG_ST_OBC_STOP:I = 0x8

.field public static final BMS_BAT_CHRG_ST_VCU_STOP:I = 0x7

.field public static final BMS_BAT_TYPE_LFP:I = 0x1

.field public static final BMS_BAT_TYPE_NCM:I = 0x0

.field public static final BMS_CHARGE_MODE_100_OHM_AC_CHG:I = 0x5

.field public static final BMS_CHARGE_MODE_1500_OHM_AC_CHG:I = 0x2

.field public static final BMS_CHARGE_MODE_220_OHM_AC_CHG:I = 0x4

.field public static final BMS_CHARGE_MODE_680_OHM_AC_CHG:I = 0x3

.field public static final BMS_CHARGE_MODE_AC_CHG_HALF_LINKING:I = 0x8

.field public static final BMS_CHARGE_MODE_CC2_ABNORMAL_VALUE:I = 0x9

.field public static final BMS_CHARGE_MODE_CC_ABNORMAL_VALUE:I = 0x1

.field public static final BMS_CHARGE_MODE_DC_CHG:I = 0x6

.field public static final BMS_CHARGE_MODE_MODE_COLLISION:I = 0xa

.field public static final BMS_CHARGE_MODE_NO_LINK:I = 0x0

.field public static final BMS_CHARGE_MODE_ONLYLINK_EVCC:I = 0xc

.field public static final BMS_CHARGE_MODE_SUPER_CHG:I = 0x7

.field public static final BMS_CHARGE_MODE_V2G_LINK:I = 0xe

.field public static final BMS_CHARGE_MODE_V2L_LINK:I = 0xb

.field public static final BMS_CHARGE_MODE_V2V_LINK:I = 0xd

.field public static final BMS_DC_CHG_STOP_REASON_BMS_ERR:I = 0x2

.field public static final BMS_DC_CHG_STOP_REASON_CHARGE_FULL:I = 0x1

.field public static final BMS_DC_CHG_STOP_REASON_DC_ERROR_STOP:I = 0x4

.field public static final BMS_DC_CHG_STOP_REASON_DC_NORMAL_STOP:I = 0x3

.field public static final BMS_DC_CHG_STOP_REASON_DEFAULT:I = 0x0

.field public static final BMS_DC_CHG_STOP_REASON_VCU_STOP:I = 0x5

.field public static final BMS_HIGHVOL_LOCK_CLOSED:I = 0x0

.field public static final BMS_HIGHVOL_LOCK_OPEN:I = 0x1

.field private static final DBG:Z = false

.field public static final DTC_CODE_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DTC_CODE_NORMAL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BMS_ABNORMAL_CHARGE_FLAG:I = 0x21402c1e

.field public static final ID_BMS_AC_CHG_STOP_REASON:I = 0x21402c19

.field public static final ID_BMS_AC_MAX_CURRENT:I = 0x21602c10

.field public static final ID_BMS_BATT_RES:I = 0x21402c0d

.field public static final ID_BMS_BATT_TEMP_MAX:I = 0x21402c09

.field public static final ID_BMS_BATT_TEMP_MAX_NUM:I = 0x21402c11

.field public static final ID_BMS_BATT_TEMP_MIN_NUM:I = 0x21402c02

.field public static final ID_BMS_BATT_VOLT:I = 0x21602c0f

.field public static final ID_BMS_BAT_CHRG_ST:I = 0x21402c17

.field public static final ID_BMS_BAT_TYPE:I = 0x21402c18

.field public static final ID_BMS_BAT_WATERTEMP:I = 0x21602c1a

.field public static final ID_BMS_CCS_OUT_CURRENT:I = 0x21602c0b

.field public static final ID_BMS_CCS_OUT_VOLT:I = 0x21602c0a

.field public static final ID_BMS_CELL_TEMP_MAX_NUM:I = 0x21602c14

.field public static final ID_BMS_CELL_TEMP_MIN_NUM:I = 0x21602c15

.field public static final ID_BMS_CELL_VOLT_MAX:I = 0x21602c12

.field public static final ID_BMS_CELL_VOLT_MAX_NUM:I = 0x21402c0c

.field public static final ID_BMS_CELL_VOLT_MIN:I = 0x21602c13

.field public static final ID_BMS_CELL_VOLT_MIN_NUM:I = 0x21402c01

.field public static final ID_BMS_CHARGE_HIGHVOL_LOCKST:I = 0x21402c1b

.field public static final ID_BMS_CHARGE_MODE:I = 0x21402c16

.field public static final ID_BMS_CURRENT:I = 0x21602c08

.field public static final ID_BMS_DC_CHG_CURT_OVER:I = 0x21402c06
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BMS_DC_CHG_STOP_REASON:I = 0x21402c07

.field public static final ID_BMS_DISCHARGE_HIGHVOL_LOCKST:I = 0x21402c1c

.field public static final ID_BMS_DTC_ERR_STOP_CURR:I = 0x21402c0e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_BMS_FAILURE_LVL:I = 0x21402c05

.field public static final ID_BMS_INSULATIVE_RESIST_VAL:I = 0x21402c1d

.field private static final TAG:Ljava/lang/String; = "CarBmsManager"


# instance fields
.field private final mBmsPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarBmsManager"

    .line 578
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 537
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x1c

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x21602c10

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21602c0f

    .line 538
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21602c0a

    .line 539
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21602c0b

    .line 540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21402c05

    .line 541
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21402c0c

    .line 542
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21402c01

    .line 543
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21402c11

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21402c02

    .line 545
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x21402c09

    .line 546
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x21602c12

    .line 547
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21602c13

    .line 548
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21402c0d

    .line 549
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21602c08

    .line 550
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21402c06

    .line 551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21402c07    # 6.51104E-19f

    .line 552
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21402c0e

    .line 553
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21602c14

    .line 554
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21602c15

    .line 555
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21402c16

    .line 556
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    const p3, 0x21402c17

    .line 557
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x14

    aput-object p3, p2, p4

    const p3, 0x21402c18

    .line 558
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x15

    aput-object p3, p2, p4

    const p3, 0x21402c19

    .line 559
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x16

    aput-object p3, p2, p4

    const p3, 0x21402c1d

    .line 560
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x17

    aput-object p3, p2, p4

    const p3, 0x21402c1c

    .line 561
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x18

    aput-object p3, p2, p4

    const p3, 0x21402c1b

    .line 562
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x19

    aput-object p3, p2, p4

    const p3, 0x21602c1a

    .line 563
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1a

    aput-object p3, p2, p4

    const p3, 0x21402c1e

    .line 564
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x1b

    aput-object p3, p2, p4

    .line 537
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/bms/CarBmsManager;->mBmsPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_bms"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAbnormalDischargeFlag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21402c1e

    const/4 v1, 0x0

    .line 1039
    invoke-virtual {p0, v0, v1}, Landroid/car/hardware/bms/CarBmsManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getAcChargeStopReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsAcChargeStopReason()I

    move-result v0

    return v0
.end method

.method public getAcMaxCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsAcMaxCurrent()F

    move-result v0

    return v0
.end method

.method public getBattOutWaterTempature()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBattOutWaterTempature()F

    move-result v0

    return v0
.end method

.method public getBatteryChargeStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsBatteryChargeStatus()I

    move-result v0

    return v0
.end method

.method public getBatteryCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsBatteryCurrent()F

    move-result v0

    return v0
.end method

.method public getBatteryTotalVolt()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsBatteryTotalVolt()F

    move-result v0

    return v0
.end method

.method public getBatteryType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsBatteryType()I

    move-result v0

    return v0
.end method

.method public getBmsCellTempMaxNum()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsCellTempMaxNum()F

    move-result v0

    return v0
.end method

.method public getBmsCellTempMinNum()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 880
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsCellTempMinNum()F

    move-result v0

    return v0
.end method

.method public getBmsFailureLvl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsFailureLvl()I

    move-result v0

    return v0
.end method

.method public getChargeHighVoltageLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getChargeHighVoltageLockState()I

    move-result v0

    return v0
.end method

.method public getChargeMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 909
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsChargeMode()I

    move-result v0

    return v0
.end method

.method public getDcChargeStopReason()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsDcChargeStopReason()I

    move-result v0

    return v0
.end method

.method public getDcCurrent()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsDcCurrent()F

    move-result v0

    return v0
.end method

.method public getDcVolt()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsDcVolt()F

    move-result v0

    return v0
.end method

.method public getDischargeHighVoltageLockState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDischargeHighVoltageLockState()I

    move-result v0

    return v0
.end method

.method public getDtcChargeCurrentOver()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsDtcChargeCurrentOver()I

    move-result v0

    return v0
.end method

.method public getDtcErrorStopCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsDtcErrorStopCurrent()I

    move-result v0

    return v0
.end method

.method public getInsulationResistance()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsInsulationResistance()I

    move-result v0

    return v0
.end method

.method public getInsulativeResistanceValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getInsulativeResistanceValue()I

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

    .line 601
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mBmsPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getTempMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsMaxTemp()I

    move-result v0

    return v0
.end method

.method public getTempMaxNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsHottestCellNum()I

    move-result v0

    return v0
.end method

.method public getTempMinNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsColdestCellNum()I

    move-result v0

    return v0
.end method

.method public getVoltMax()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsVoltMax()F

    move-result v0

    return v0
.end method

.method public getVoltMaxNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsVoltMaxNum()I

    move-result v0

    return v0
.end method

.method public getVoltMin()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsVoltMin()F

    move-result v0

    return v0
.end method

.method public getVoltMinNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/car/hardware/bms/CarBmsManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBmsVoltMinNum()I

    move-result v0

    return v0
.end method
