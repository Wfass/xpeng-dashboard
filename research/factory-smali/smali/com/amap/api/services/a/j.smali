.class public Lcom/amap/api/services/a/j;
.super Lcom/amap/api/services/a/b;
.source "DistrictServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b<",
        "Lcom/amap/api/services/district/DistrictSearchQuery;",
        "Lcom/amap/api/services/district/DistrictResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/j;->d(Ljava/lang/String;)Lcom/amap/api/services/district/DistrictResult;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/district/DistrictResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lcom/amap/api/services/district/DistrictResult;

    iget-object v2, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/district/DistrictResult;-><init>(Lcom/amap/api/services/district/DistrictSearchQuery;Ljava/util/ArrayList;)V

    .line 59
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string p1, "count"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-virtual {v1, p1}, Lcom/amap/api/services/district/DistrictResult;->setPageCount(I)V

    .line 62
    const-string p1, "districts"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    return-object v1

    .line 66
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    const-string v0, "DistrictServerHandler"

    const-string v2, "paseJSONException"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :catch_1
    move-exception p1

    .line 69
    const-string v0, "DistrictServerHandler"

    const-string v2, "paseJSONJSONException"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    nop

    .line 75
    :goto_1
    return-object v1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 33
    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    const-string v1, "&showChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->isShowChild()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 35
    const-string v1, "&showbiz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->isShowBusinessArea()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 37
    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->isShowBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "&extensions=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "&extensions=base"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->checkKeyWords()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "&keywords="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->checkLevels()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "&level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/j;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->getKeywordsLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/j;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config/district?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
