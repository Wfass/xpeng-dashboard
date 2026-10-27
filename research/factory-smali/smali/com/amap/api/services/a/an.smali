.class public final Lcom/amap/api/services/a/an;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IGeocodeSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/an;->a:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/an;->c:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/services/a/an;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amap/api/services/a/an;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 80
    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Lcom/amap/api/services/a/aa;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/aa;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 85
    invoke-virtual {v0}, Lcom/amap/api/services/a/aa;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const-string v0, "GeocodeSearch"

    const-string v1, "getFromLocationAsyn"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/an$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/an$1;-><init>(Lcom/amap/api/services/a/an;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 2
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

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/an;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 103
    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcom/amap/api/services/a/l;

    iget-object v1, p0, Lcom/amap/api/services/a/an;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/l;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 107
    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    const-string v0, "GeocodeSearch"

    const-string v1, "getFromLocationName"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method public getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/an$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/an$2;-><init>(Lcom/amap/api/services/a/an;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method public setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amap/api/services/a/an;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 122
    return-void
.end method
