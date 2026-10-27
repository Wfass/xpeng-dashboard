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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACAutoMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACAutoModeBlowLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACCirculationMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACEcon()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACFrontDefrostMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACInnerTemp()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACPowerMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACQualityInnerPM25Value()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACQualityOutsideLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACQualityOutsideStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACQualityPurgeMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACTempACMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACTempDriverValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACTempPsnValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACTempSyncMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACWindBlowMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHVACWindSpeedLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOutsideAirTemp()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getPtcError()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getTempPTCStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isError()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACAutoMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACAutoMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACAutoModeBlowLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACCirculationMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACCirculationMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACEcon(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACFrontDefrostMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACFrontDefrostMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACPowerMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHVACPowerMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACQualityPurgeMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACQualityPurgeMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempACMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempACMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempDriverDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempDriverDown(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempDriverUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempDriverUp(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempDriverValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempPsnDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempPsnDown(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempPsnUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempPsnUp(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempPsnValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempSyncMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACTempSyncMode(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindBlowMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindSpeedDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindSpeedDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindSpeedLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindSpeedUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setHVACWindSpeedUp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setTempPTCStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
