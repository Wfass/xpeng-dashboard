.class public Lcom/amap/api/services/busline/BusLineSearch;
.super Ljava/lang/Object;
.source "BusLineSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IBusLineSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    .line 27
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.BusLineSearchWrapper"

    const-class v4, Lcom/amap/api/services/a/aj;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/amap/api/services/busline/BusLineQuery;

    aput-object v6, v5, v0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/amap/api/services/a/ce;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IBusLineSearch;

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/amap/api/services/a/aj;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/aj;-><init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->getQuery()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchBusLineAsyn()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->searchBusLineAsyn()V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusLineSearch;->setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusLineSearch;->setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V

    .line 82
    :cond_0
    return-void
.end method
