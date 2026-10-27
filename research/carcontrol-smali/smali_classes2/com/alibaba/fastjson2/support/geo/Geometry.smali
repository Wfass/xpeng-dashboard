.class public abstract Lcom/alibaba/fastjson2/support/geo/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    seeAlso = {
        Lcom/alibaba/fastjson2/support/geo/GeometryCollection;,
        Lcom/alibaba/fastjson2/support/geo/LineString;,
        Lcom/alibaba/fastjson2/support/geo/MultiLineString;,
        Lcom/alibaba/fastjson2/support/geo/Point;,
        Lcom/alibaba/fastjson2/support/geo/MultiPoint;,
        Lcom/alibaba/fastjson2/support/geo/Polygon;,
        Lcom/alibaba/fastjson2/support/geo/MultiPolygon;,
        Lcom/alibaba/fastjson2/support/geo/Feature;,
        Lcom/alibaba/fastjson2/support/geo/FeatureCollection;
    }
    typeKey = "type"
.end annotation


# instance fields
.field private bbox:[D

.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/geo/Geometry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBbox()[D
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/geo/Geometry;->bbox:[D

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/geo/Geometry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBbox([D)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/geo/Geometry;->bbox:[D

    return-void
.end method
