.class public interface abstract Lcom/xiaopeng/unity/carcontrol/IWindowControlManager;
.super Ljava/lang/Object;
.source "IWindowControlManager.java"


# virtual methods
.method public abstract controlWindow(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getWindowPos(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation
.end method

.method public abstract isWindowLockActive()Z
.end method

.method public abstract setWindowLockActive(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setWindowPos(IF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "pos"
        }
    .end annotation
.end method
