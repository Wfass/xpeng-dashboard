.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager;
.super Ljava/lang/Object;
.source "LampManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/LampManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final DAY_LAMP_STATE_BOTH:I = 0x3

.field public static final DAY_LAMP_STATE_LEFT:I = 0x1

.field public static final DAY_LAMP_STATE_OFF:I = 0x0

.field public static final DAY_LAMP_STATE_RIGHT:I = 0x2

.field public static final HEAD_LAMP_MODE_AUTO:I = 0x3

.field public static final HEAD_LAMP_MODE_LOCATION:I = 0x1

.field public static final HEAD_LAMP_MODE_NEAR:I = 0x2

.field public static final HEAD_LAMP_MODE_OFF:I = 0x0

.field public static final IHB_STATE_FAULT:I = 0x2

.field public static final IHB_STATE_OFF:I = 0x0

.field public static final IHB_STATE_ON:I = 0x1

.field public static final TURN_LAMP_STATE_BOTH:I = 0x3

.field public static final TURN_LAMP_STATE_LEFT:I = 0x1

.field public static final TURN_LAMP_STATE_OFF:I = 0x0

.field public static final TURN_LAMP_STATE_RIGHT:I = 0x2


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
