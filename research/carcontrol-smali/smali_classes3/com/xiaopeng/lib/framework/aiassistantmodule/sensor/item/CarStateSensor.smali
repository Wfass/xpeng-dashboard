.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "CarStateSensor.java"


# instance fields
.field private acUsingTime:J

.field private circulationMode:I

.field private fogLampState:I

.field private gapTemperature:F

.field private gearDlevelTime:J

.field private gearPlevelTime:J

.field private hasControlWindow:Z

.field private headLampGroup:I

.field private insideTemp:F

.field private isACMode:Z

.field private isAllWindowClose:Z

.field private isHvacOpen:Z

.field private outsideTemp:F

.field private seatHeatUsingTime:J

.field private wasteACTime:J

.field private wiperIntermittentMode:I

.field private wiperUsingTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcUsingTime()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->acUsingTime:J

    return-wide v0
.end method

.method public getCirculationMode()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->circulationMode:I

    return v0
.end method

.method public getFogLampState()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->fogLampState:I

    return v0
.end method

.method public getGapTemperature()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gapTemperature:F

    return v0
.end method

.method public getGearDlevelTime()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gearDlevelTime:J

    return-wide v0
.end method

.method public getGearPlevelTime()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gearPlevelTime:J

    return-wide v0
.end method

.method public getHeadLampGroup()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->headLampGroup:I

    return v0
.end method

.method public getInsideTemp()F
    .locals 1

    .line 154
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->insideTemp:F

    return v0
.end method

.method public getOutsideTemp()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->outsideTemp:F

    return v0
.end method

.method public getSeatHeatUsingTime()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->seatHeatUsingTime:J

    return-wide v0
.end method

.method public getWasteACTime()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wasteACTime:J

    return-wide v0
.end method

.method public getWiperIntermittentMode()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wiperIntermittentMode:I

    return v0
.end method

.method public getWiperUsingTime()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wiperUsingTime:J

    return-wide v0
.end method

.method public isACMode()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isACMode:Z

    return v0
.end method

.method public isAllWindowClose()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isAllWindowClose:Z

    return v0
.end method

.method public isHasControlWindow()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->hasControlWindow:Z

    return v0
.end method

.method public isHvacOpen()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isHvacOpen:Z

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 243
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setACMode(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isACMode:Z

    return-void
.end method

.method public setAcUsingTime(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->acUsingTime:J

    return-void
.end method

.method public setAllWindowClose(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isAllWindowClose:Z

    return-void
.end method

.method public setCirculationMode(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->circulationMode:I

    return-void
.end method

.method public setFogLampState(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->fogLampState:I

    return-void
.end method

.method public setGapTemperature(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gapTemperature:F

    return-void
.end method

.method public setGearDlevelTime(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gearDlevelTime:J

    return-void
.end method

.method public setGearPlevelTime(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->gearPlevelTime:J

    return-void
.end method

.method public setHasControlWindow(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->hasControlWindow:Z

    return-void
.end method

.method public setHeadLampGroup(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->headLampGroup:I

    return-void
.end method

.method public setHvacOpen(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->isHvacOpen:Z

    return-void
.end method

.method public setInsideTemp(F)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->insideTemp:F

    return-void
.end method

.method public setOutsideTemp(F)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->outsideTemp:F

    return-void
.end method

.method public setSeatHeatUsingTime(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->seatHeatUsingTime:J

    return-void
.end method

.method public setWasteACTime(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wasteACTime:J

    return-void
.end method

.method public setWiperIntermittentMode(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wiperIntermittentMode:I

    return-void
.end method

.method public setWiperUsingTime(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CarStateSensor;->wiperUsingTime:J

    return-void
.end method
