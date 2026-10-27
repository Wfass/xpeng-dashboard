.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController;
.super Ljava/lang/Object;
.source "IHVACController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempPTCStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$OutsideAirTempEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACEconEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACInnerTempEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityOutsideLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityOutsideStatusEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityInnerPM25ValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACQualityPurgeModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACWindSpeedLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACWindBlowModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACFrontDefrostModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACCirculationModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACAutoModeBlowLevelEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACAutoModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempPsnValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempDriverValueEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempSyncModEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACTempACModeEventMsg;,
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IHVACController$HVACPowerModeEventMsg;
    }
.end annotation


# virtual methods
.method public abstract getCompressorErrorInfo()[I
.end method

.method public abstract getHVACAutoMode()Z
.end method

.method public abstract getHVACAutoModeBlowLevel()I
.end method

.method public abstract getHVACCirculationMode()I
.end method

.method public abstract getHVACEcon()Z
.end method

.method public abstract getHVACFrontDefrostMode()Z
.end method

.method public abstract getHVACInnerTemp()F
.end method

.method public abstract getHVACPowerMode()Z
.end method

.method public abstract getHVACQualityInnerPM25Value()I
.end method

.method public abstract getHVACQualityOutsideLevel()I
.end method

.method public abstract getHVACQualityOutsideStatus()I
.end method

.method public abstract getHVACQualityPurgeMode()Z
.end method

.method public abstract getHVACTempACMode()Z
.end method

.method public abstract getHVACTempDriverValue()F
.end method

.method public abstract getHVACTempPsnValue()F
.end method

.method public abstract getHVACTempSyncMode()Z
.end method

.method public abstract getHVACWindBlowMode()I
.end method

.method public abstract getHVACWindSpeedLevel()I
.end method

.method public abstract getOutsideAirTemp()F
.end method

.method public abstract getPtcError()I
.end method

.method public abstract getTempPTCStatus()I
.end method

.method public abstract isError()Z
.end method

.method public abstract setHVACAutoMode()V
.end method

.method public abstract setHVACAutoMode(Z)V
.end method

.method public abstract setHVACAutoModeBlowLevel(I)V
.end method

.method public abstract setHVACCirculationMode()V
.end method

.method public abstract setHVACCirculationMode(I)V
.end method

.method public abstract setHVACEcon(Z)V
.end method

.method public abstract setHVACFrontDefrostMode()V
.end method

.method public abstract setHVACFrontDefrostMode(Z)V
.end method

.method public abstract setHVACPowerMode()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHVACPowerMode(Z)V
.end method

.method public abstract setHVACQualityPurgeMode()V
.end method

.method public abstract setHVACQualityPurgeMode(Z)V
.end method

.method public abstract setHVACTempACMode()V
.end method

.method public abstract setHVACTempACMode(Z)V
.end method

.method public abstract setHVACTempDriverDown()V
.end method

.method public abstract setHVACTempDriverDown(F)V
.end method

.method public abstract setHVACTempDriverUp()V
.end method

.method public abstract setHVACTempDriverUp(F)V
.end method

.method public abstract setHVACTempDriverValue(F)V
.end method

.method public abstract setHVACTempPsnDown()V
.end method

.method public abstract setHVACTempPsnDown(F)V
.end method

.method public abstract setHVACTempPsnUp()V
.end method

.method public abstract setHVACTempPsnUp(F)V
.end method

.method public abstract setHVACTempPsnValue(F)V
.end method

.method public abstract setHVACTempSyncMode()V
.end method

.method public abstract setHVACTempSyncMode(Z)V
.end method

.method public abstract setHVACWindBlowMode(I)V
.end method

.method public abstract setHVACWindSpeedDown()V
.end method

.method public abstract setHVACWindSpeedDown(I)V
.end method

.method public abstract setHVACWindSpeedLevel(I)V
.end method

.method public abstract setHVACWindSpeedUp()V
.end method

.method public abstract setHVACWindSpeedUp(I)V
.end method

.method public abstract setTempPTCStatus(I)V
.end method
