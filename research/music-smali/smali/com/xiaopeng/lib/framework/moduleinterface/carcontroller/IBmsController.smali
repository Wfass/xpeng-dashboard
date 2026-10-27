.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController;
.super Ljava/lang/Object;
.source "IBmsController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsConfigEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryMaximumVoltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryMinimumVoltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$ActualSocStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsDtcPageAndFbFltAtLowTemperatureEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$TemperatureMaxEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsBatteryTempUnbalEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsErrorNumberEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsBatteryStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsCfgAndCellCfgEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsPowerCellTemperatureAllEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsPowerCellVoltAllEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsDtcPageAndHvilFltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsIsoFltLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsCellVoltageUnbalEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsCellVoltageUnderLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsCellVoltageOverLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsBatteryVoltageUnderLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsBatteryVoltageOverLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsBatteryTemperatureOverLvlEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempUnbalEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$DcChargeStopReasonEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$DtcChargeCurrentOverEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$DtcErrorStopCurrentEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$ACMaxCurrentEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$DCVoltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$DCCurrentEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTotalVoltEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$InsulationStEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMinEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMaxEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMaxEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMinNumEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryTempMaxNumEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMinNumEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$CellVoltMaxNumEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BatteryCurrEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBmsController$BmsFailureLvlEventMsg;
    }
.end annotation


# static fields
.field public static final DC_CHARGE_STOP_REASON:I = 0x4

.field public static final DTC_CODE_ERROR:I = 0x3

.field public static final DTC_CODE_NORMAL:I


# virtual methods
.method public abstract getAcMaxCurrent()F
.end method

.method public abstract getActualSocStatus()F
.end method

.method public abstract getAddedElectricity()I
.end method

.method public abstract getBatteryCurrent()F
.end method

.method public abstract getBatteryMaximumVolt()F
.end method

.method public abstract getBatteryMinimumVolt()F
.end method

.method public abstract getBatteryTempUnbal()[I
.end method

.method public abstract getBatteryTotalVolt()I
.end method

.method public abstract getBmsBatteryStatus()I
.end method

.method public abstract getBmsBatteryTemperatureOverLvl()[I
.end method

.method public abstract getBmsBatteryVoltageOverLvl()[I
.end method

.method public abstract getBmsBatteryVoltageUnderLvl()[I
.end method

.method public abstract getBmsCellVoltageOverLvl()[I
.end method

.method public abstract getBmsCellVoltageUnderLvl()[I
.end method

.method public abstract getBmsCfgAndCellCfg()[I
.end method

.method public abstract getBmsConfig()I
.end method

.method public abstract getBmsDtcPageAndFbFltAtLowTemperature()[I
.end method

.method public abstract getBmsDtcPageAndHvilFlt()[I
.end method

.method public abstract getBmsErrorNumber()I
.end method

.method public abstract getBmsFailureLvl()I
.end method

.method public abstract getBmsIsoFltLvl()[I
.end method

.method public abstract getBmsPowerCellTemperatureAll()[B
.end method

.method public abstract getBmsPowerCellVoltAll()[B
.end method

.method public abstract getCellVoltageUnbal()I
.end method

.method public abstract getChargeMode()I
.end method

.method public abstract getDCCurrent()F
.end method

.method public abstract getDCVolt()F
.end method

.method public abstract getDcChargeStopReason()I
.end method

.method public abstract getDtcChargeCurrentOver()I
.end method

.method public abstract getDtcErrorStopCurrent()I
.end method

.method public abstract getInsulationResistance()I
.end method

.method public abstract getTempMax()F
.end method

.method public abstract getTempMaxNum()I
.end method

.method public abstract getTempMinNum()I
.end method

.method public abstract getTemperatureMax()F
.end method

.method public abstract getVoltMax()F
.end method

.method public abstract getVoltMaxNum()I
.end method

.method public abstract getVoltMin()F
.end method

.method public abstract getVoltMinNum()I
.end method
