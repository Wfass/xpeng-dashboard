.class public Lcom/amap/api/services/a/b;
.super Lcom/amap/api/services/a/h;
.source "ReverseGeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/h<",
        "Lcom/amap/api/services/geocoder/c;",
        "Lcom/amap/api/services/geocoder/RegeocodeAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/c;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/h;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected D(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;-><init>()V

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    const-string p1, "regeocode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    const-string v1, "formatted_address"

    invoke-static {p1, v1}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->aj(Ljava/lang/String;)V

    .line 41
    const-string v1, "addressComponent"

    .line 42
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    invoke-static {v1, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/amap/api/services/a/bs;->d(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->l(Ljava/util/List;)V

    .line 50
    const-string v1, "roads"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    invoke-static {v1, v0}, Lcom/amap/api/services/a/bs;->b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    .line 55
    :cond_2
    const-string v1, "roadinters"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    invoke-static {v1, v0}, Lcom/amap/api/services/a/bs;->a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    .line 59
    :cond_3
    const-string v1, "aois"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    invoke-static {p1, v0}, Lcom/amap/api/services/a/bs;->c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_4
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    const-string v1, "ReverseGeocodingHandler"

    const-string v2, "paseJSON"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-object v0
.end method

.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/b;->D(Ljava/lang/String;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p1

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&extensions=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/geocoder/c;

    .line 73
    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/c;->bK()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/geocoder/c;

    .line 74
    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/c;->bK()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/geocoder/c;

    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/c;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "&coordsys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/geocoder/c;

    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/c;->bL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/b;->ei:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/api/services/a/bq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/bq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/geocode/regeo?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
