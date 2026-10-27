.class public abstract Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;
.super Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;
.source "WeatherSensor.java"


# instance fields
.field private isFogType:Z

.field private isHazeType:Z

.field private isRainType:Z

.field private weatherType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/sensor/BaseSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeatherType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->weatherType:Ljava/lang/String;

    return-object v0
.end method

.method public isFogType()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isFogType:Z

    return v0
.end method

.method public isHazeType()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isHazeType:Z

    return v0
.end method

.method public isRainType()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isRainType:Z

    return v0
.end method

.method public sensorName()Ljava/lang/String;
    .locals 1

    .line 64
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFogType(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isFogType:Z

    return-void
.end method

.method public setHazeType(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isHazeType:Z

    return-void
.end method

.method public setRainType(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->isRainType:Z

    return-void
.end method

.method public setWeatherType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/sensor/item/WeatherSensor;->weatherType:Ljava/lang/String;

    return-void
.end method
