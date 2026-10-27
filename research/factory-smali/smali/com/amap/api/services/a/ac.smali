.class public Lcom/amap/api/services/a/ac;
.super Lcom/amap/api/services/a/b;
.source "RoutePOISearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b<",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 23
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

    .line 20
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/ac;->d(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Lcom/amap/api/services/a/n;->w(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    move-object p1, v0

    :goto_0
    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    iget-object v1, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;-><init>(Ljava/util/ArrayList;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 4

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/ac;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, "&origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const-string v1, "&destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v1, "&range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getRange()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, ""

    .line 34
    :try_start_0
    sget-object v2, Lcom/amap/api/services/a/ac$1;->a:[I

    iget-object v3, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v3, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 45
    :pswitch_0
    const-string v2, "2003"

    .line 46
    goto :goto_0

    .line 42
    :pswitch_1
    const-string v2, "1603"

    .line 43
    goto :goto_0

    .line 39
    :pswitch_2
    const-string v2, "0300"

    .line 40
    goto :goto_0

    .line 36
    :pswitch_3
    const-string v2, "0101"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    nop

    .line 52
    :goto_0
    move-object v1, v2

    :goto_1
    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    .line 53
    :goto_2
    const-string v2, "&types="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "&strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/ac;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/place/route?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
