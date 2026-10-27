.class public Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
.super Ljava/lang/Object;
.source "WeatherBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherData"
.end annotation


# instance fields
.field private conditionDay:Ljava/lang/String;

.field private conditionNight:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private tempDay:I

.field private tempNight:I

.field private temperature:Ljava/lang/String;

.field private weather:Ljava/lang/String;

.field private wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConditionDay()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->conditionDay:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionNight()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->conditionNight:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTempDay()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->tempDay:I

    return v0
.end method

.method public getTempNight()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->tempNight:I

    return v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->wind:Ljava/lang/String;

    return-object v0
.end method

.method public setConditionDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditionDay"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->conditionDay:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setConditionNight(Ljava/lang/String;)V
    .locals 0
    .param p1, "conditionNight"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->conditionNight:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->date:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setTempDay(I)V
    .locals 0
    .param p1, "tempDay"    # I

    .line 207
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->tempDay:I

    .line 208
    return-void
.end method

.method public setTempNight(I)V
    .locals 0
    .param p1, "tempNight"    # I

    .line 215
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->tempNight:I

    .line 216
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0
    .param p1, "temperature"    # Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->temperature:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0
    .param p1, "weather"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->weather:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0
    .param p1, "wind"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->wind:Ljava/lang/String;

    .line 252
    return-void
.end method
