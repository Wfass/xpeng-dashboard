.class public Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;
.super Ljava/lang/Object;
.source "SeatRhythm.java"


# instance fields
.field private final index:I

.field private intensity:I

.field private mode:I

.field private running:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->index:I

    .line 13
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->mode:I

    .line 14
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->intensity:I

    .line 15
    iput-boolean p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->running:Z

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->index:I

    return v0
.end method

.method public getIntensity()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->intensity:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->mode:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->running:Z

    return v0
.end method

.method public setIntensity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intensity"
        }
    .end annotation

    .line 35
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->intensity:I

    return-void
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

    .line 27
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->mode:I

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

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->running:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeatRhythm{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->intensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
