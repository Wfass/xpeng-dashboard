.class public Lcom/amap/api/services/a/c;
.super Lcom/amap/api/services/a/b;
.source "BusRouteSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b<",
        "Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;",
        "Lcom/amap/api/services/route/BusRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/c;->d(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/amap/api/services/a/n;->a(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;

    move-result-object p1

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    const-string v1, "&origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    .line 23
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    const-string v1, "&destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    .line 25
    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    iget-object v1, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "&city="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getCity()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "&cityd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_1
    const-string v1, "&strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, "&nightflag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getNightFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, "&extensions=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v1, "&output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/direction/transit/integrated?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
