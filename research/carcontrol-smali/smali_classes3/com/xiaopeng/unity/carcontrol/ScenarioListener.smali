.class public interface abstract Lcom/xiaopeng/unity/carcontrol/ScenarioListener;
.super Ljava/lang/Object;
.source "ScenarioListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract onCinemaModeEnd(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation
.end method

.method public abstract onCinemaModeStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract onMeditationModeEnd(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation
.end method

.method public abstract onMeditationModeStart(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation
.end method

.method public abstract onRescueModeEnd()V
.end method

.method public abstract onRescueModeStart()V
.end method

.method public abstract onSleepModeEnd(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation
.end method

.method public abstract onSleepModeStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract onViceMeditationModeEnd(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation
.end method

.method public abstract onViceMeditationModeStart(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchMode"
        }
    .end annotation
.end method

.method public abstract onVipSeatModeEnd(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notGearP"
        }
    .end annotation
.end method

.method public abstract onVipSeatModeStart(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVoiceSource"
        }
    .end annotation
.end method
