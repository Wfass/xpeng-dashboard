.class public Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "WeatherBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final TEMP_SUPREFIX:Ljava/lang/String; = "\u2103"


# instance fields
.field private mWeatherDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;",
            ">;"
        }
    .end annotation
.end field

.field private searchDay:Ljava/lang/String;

.field private today:Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static fromJsonObj(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "name"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weather"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 41
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "forecastChoose"

    .line 46
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 49
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setSearchDay(Ljava/lang/String;)V

    :cond_2
    const-string v3, "cityName"

    .line 56
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setTitle(Ljava/lang/String;)V

    const-string v3, "forecast"

    .line 58
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->getTodaySampleDataFormat()Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 66
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 67
    invoke-static {v5}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 68
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    invoke-virtual {v1, v5}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setToday(Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 73
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 76
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 82
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->getToday()Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setSearchDay(Ljava/lang/String;)V

    .line 88
    :cond_6
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setWeatherDatas(Ljava/util/List;)V

    return-object v1
.end method

.method private static getTodaySampleDataFormat()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;-><init>()V

    const-string v1, "predictDate"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setDate(Ljava/lang/String;)V

    const-string v1, "conditionDayNight"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setWeather(Ljava/lang/String;)V

    const-string v1, "conditionDay"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setConditionDay(Ljava/lang/String;)V

    const-string v1, "conditionNight"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setConditionNight(Ljava/lang/String;)V

    const-string v1, "tempDay"

    .line 109
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "tempNight"

    .line 110
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 111
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTempDay(I)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTempNight(I)V

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\u2103"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTemperature(Ljava/lang/String;)V

    const-string/jumbo v1, "windDirDay"

    .line 120
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setWind(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSearchDay()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->searchDay:Ljava/lang/String;

    return-object v0
.end method

.method public getToday()Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->today:Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    return-object v0
.end method

.method public getWeatherDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->mWeatherDatas:Ljava/util/List;

    return-object v0
.end method

.method public setSearchDay(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->searchDay:Ljava/lang/String;

    return-void
.end method

.method public setToday(Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->today:Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    return-void
.end method

.method public setWeatherDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->mWeatherDatas:Ljava/util/List;

    return-void
.end method
