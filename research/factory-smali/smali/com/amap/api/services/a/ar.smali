.class public Lcom/amap/api/services/a/ar;
.super Ljava/lang/Object;
.source "RouteSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IRouteSearch;


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ar;->c:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ar;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-object p0
.end method

.method private a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z
    .locals 2

    .line 235
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 236
    return v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ar;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amap/api/services/a/ar;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 126
    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object p1

    .line 133
    new-instance v0, Lcom/amap/api/services/a/c;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/c;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 135
    invoke-virtual {v0}, Lcom/amap/api/services/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusRouteResult;

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/amap/api/services/route/BusRouteResult;->setBusQuery(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 139
    :cond_0
    return-object v0

    .line 130
    :cond_1
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_2
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    const-string v0, "RouteSearch"

    const-string v1, "calculateBusRoute"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    throw p1
.end method

.method public calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/amap/api/services/a/ar$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ar$2;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 172
    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$2;->start()V

    .line 173
    return-void
.end method

.method public calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 185
    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object p1

    .line 192
    new-instance v0, Lcom/amap/api/services/a/k;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/k;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 194
    invoke-virtual {v0}, Lcom/amap/api/services/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DriveRouteResult;

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/amap/api/services/route/DriveRouteResult;->setDriveQuery(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 198
    :cond_0
    return-object v0

    .line 189
    :cond_1
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_2
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    move-exception p1

    .line 200
    const-string v0, "RouteSearch"

    const-string v1, "calculateDriveRoute"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    throw p1
.end method

.method public calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 1

    .line 211
    new-instance v0, Lcom/amap/api/services/a/ar$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ar$3;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 231
    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$3;->start()V

    .line 232
    return-void
.end method

.method public calculateRideRoute(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 281
    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    move-result-object p1

    .line 288
    new-instance v0, Lcom/amap/api/services/a/ab;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    .line 290
    invoke-virtual {v0}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RideRouteResult;

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/amap/api/services/route/RideRouteResult;->setRideQuery(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    .line 294
    :cond_0
    return-object v0

    .line 285
    :cond_1
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_2
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception p1

    .line 296
    const-string v0, "RouteSearch"

    const-string v1, "calculaterideRoute"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    throw p1
.end method

.method public calculateRideRouteAsyn(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V
    .locals 1

    .line 248
    new-instance v0, Lcom/amap/api/services/a/ar$4;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ar$4;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    .line 268
    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$4;->start()V

    .line 269
    return-void
.end method

.method public calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 67
    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ar;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/amap/api/services/a/ae;

    iget-object v1, p0, Lcom/amap/api/services/a/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/ae;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 76
    invoke-virtual {v0}, Lcom/amap/api/services/a/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkRouteResult;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/amap/api/services/route/WalkRouteResult;->setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 80
    :cond_0
    return-object v0

    .line 71
    :cond_1
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    const-string v0, "RouteSearch"

    const-string v1, "calculateWalkRoute"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    throw p1
.end method

.method public calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/amap/api/services/a/ar$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ar$1;-><init>(Lcom/amap/api/services/a/ar;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 113
    invoke-virtual {v0}, Lcom/amap/api/services/a/ar$1;->start()V

    .line 114
    return-void
.end method

.method public setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amap/api/services/a/ar;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    .line 55
    return-void
.end method
