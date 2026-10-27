.class public Lcom/amap/api/services/geocoder/RegeocodeQuery;
.super Ljava/lang/Object;
.source "RegeocodeQuery.java"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "autonavi"

    iput-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 23
    iput p2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    .line 24
    invoke-virtual {p0, p3}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->setLatLonType(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 108
    return v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 110
    return v1

    .line 111
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 112
    return v1

    .line 113
    :cond_2
    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    .line 114
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 115
    iget-object v2, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 116
    return v1

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    return v1

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_5

    .line 120
    iget-object v2, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_6

    .line 121
    return v1

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 123
    return v1

    .line 124
    :cond_6
    iget v2, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_7

    .line 125
    return v1

    .line 126
    :cond_7
    return v0
.end method

.method public getLatLonType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 90
    nop

    .line 91
    nop

    .line 92
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    move v0, v1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 94
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 95
    mul-int/2addr v2, v0

    iget v0, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    .line 96
    return v2
.end method

.method public setLatLonType(Ljava/lang/String;)V
    .locals 1

    .line 78
    if-eqz p1, :cond_1

    const-string v0, "autonavi"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->c:Ljava/lang/String;

    .line 83
    :cond_1
    return-void
.end method

.method public setPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 43
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/amap/api/services/geocoder/RegeocodeQuery;->b:F

    .line 61
    return-void
.end method
