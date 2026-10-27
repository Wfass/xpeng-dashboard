.class public Lcom/amap/api/services/district/DistrictSearch;
.super Ljava/lang/Object;
.source "DistrictSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IDistrictSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.DistrictSearchWrapper"

    const-class v4, Lcom/amap/api/services/a/am;

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

    check-cast v0, Lcom/amap/api/services/interfaces/IDistrictSearch;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/amap/api/services/a/am;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchDistrictAnsy()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAnsy()V

    .line 81
    :cond_0
    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IDistrictSearch;->searchDistrictAsyn()V

    .line 70
    :cond_0
    return-void
.end method

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearch;->a:Lcom/amap/api/services/interfaces/IDistrictSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistrictSearch;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    .line 56
    :cond_0
    return-void
.end method
