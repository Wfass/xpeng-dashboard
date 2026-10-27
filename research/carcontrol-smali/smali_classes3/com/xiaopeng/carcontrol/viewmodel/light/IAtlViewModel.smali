.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;
.super Ljava/lang/Object;
.source "IAtlViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# virtual methods
.method public abstract enterMeditationState()V
.end method

.method public abstract exitMeditationState()V
.end method

.method public abstract getAtlBrightnessValue()I
.end method

.method public abstract getAtlDualFirstColor()I
.end method

.method public abstract getAtlDualSecondColor()I
.end method

.method public abstract getAtlEffect()Ljava/lang/String;
.end method

.method public abstract getAtlSingleColor()I
.end method

.method public abstract getAtlThemeColorMode()Z
.end method

.method public abstract isAtlAutoBrightness()Z
.end method

.method public abstract isAtlEnabled()Z
.end method

.method public abstract isAtlSpeakerSwEnabled()Z
.end method

.method public abstract isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectType"
        }
    .end annotation
.end method

.method public abstract setAtlAutoBrightness(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlBrightnessValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlEffect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract setAtlSingleColor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract setAtlSingleColor(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlSingleColor(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlSpeakerSwEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlThemeColorMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDualColor"
        }
    .end annotation
.end method
