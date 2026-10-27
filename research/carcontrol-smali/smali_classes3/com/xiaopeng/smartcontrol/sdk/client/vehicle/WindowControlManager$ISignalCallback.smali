.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;
.super Ljava/lang/Object;
.source "WindowControlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager$IBaseSignalReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISignalCallback"
.end annotation


# virtual methods
.method public onWindowLockStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    return-void
.end method

.method public onWindowPosChanged(IF)V
    .locals 0
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

    return-void
.end method

.method public onWindowStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method
