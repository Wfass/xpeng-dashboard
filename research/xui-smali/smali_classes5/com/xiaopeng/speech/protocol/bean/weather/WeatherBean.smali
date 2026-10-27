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
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 33
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 34
    return-object v0

    .line 36
    :cond_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "widgetName":Ljava/lang/String;
    const-string v2, "weather"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    return-object v0

    .line 41
    :cond_1
    new-instance v2, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;

    invoke-direct {v2}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;-><init>()V

    .line 42
    .local v2, "weatherBean":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;
    nop

    .line 46
    .local v0, "searchDayWeather":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "forecastChoose"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    .local v4, "searchDayObject":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 50
    goto :goto_0

    .line 48
    .end local v4    # "searchDayObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 49
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setSearchDay(Ljava/lang/String;)V

    .line 56
    :cond_2
    const-string v4, "cityName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setTitle(Ljava/lang/String;)V

    .line 58
    const-string v4, "forecast"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 61
    .local v4, "weathers":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v5, "weatherDatas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;>;"
    invoke-static {}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->getTodaySampleDataFormat()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "todayFomatStr":Ljava/lang/String;
    nop

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 66
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 67
    .local v7, "object":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object v8

    .line 68
    .local v8, "weatherData":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    invoke-virtual {v2, v8}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setToday(Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;)V

    .line 72
    :cond_3
    if-eqz v8, :cond_4

    .line 73
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :cond_4
    goto :goto_2

    .line 75
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "weatherData":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    :catch_1
    move-exception v7

    .line 76
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 64
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "i":I
    :cond_5
    if-nez v0, :cond_6

    .line 82
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->getToday()Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    move-result-object v3

    .line 83
    .local v3, "today":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    if-eqz v3, :cond_6

    .line 84
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setSearchDay(Ljava/lang/String;)V

    .line 88
    .end local v3    # "today":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    :cond_6
    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->setWeatherDatas(Ljava/util/List;)V

    .line 89
    return-object v2
.end method

.method private static getTodaySampleDataFormat()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseWeathData(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    .locals 7
    .param p0, "beanObject"    # Lorg/json/JSONObject;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;-><init>()V

    .line 103
    .local v0, "weatherData":Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;
    const-string v1, "predictDate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setDate(Ljava/lang/String;)V

    .line 104
    const-string v1, "conditionDayNight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setWeather(Ljava/lang/String;)V

    .line 106
    const-string v1, "conditionDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setConditionDay(Ljava/lang/String;)V

    .line 107
    const-string v1, "conditionNight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setConditionNight(Ljava/lang/String;)V

    .line 109
    const-string v1, "tempDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "tempDay":I
    const-string v2, "tempNight"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "tempNight":I
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTempDay(I)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTempNight(I)V

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    .local v3, "min":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 116
    .local v4, "max":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v5, "tempBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u2103"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setTemperature(Ljava/lang/String;)V

    .line 120
    const-string v6, "windDirDay"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;->setWind(Ljava/lang/String;)V

    .line 121
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
    .param p1, "searchDay"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->searchDay:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setToday(Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;)V
    .locals 0
    .param p1, "today"    # Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->today:Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;

    .line 154
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
    .local p1, "mWeatherDatas":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean$WeatherData;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/weather/WeatherBean;->mWeatherDatas:Ljava/util/List;

    .line 172
    return-void
.end method
