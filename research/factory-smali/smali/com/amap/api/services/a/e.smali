.class public abstract Lcom/amap/api/services/a/e;
.super Lcom/amap/api/services/a/b;
.source "CloudHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/services/a/b<",
        "TT;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "_location"

    invoke-static {p1, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 40
    const-string v2, "_name"

    invoke-static {p1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "_address"

    invoke-static {p1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v4, Lcom/amap/api/services/cloud/CloudItemDetail;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/cloud/CloudItemDetail;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "_createtime"

    invoke-static {p1, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/cloud/CloudItemDetail;->setCreatetime(Ljava/lang/String;)V

    .line 45
    const-string v0, "_updatetime"

    invoke-static {p1, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/cloud/CloudItemDetail;->setUpdatetime(Ljava/lang/String;)V

    .line 46
    const-string v0, "_distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "_distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/cloud/CloudItemDetail;->setDistance(I)V

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-string v1, "_image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    const-string v3, "_preurl"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    const-string v5, "_url"

    invoke-static {v2, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    const-string v6, "_id"

    invoke-static {v2, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v6, Lcom/amap/api/services/cloud/CloudImage;

    invoke-direct {v6, v2, v3, v5}, Lcom/amap/api/services/cloud/CloudImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v4, v0}, Lcom/amap/api/services/cloud/CloudItemDetail;->setmCloudImage(Ljava/util/List;)V

    .line 71
    return-object v4

    .line 59
    :cond_3
    :goto_1
    invoke-virtual {v4, v0}, Lcom/amap/api/services/cloud/CloudItemDetail;->setmCloudImage(Ljava/util/List;)V

    .line 60
    return-object v4
.end method

.method protected a(Lcom/amap/api/services/cloud/CloudItem;Lorg/json/JSONObject;)V
    .locals 5

    .line 97
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1, v1}, Lcom/amap/api/services/cloud/CloudItem;->setCustomfield(Ljava/util/HashMap;)V

    .line 110
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "User-Agent"

    const-string v2, "AMAP SDK Android Search 3.5.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/services/a/e;->d:Landroid/content/Context;

    .line 83
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/amap/api/services/a/h;->b(Z)Lcom/amap/api/services/a/bd;

    move-result-object v4

    .line 82
    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/amap/api/services/a/ay;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "platinfo"

    const-string v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "3.5.0"

    aput-object v5, v4, v3

    const-string v3, "cloud"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "logversion"

    const-string v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 1

    .line 113
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 114
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
