.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "SeatSensor.java"


# instance fields
.field private electricSeatBelt:Z

.field private hasBlowFunction:Z

.field private hasHeatFunction:Z

.field private seatBlowLevel:I

.field private seatHeatLevel:I

.field private seatState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeatBlowLevel()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatBlowLevel:I

    return v0
.end method

.method public getSeatHeatLevel()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatHeatLevel:I

    return v0
.end method

.method public getSeatState()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatState:I

    return v0
.end method

.method public isElectricSeatBelt()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->electricSeatBelt:Z

    return v0
.end method

.method public isHasBlowFunction()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->hasBlowFunction:Z

    return v0
.end method

.method public isHasHeatFunction()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->hasHeatFunction:Z

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 90
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setElectricSeatBelt(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->electricSeatBelt:Z

    return-void
.end method

.method public setHasBlowFunction(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->hasBlowFunction:Z

    return-void
.end method

.method public setHasHeatFunction(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->hasHeatFunction:Z

    return-void
.end method

.method public setSeatBlowLevel(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatBlowLevel:I

    return-void
.end method

.method public setSeatHeatLevel(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatHeatLevel:I

    return-void
.end method

.method public setSeatState(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/SeatSensor;->seatState:I

    return-void
.end method
