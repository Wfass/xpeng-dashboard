.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager;
.super Ljava/lang/Object;
.source "WindowControlManager.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/IBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/WindowControlManager$ISignalCallback;
    }
.end annotation


# static fields
.field public static final WINDOW_CONTROL_CLOSED:I = 0x1

.field public static final WINDOW_CONTROL_OPEN:I = 0x0

.field public static final WINDOW_CONTROL_VENT:I = 0x2

.field public static final WINDOW_FL:I = 0x1

.field public static final WINDOW_FR:I = 0x2

.field public static final WINDOW_RL:I = 0x3

.field public static final WINDOW_RR:I = 0x4

.field public static final WINDOW_STATE_CLOSED:I = 0x3

.field public static final WINDOW_STATE_CLOSING:I = 0x2

.field public static final WINDOW_STATE_HALF_OPENED:I = 0x4

.field public static final WINDOW_STATE_OPENED:I = 0x1

.field public static final WINDOW_STATE_OPENING:I = 0x0

.field public static final WINDOW_STATE_VENT:I = 0x5


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
