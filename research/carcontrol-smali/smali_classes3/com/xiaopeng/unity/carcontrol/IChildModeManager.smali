.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IChildModeManager;
.super Ljava/lang/Object;
.source "IChildModeManager.java"


# virtual methods
.method public abstract getLeftChildLockState()Z
.end method

.method public abstract getLeftDoorHotKeyState()Z
.end method

.method public abstract getRightChildLockState()Z
.end method

.method public abstract getRightDoorHotKeyState()Z
.end method

.method public abstract isChildModeEnable()Z
.end method

.method public abstract setChildModeEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLeftChildLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setLeftDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRightChildLock(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation
.end method

.method public abstract setRightDoorHotKey(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method
