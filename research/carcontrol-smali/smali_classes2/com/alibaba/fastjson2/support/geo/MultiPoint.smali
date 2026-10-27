.class public Lcom/alibaba/fastjson2/support/geo/MultiPoint;
.super Lcom/alibaba/fastjson2/support/geo/Geometry;
.source "MultiPoint.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    orders = {
        "type",
        "bbox",
        "coordinates"
    }
    typeName = "MultiPoint"
.end annotation


# instance fields
.field private coordinates:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MultiPoint"

    .line 14
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoordinates()[[D
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/geo/MultiPoint;->coordinates:[[D

    return-object v0
.end method

.method public setCoordinates([[D)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/geo/MultiPoint;->coordinates:[[D

    return-void
.end method
