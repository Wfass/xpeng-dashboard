.class public Lcom/amap/api/services/a/af;
.super Lcom/amap/api/services/a/ah;
.source "WeatherForecastHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/ah<",
        "Lcom/amap/api/services/weather/WeatherSearchQuery;",
        "Lcom/amap/api/services/weather/LocalWeatherForecast;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/amap/api/services/weather/LocalWeatherForecast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/weather/WeatherSearchQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/ah;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-direct {p1}, Lcom/amap/api/services/weather/LocalWeatherForecast;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/a/af;->h:Lcom/amap/api/services/weather/LocalWeatherForecast;

    .line 15
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/af;->d(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/amap/api/services/a/n;->e(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/af;->h:Lcom/amap/api/services/weather/LocalWeatherForecast;

    .line 33
    iget-object p1, p0, Lcom/amap/api/services/a/af;->h:Lcom/amap/api/services/weather/LocalWeatherForecast;

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget-object v1, p0, Lcom/amap/api/services/a/af;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/weather/WeatherSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/weather/WeatherSearchQuery;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "&city="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_0
    const-string v1, "&extensions=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/af;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/amap/api/services/a/ah;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
