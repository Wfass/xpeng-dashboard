.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager;
.super Ljava/lang/Object;
.source "HvacManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/hvac/HvacManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final BCM_HEAT_STATUS_LEVEL_1:I = 0x1

.field public static final BCM_HEAT_STATUS_LEVEL_2:I = 0x2

.field public static final BCM_HEAT_STATUS_LEVEL_3:I = 0x3

.field public static final BCM_HEAT_STATUS_OFF:I = 0x0

.field public static final HVAC_BLOW_WIND_MODE_FACE:I = 0x2

.field public static final HVAC_BLOW_WIND_MODE_FOOT:I = 0x3

.field public static final HVAC_BLOW_WIND_MODE_WINDSHIELD:I = 0x1

.field public static final HVAC_CIRCULATION_STATUS_AUTO:I = 0x6

.field public static final HVAC_CIRCULATION_STATUS_ERROR:I = 0x7

.field public static final HVAC_CIRCULATION_STATUS_INNER:I = 0x1

.field public static final HVAC_CIRCULATION_STATUS_OUTSIDE:I = 0x2

.field public static final HVAC_CODE_INVALID_FLOAT:F = 0.0f

.field public static final HVAC_CODE_INVALID_INT:I = 0x0

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

.field public static final HVAC_GET_BLOW_WIND_MODE_AUTOMODE:I = 0xe

.field public static final HVAC_GET_BLOW_WIND_MODE_AUTO_FDEFROST:I = 0x7

.field public static final HVAC_GET_BLOW_WIND_MODE_ERROR:I = 0xf

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE:I = 0x1

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_FOOT:I = 0x2

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_FOOT_WINDSHIELD:I = 0x9

.field public static final HVAC_GET_BLOW_WIND_MODE_FACE_WINDSHIELD:I = 0x8

.field public static final HVAC_GET_BLOW_WIND_MODE_FDEFROST:I = 0x5

.field public static final HVAC_GET_BLOW_WIND_MODE_FOOT:I = 0x3

.field public static final HVAC_GET_BLOW_WIND_MODE_FOOT_WINDSHIELD:I = 0x4

.field public static final HVAC_GET_BLOW_WIND_MODE_WINDSHIELD:I = 0x6

.field public static final HVAC_TEMP_MAX:F = 32.0f

.field public static final HVAC_TEMP_MIN:F = 18.0f

.field public static final HVAC_WINDCOLOR_COLD:I = 0x2

.field public static final HVAC_WINDCOLOR_ERROR:I = 0x7

.field public static final HVAC_WINDCOLOR_HOT:I = 0x3

.field public static final HVAC_WINDCOLOR_NATURE:I = 0x1

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

.field public static final HVAC_WIND_SPEED_OFF:I


# virtual methods
.method public abstract getAcHeatNatureMode()I
.end method

.method public abstract getHvacAcpConsumption()I
.end method

.method public abstract getHvacAirPurgeMode()Z
.end method

.method public abstract getHvacCirculationMode()I
.end method

.method public abstract getHvacDriverTemp()F
.end method

.method public abstract getHvacDrvSeatHeatLevel()I
.end method

.method public abstract getHvacDrvSeatVentLevel()I
.end method

.method public abstract getHvacEAVDriverLeftHPos()I
.end method

.method public abstract getHvacEAVDriverLeftVPos()I
.end method

.method public abstract getHvacEAVDriverRightHPos()I
.end method

.method public abstract getHvacEAVDriverRightVPos()I
.end method

.method public abstract getHvacEAVPsnLeftHPos()I
.end method

.method public abstract getHvacEAVPsnLeftVPos()I
.end method

.method public abstract getHvacEAVPsnRightHPos()I
.end method

.method public abstract getHvacEAVPsnRightVPos()I
.end method

.method public abstract getHvacExternalTemp()F
.end method

.method public abstract getHvacInnerPM25()I
.end method

.method public abstract getHvacInnerTemp()F
.end method

.method public abstract getHvacPsnSeatHeatLevel()I
.end method

.method public abstract getHvacPsnSeatVentLevel()I
.end method

.method public abstract getHvacPsnTemp()F
.end method

.method public abstract getHvacPtcConsumption()I
.end method

.method public abstract getHvacRLSeatHeatLevel()I
.end method

.method public abstract getHvacRLSeatVentLevel()I
.end method

.method public abstract getHvacRLTemp()F
.end method

.method public abstract getHvacRRSeatHeatLevel()I
.end method

.method public abstract getHvacRRSeatVentLevel()I
.end method

.method public abstract getHvacRRTemp()F
.end method

.method public abstract getHvacRearWindBlowMode()I
.end method

.method public abstract getHvacRearWindSpeedLevel()I
.end method

.method public abstract getHvacSecRowLeftWindHorPos()I
.end method

.method public abstract getHvacSecRowLeftWindVerPos()I
.end method

.method public abstract getHvacSecRowRightWindHorPos()I
.end method

.method public abstract getHvacSecRowRightWindVerPos()I
.end method

.method public abstract getHvacThirdRowWindBlowMode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHvacThirdTemp()F
.end method

.method public abstract getHvacWindBlowMode()I
.end method

.method public abstract getHvacWindModeColor()I
.end method

.method public abstract getHvacWindSpeedLevel()I
.end method

.method public abstract getSecRowLeftEavWindMode()I
.end method

.method public abstract getSecRowRightEavWindMode()I
.end method

.method public abstract getSecRowSweepWindMode()I
.end method

.method public abstract getSteerHeatLevel()I
.end method

.method public abstract isBackMirrorHeatEnabled()Z
.end method

.method public abstract isFrontMirrorHeatEnabled()Z
.end method

.method public abstract isHvacAcModeOn()Z
.end method

.method public abstract isHvacAutoMode()Z
.end method

.method public abstract isHvacDeodorantEnable()Z
.end method

.method public abstract isHvacDriverSyncMode()Z
.end method

.method public abstract isHvacFrontDefrostEnable()Z
.end method

.method public abstract isHvacNIVentOn()Z
.end method

.method public abstract isHvacPowerOn()Z
.end method

.method public abstract isHvacRapidCoolingEnable()Z
.end method

.method public abstract isHvacRapidHeatEnable()Z
.end method

.method public abstract isHvacRearAutoModeOn()Z
.end method

.method public abstract isHvacRearPowerModeOn()Z
.end method

.method public abstract isHvacTopVentOn()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSupportHvacDrvSeatHeat()Z
.end method

.method public abstract isSupportHvacDrvSeatVent()Z
.end method

.method public abstract isSupportHvacPsnSeatHeat()Z
.end method

.method public abstract isSupportHvacPsnSeatVent()Z
.end method

.method public abstract isSupportHvacRearSeatHeat()Z
.end method

.method public abstract isSupportHvacRearSeatVent()Z
.end method

.method public abstract isSupportHvacSteerHeat()Z
.end method

.method public abstract setAcHeatNatureMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setBackMirrorHeatEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFrontMirrorHeatEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacAcMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacAutoMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacCirculationMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setHvacDeodorantEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacDriverSyncMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacDrvSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacDrvSeatVentLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacDrvTempStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacEAVDriverLeftHPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVDriverLeftVPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVDriverRightHPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVDriverRightVPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVPsnLeftHPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVPsnLeftVPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVPsnRightHPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacEAVPsnRightVPosDirect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacFrontDefrostEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacNIVent(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacPower(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacPsnSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacPsnSeatVentLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacPsnTemp(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation
.end method

.method public abstract setHvacPsnTempStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacRLSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacRLSeatVentLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacRLTemp(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation
.end method

.method public abstract setHvacRLTempStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacRRSeatHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacRRSeatVentLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacRRTemp(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation
.end method

.method public abstract setHvacRRTempStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacRapidCoolingEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacRapidHeatEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacRearAutoMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacRearPowerMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setHvacRearWindBlowMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setHvacRearWindSpeedLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacRearWindSpeedStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacSecRowLeftWindHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacSecRowLeftWindVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacSecRowRightWindHorPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacSecRowRightWindVerPos(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method public abstract setHvacTempDriver(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation
.end method

.method public abstract setHvacThirdRowWindBlowMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHvacThirdTemp(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation
.end method

.method public abstract setHvacThirdTempStep(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation
.end method

.method public abstract setHvacTopVentOn()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHvacWindBlowMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setHvacWindSpeedDown()V
.end method

.method public abstract setHvacWindSpeedLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setHvacWindSpeedMax()V
.end method

.method public abstract setHvacWindSpeedMin()V
.end method

.method public abstract setHvacWindSpeedUp()V
.end method

.method public abstract setSecRowLeftEavWindMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSecRowRightEavWindMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSecRowSweepWindMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSteerHeatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method
