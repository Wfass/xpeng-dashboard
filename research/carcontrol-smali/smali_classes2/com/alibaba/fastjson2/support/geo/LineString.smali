.class public Lcom/alibaba/fastjson2/support/geo/LineString;
.super Lcom/alibaba/fastjson2/support/geo/Geometry;
.source "LineString.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    orders = {
        "type",
        "bbox",
        "coordinates"
    }
    typeName = "LineString"
.end annotation


# instance fields
.field private coordinates:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LineString"

    .line 14
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoordinates()[[D
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/geo/LineString;->coordinates:[[D

    return-object v0
.end method

.method public setCoordinates([[D)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/geo/LineString;->coordinates:[[D

    return-void
.end method
