.class public Lcom/amap/api/services/a/g;
.super Lcom/amap/api/services/a/e;
.source "CloudSearchKeywordsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/e<",
        "Lcom/amap/api/services/cloud/CloudSearch$Query;",
        "Lcom/amap/api/services/cloud/CloudResult;",
        ">;"
    }
.end annotation


# instance fields
.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/e;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/services/a/g;->h:I

    .line 26
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    nop

    .line 76
    const-string v1, "datas"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "datas"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 81
    const-string v2, "count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amap/api/services/a/g;->h:I

    .line 82
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 83
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/amap/api/services/a/g;->a(Lorg/json/JSONObject;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v3

    .line 85
    invoke-virtual {p0, v3, v2}, Lcom/amap/api/services/a/g;->a(Lcom/amap/api/services/cloud/CloudItem;Lorg/json/JSONObject;)V

    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v0

    .line 79
    :cond_1
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-static {v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/g;->e(Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/amap/api/services/a/g;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    nop

    .line 69
    :goto_0
    move-object p1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget v1, p0, Lcom/amap/api/services/a/g;->h:I

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/amap/api/services/cloud/CloudResult;->createPagedResult(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget v1, p0, Lcom/amap/api/services/a/g;->h:I

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/amap/api/services/cloud/CloudResult;->createPagedResult(Lcom/amap/api/services/cloud/CloudSearch$Query;ILcom/amap/api/services/cloud/CloudSearch$SearchBound;ILjava/util/ArrayList;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object p1

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 11

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    .line 97
    invoke-static {v1, v2}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v1

    .line 99
    iget-object v3, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v3, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v3

    .line 99
    invoke-static {v3, v4}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v3

    .line 101
    const-string v5, "&center="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rectangle"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 107
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v3

    .line 108
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v5

    .line 109
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v7

    .line 110
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v1

    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&polygon="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Polygon"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&polygon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "&city="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&tableid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p0}, Lcom/amap/api/services/a/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    invoke-direct {p0}, Lcom/amap/api/services/a/g;->i()Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/amap/api/services/a/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "&filter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_5
    invoke-direct {p0}, Lcom/amap/api/services/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 134
    const-string v1, "&sortrule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amap/api/services/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_6
    nop

    .line 137
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&keywords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    :cond_7
    const-string v1, "&keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/g;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/datasearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/amap/api/services/a/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/around?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 46
    :cond_0
    const-string v2, "Polygon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Rectangle"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "Local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/local?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/polygon?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    return-object v0
.end method
