.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "CarFaultSensor.java"


# instance fields
.field private frontCollisionSecurity:I

.field private longCtrlRemind:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrontCollisionSecurity()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;->frontCollisionSecurity:I

    return v0
.end method

.method public getLongCtrlRemind()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;->longCtrlRemind:I

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 38
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFrontCollisionSecurity(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;->frontCollisionSecurity:I

    return-void
.end method

.method public setLongCtrlRemind(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarFaultSensor;->longCtrlRemind:I

    return-void
.end method
