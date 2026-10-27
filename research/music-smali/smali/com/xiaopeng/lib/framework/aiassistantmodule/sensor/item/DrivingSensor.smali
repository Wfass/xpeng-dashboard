.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "DrivingSensor.java"


# instance fields
.field private carSpeed:F

.field private drivingMode:I

.field private drivingTime:I

.field private energyRecycleLevel:I

.field private gearLevel:I

.field private lastStartUpMileage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarSpeed()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->carSpeed:F

    return v0
.end method

.method public getDrivingMode()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->drivingMode:I

    return v0
.end method

.method public getDrivingTime()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->drivingTime:I

    return v0
.end method

.method public getEnergyRecycleLevel()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->energyRecycleLevel:I

    return v0
.end method

.method public getGearLevel()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->gearLevel:I

    return v0
.end method

.method public getLastStartUpMileage()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->lastStartUpMileage:F

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 90
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCarSpeed(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->carSpeed:F

    return-void
.end method

.method public setDrivingMode(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->drivingMode:I

    return-void
.end method

.method public setDrivingTime(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->drivingTime:I

    return-void
.end method

.method public setEnergyRecycleLevel(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->energyRecycleLevel:I

    return-void
.end method

.method public setGearLevel(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->gearLevel:I

    return-void
.end method

.method public setLastStartUpMileage(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/DrivingSensor;->lastStartUpMileage:F

    return-void
.end method
