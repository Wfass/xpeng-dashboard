.class public Lcom/amap/api/services/routepoisearch/RoutePOISearch;
.super Ljava/lang/Object;
.source "RoutePOISearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;,
        Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    }
.end annotation


# static fields
.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingNoExpressways:I = 0x3

.field public static final DrivingNoHighAvoidCongestionSaveMoney:I = 0x9

.field public static final DrivingNoHighWay:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x7

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingShortDistance:I = 0x2


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IRoutePOISearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.RoutePOISearchWrapper"

    const-class v4, Lcom/amap/api/services/a/aq;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    aput-object v6, v5, v0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/amap/api/services/a/ce;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IRoutePOISearch;

    iput-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/amap/api/services/a/aq;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/aq;-><init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchRoutePOIAsyn()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->searchRoutePOIAsyn()V

    .line 143
    :cond_0
    return-void
.end method

.method public setPoiSearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->setRoutePOISearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch;->a:Lcom/amap/api/services/interfaces/IRoutePOISearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IRoutePOISearch;->setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    .line 132
    :cond_0
    return-void
.end method
