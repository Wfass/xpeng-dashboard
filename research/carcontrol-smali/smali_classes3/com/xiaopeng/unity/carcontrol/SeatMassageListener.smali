.class public interface abstract Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;
.super Ljava/lang/Object;
.source "SeatMassageListener.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/base/INapaListener;


# virtual methods
.method public abstract onMassagerStatusChange(ILjava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId",
            "intensity",
            "running"
        }
    .end annotation
.end method

.method public abstract onRhythmStatusChange(IIIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "intensity",
            "running"
        }
    .end annotation
.end method

.method public abstract onSeatLumbRelaxStatusChange(IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "running"
        }
    .end annotation
.end method
