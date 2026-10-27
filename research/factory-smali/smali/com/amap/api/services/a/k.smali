.class public Lcom/amap/api/services/a/k;
.super Lcom/amap/api/services/a/b;
.source "DriveRouteSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b<",
        "Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;",
        "Lcom/amap/api/services/route/DriveRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 16
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

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/k;->d(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/amap/api/services/a/n;->b(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;

    move-result-object p1

    .line 56
    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    const-string v1, "&origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 24
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getStartPoiID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const-string v1, "&originid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getStartPoiID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :cond_0
    const-string v1, "&destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 29
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getDestinationPoiID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const-string v1, "&destinationid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 32
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getDestinationPoiID()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_1
    const-string v1, "&strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v1, "&extensions=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hasPassPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v1, "&waypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getPassedPointStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hasAvoidpolygons()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    const-string v1, "&avoidpolygons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getAvoidpolygonsStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->hasAvoidRoad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    const-string v1, "&avoidroad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 45
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getAvoidRoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_4
    const-string v1, "&roadaggregation=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, "&output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/direction/driving?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
