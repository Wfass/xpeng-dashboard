.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "LocationSensor.java"


# instance fields
.field private latitude:F

.field private length:J

.field private longitude:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->latitude:F

    return v0
.end method

.method public getLength()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->length:J

    return-wide v0
.end method

.method public getLongitude()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->longitude:F

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 52
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLatitude(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->latitude:F

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->length:J

    return-void
.end method

.method public setLongitude(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/LocationSensor;->longitude:F

    return-void
.end method
