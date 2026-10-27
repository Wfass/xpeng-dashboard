.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer$Implementation;
.super Ljava/lang/Object;
.source "WindowControlManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/WindowControlManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


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
