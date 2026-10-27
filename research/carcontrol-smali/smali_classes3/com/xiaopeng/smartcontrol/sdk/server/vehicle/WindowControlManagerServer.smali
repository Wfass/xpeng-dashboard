.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;
.super Ljava/lang/Object;
.source "WindowControlManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer$Implementation;
    }
.end annotation


# virtual methods
.method public abstract onWindowLockStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract onWindowPosChanged(IF)V
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

.method public abstract onWindowStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
