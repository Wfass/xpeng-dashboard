.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;
.super Ljava/lang/Object;
.source "IAtlController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAtlAutoBrightSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract onAtlDoubleColorChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effectType",
            "first_color",
            "second_color"
        }
    .end annotation
.end method

.method public abstract onAtlDoubleColorEnableChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "enable"
        }
    .end annotation
.end method

.method public abstract onAtlEffectTypeChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract onAtlManualBrightChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract onAtlMonoColorChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "color"
        }
    .end annotation
.end method

.method public abstract onAtlRgbDoubleFirstColorChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first_color"
        }
    .end annotation
.end method

.method public abstract onAtlRgbDoubleSecondColorChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second_color"
        }
    .end annotation
.end method

.method public abstract onAtlSpeakerSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract onAtlSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method
