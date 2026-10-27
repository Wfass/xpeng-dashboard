.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;
.super Ljava/lang/Object;
.source "SeatLumbRelax.java"


# instance fields
.field private mode:I

.field private running:Z

.field private seatId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seatId",
            "mode",
            "running"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->mode:I

    .line 11
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->running:Z

    .line 12
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->seatId:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->mode:I

    return v0
.end method

.method public getSeatId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->seatId:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->running:Z

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 20
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->mode:I

    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "running"
        }
    .end annotation

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->running:Z

    return-void
.end method

.method public setSeatId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatId"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatLumbRelax;->seatId:I

    return-void
.end method
