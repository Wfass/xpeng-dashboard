.class public Lcom/alibaba/fastjson2/support/geo/GeometryCollection;
.super Lcom/alibaba/fastjson2/support/geo/Geometry;
.source "GeometryCollection.java"


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    orders = {
        "type",
        "bbox",
        "geometries"
    }
    typeName = "GeometryCollection"
.end annotation


# instance fields
.field private geometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/support/geo/Geometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GeometryCollection"

    .line 16
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/support/geo/Geometry;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/geo/GeometryCollection;->geometries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGeometries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/support/geo/Geometry;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/geo/GeometryCollection;->geometries:Ljava/util/List;

    return-object v0
.end method
