.class public Lcom/xiaopeng/xuiservice/operation/legacy/ResourceConvert;
.super Ljava/lang/Object;
.source "ResourceConvert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceConvert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyContent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "targetPath"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "content":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 75
    const-string v1, "mp4"

    invoke-static {p0, v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getTypeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "videoPath":Ljava/lang/String;
    const-string v2, "mp3"

    invoke-static {p0, v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getTypeFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "danceFilePath":Ljava/lang/String;
    const-string v3, "effectName"

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->getFilePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v3, "videoPath"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "videoPath":Ljava/lang/String;
    .end local v2    # "danceFilePath":Ljava/lang/String;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ResourceConvert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegacyContent error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static toLegacyInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const-string v0, ""

    .line 42
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 43
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 45
    .local v3, "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "preset_resource"

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    new-instance v5, Lorg/json/JSONArray;

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "presetArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 51
    .end local v5    # "presetArray":Lorg/json/JSONArray;
    :cond_0
    iget-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->isPathHaveChildren(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    const-string v5, "id"

    iget-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v5, "category"

    iget v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    iget-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/operation/legacy/ResourceConvert;->getLegacyContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 57
    .local v5, "content":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 58
    const-string v6, "content"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v5    # "content":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 60
    :catch_0
    move-exception v5

    .line 61
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    return-object v0
.end method

.method public static toPresetLegacyInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    const-string v0, ""

    .line 20
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 21
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    .local v1, "mergedArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 24
    .local v3, "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 25
    .local v4, "presetArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 26
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 27
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 28
    .local v6, "presetItem":Lorg/json/JSONObject;
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v6    # "presetItem":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    .end local v4    # "presetArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 31
    :catch_0
    move-exception v4

    .line 32
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_2
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .end local v1    # "mergedArray":Lorg/json/JSONArray;
    :cond_2
    return-object v0
.end method
