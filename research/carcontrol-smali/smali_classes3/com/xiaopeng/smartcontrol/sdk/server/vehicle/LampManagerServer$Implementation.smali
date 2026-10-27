.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer$Implementation;
.super Ljava/lang/Object;
.source "LampManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/LampManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


# virtual methods
.method public abstract getBrakeLightOnOff()Z
.end method

.method public abstract getDaytimeRunningLightsOutputStatus()I
.end method

.method public abstract getDomeLightSw()Z
.end method

.method public abstract getDoubleFlashBeamState()I
.end method

.method public abstract getHeadLampMode()I
.end method

.method public abstract getIhbState()I
.end method

.method public abstract getInnerPositionBeamStatus()I
.end method

.method public abstract getOuterPositionBeamStatus()I
.end method

.method public abstract getParkingLampStates()Ljava/lang/String;
.end method

.method public abstract getRearLogLightStatus()Z
.end method

.method public abstract getSaberMode()I
.end method

.method public abstract isHighBeamOn()Z
.end method

.method public abstract isLowBeamOn()Z
.end method

.method public abstract isPositionBeamOn()Z
.end method

.method public abstract isRearFogLampOn()Z
.end method

.method public abstract isReverseLampOn()Z
.end method

.method public abstract setDomeLightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setHeadLampMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setIhbSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setRearFogLamp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method
