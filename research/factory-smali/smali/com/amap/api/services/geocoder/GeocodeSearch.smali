.class public final Lcom/amap/api/services/geocoder/GeocodeSearch;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    }
.end annotation


# static fields
.field public static final AMAP:Ljava/lang/String; = "autonavi"

.field public static final GPS:Ljava/lang/String; = "gps"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IGeocodeSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.GeocodeSearchWrapper"

    const-class v4, Lcom/amap/api/services/a/an;

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/services/a/ce;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IGeocodeSearch;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/amap/api/services/a/an;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 108
    :cond_0
    return-void
.end method

.method public getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Lcom/amap/api/services/interfaces/IGeocodeSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IGeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    .line 96
    :cond_0
    return-void
.end method
