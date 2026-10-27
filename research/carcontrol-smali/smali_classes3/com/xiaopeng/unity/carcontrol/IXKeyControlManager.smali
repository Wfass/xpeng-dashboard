.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IXKeyControlManager;
.super Ljava/lang/Object;
.source "IXKeyControlManager.java"


# virtual methods
.method public abstract getWheelKeyProtectSw()Z
.end method

.method public abstract getXKeyValue()I
.end method

.method public abstract setWheelKeyProtectSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setXKeyValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract showDoorKeySettingsPanel()V
.end method

.method public abstract showXKeySettingsPanel()V
.end method
