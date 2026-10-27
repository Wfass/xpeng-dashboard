.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "BatterySensor.java"


# instance fields
.field private chargingGunStatus:I

.field private electricityPercent:F

.field private mileageNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargingGunStatus()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->chargingGunStatus:I

    return v0
.end method

.method public getElectricityPercent()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->electricityPercent:F

    return v0
.end method

.method public getMileageNumber()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->mileageNumber:I

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 51
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChargingGunStatus(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->chargingGunStatus:I

    return-void
.end method

.method public setElectricityPercent(F)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->electricityPercent:F

    return-void
.end method

.method public setMileageNumber(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/BatterySensor;->mileageNumber:I

    return-void
.end method
