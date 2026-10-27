.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "CalendarSensor.java"


# instance fields
.field private date:I

.field private hour:I

.field private isWeek:Z

.field private minute:I

.field private mouth:I

.field private second:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->date:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->minute:I

    return v0
.end method

.method public getMouth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->mouth:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->second:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->year:I

    return v0
.end method

.method public isWeek()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->isWeek:Z

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 75
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDate(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->date:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->minute:I

    return-void
.end method

.method public setMouth(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->mouth:I

    return-void
.end method

.method public setSecond(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->second:I

    return-void
.end method

.method public setWeek(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->isWeek:Z

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/CalendarSensor;->year:I

    return-void
.end method
