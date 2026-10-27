.class public Lcom/alibaba/fastjson/support/geo/Point;
.super Lcom/alibaba/fastjson/support/geo/Geometry;
.source "Point.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson/annotation/JSONType;
    orders = {
        "type",
        "bbox",
        "coordinates"
    }
    typeName = "Point"
.end annotation


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const-string v0, "Point"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCoordinates()[D
    .locals 4

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [D

    iget-wide v1, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lcom/alibaba/fastjson/support/geo/Point;->latitude:D

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getLatitude()D
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 45
    iget-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 40
    iget-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    return-wide v0
.end method

.method public setCoordinates([D)V
    .locals 3
    .param p1, "coordinates"    # [D

    .line 23
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 30
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    .line 31
    return-void

    .line 34
    :cond_1
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    .line 35
    aget-wide v0, p1, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->latitude:D

    .line 36
    return-void

    .line 24
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    .line 25
    iput-wide v0, p0, Lcom/alibaba/fastjson/support/geo/Point;->latitude:D

    .line 26
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation

    .line 55
    iput-wide p1, p0, Lcom/alibaba/fastjson/support/geo/Point;->latitude:D

    .line 56
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation

    .line 50
    iput-wide p1, p0, Lcom/alibaba/fastjson/support/geo/Point;->longitude:D

    .line 51
    return-void
.end method
