.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/ac/ISpeechACQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechACQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getBCMBackDefrostMode()Z
.end method

.method public abstract getBCMBackMirrorHeatMode()Z
.end method

.method public abstract getBCMSeatBlowLevel()I
.end method

.method public abstract getBCMSeatHeatLevel()I
.end method

.method public abstract getHvacAutoMode()Z
.end method

.method public abstract getHvacAutoModeBlowLevel()I
.end method

.method public abstract getHvacCirculationMode()I
.end method

.method public abstract getHvacFrontDefrostMode()Z
.end method

.method public abstract getHvacInnerTemp()F
.end method

.method public getHvacOutterTemp()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getHvacPowerMode()Z
.end method

.method public abstract getHvacQualityInnerPM25Value()I
.end method

.method public abstract getHvacQualityOutsideLevel()I
.end method

.method public abstract getHvacQualityOutsideStatus()I
.end method

.method public abstract getHvacQualityPurgeMode()Z
.end method

.method public abstract getHvacTempDriverValue()F
.end method

.method public abstract getHvacTempPsnValue()F
.end method

.method public abstract getHvacTempSyncMode()Z
.end method

.method public abstract getHvacWindBlowMode()I
.end method

.method public abstract getHvacWindSpeedLevel()I
.end method

.method public abstract getPsnSeatHeatLv()I
.end method
