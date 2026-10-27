.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;
.super Ljava/lang/Object;
.source "ICiuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final SETTING_BRIGHTNESS_MODE_DISABLE:I = 0x0

.field public static final SETTING_BRIGHTNESS_MODE_ENABLE:I = 0x1

.field public static final SETTING_KEY_SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"


# virtual methods
.method public abstract isCiuExist()Z
.end method

.method public abstract isDistractSwEnabled()Z
.end method

.method public abstract isDmsSwEnabled()Z
.end method

.method public abstract isFaceIdSwEnabled()Z
.end method

.method public abstract isFatigueSwEnabled()Z
.end method

.method public abstract setDistractSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDmsSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFaceIdSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFatigueSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
