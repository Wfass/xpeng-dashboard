.class public Lcom/amap/api/services/poisearch/PoiSearch;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;,
        Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;,
        Lcom/amap/api/services/poisearch/PoiSearch$Query;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IPoiSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    .line 48
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v2

    const-string v3, "com.amap.api.services.dynamic.PoiSearchWrapper"

    const-class v4, Lcom/amap/api/services/a/ap;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    aput-object v6, v5, v0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object p2, v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/amap/api/services/a/ce;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IPoiSearch;

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/amap/api/services/a/ap;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ap;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/amap/api/services/poisearch/PoiSearch;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 731
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 732
    const/4 p0, 0x1

    return p0

    .line 734
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 735
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 737
    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPOIAsyn()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIAsyn()V

    .line 124
    :cond_0
    return-void
.end method

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    .line 138
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIIdAsyn(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setLanguage(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 163
    :cond_0
    return-void
.end method
