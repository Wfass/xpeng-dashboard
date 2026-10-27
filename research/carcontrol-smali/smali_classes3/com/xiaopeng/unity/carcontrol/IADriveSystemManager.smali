.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IADriveSystemManager;
.super Ljava/lang/Object;
.source "IADriveSystemManager.java"


# virtual methods
.method public abstract getBodyFaultIndicationSw()Ljava/lang/Boolean;
.end method

.method public abstract getDrivingRiskWarningSw()Ljava/lang/Boolean;
.end method

.method public abstract getGreenLightRemindStateSw()Ljava/lang/Boolean;
.end method

.method public abstract getStartRemindStateSw()Ljava/lang/Boolean;
.end method

.method public abstract setBodyFaultIndicationSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method public abstract setDrivingRiskWarningSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation
.end method

.method public abstract setGreenLightRemindStateSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseBoolean"
        }
    .end annotation
.end method

.method public abstract setStartRemindStateSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parseBoolean"
        }
    .end annotation
.end method
