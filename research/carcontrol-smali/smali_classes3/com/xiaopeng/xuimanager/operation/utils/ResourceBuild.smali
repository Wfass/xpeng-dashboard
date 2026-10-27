.class public Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;
.super Ljava/lang/Object;
.source "ResourceBuild.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceBuild##"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventOfDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)Ljava/lang/String;
    .locals 1

    .line 389
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "download_error"

    .line 394
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :catch_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eventOfDownloadProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)Ljava/lang/String;
    .locals 3

    .line 357
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "download_progress"

    float-to-double v1, p1

    .line 362
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :catch_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eventOfQueryRemoteError(I)Ljava/lang/String;
    .locals 0

    .line 334
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 102
    :try_start_0
    new-instance v2, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "id"

    .line 103
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setId(Ljava/lang/String;)V

    const-string v1, "resourceType"

    const/4 v3, -0x1

    .line 104
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceType(I)V

    const-string v1, "resourceName"

    .line 105
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceName(Ljava/lang/String;)V

    const-string v1, "targetPath"

    .line 106
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setTargetPath(Ljava/lang/String;)V

    const-string v1, "resourceFrom"

    .line 107
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceFrom(Ljava/lang/String;)V

    const-string v1, "downloadUrl"

    .line 108
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDownloadUrl(Ljava/lang/String;)V

    const-string v1, "expireTime"

    const-wide/16 v3, -0x1

    .line 109
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExpireTime(J)V

    const-string v1, "effectTime"

    .line 110
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setEffectTime(J)V

    const-string v1, "status"

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setStatus(I)V

    const-string v1, "createTime"

    .line 112
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setCreateTime(J)V

    const-string v1, "updateTime"

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setUpdateTime(J)V

    const-string v1, "resourceIcon"

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceIcon(Ljava/lang/String;)V

    const-string v1, "description"

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDescription(Ljava/lang/String;)V

    const-string v1, "price"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setPrice(Ljava/lang/String;)V

    const-string v1, "extraData"

    .line 117
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExtraData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    .line 119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson 2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceBuild##"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public static fromJsonArray(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 147
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 148
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJsonArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getDownloadError(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 373
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {v2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "download_error"

    .line 375
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    move v2, v0

    :goto_0
    if-eqz v3, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 381
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_DOWNLOAD_ERROR but parse resource fail, id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", event="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResourceBuild##"

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 341
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "download_progress"

    const-wide/16 v4, 0x0

    .line 343
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    double-to-float v1, v3

    goto :goto_0

    :catch_0
    move-object v2, v0

    :catch_1
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 349
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_DOWNLOAD_IN_PROGRESS but parse resource fail, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", event="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResourceBuild##"

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getQueryRemoteError(ILjava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    .line 323
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    :goto_0
    if-ne v1, v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_RESOURCE_QUERY_FAILED but parse reason fail, type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", event="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResourceBuild##"

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public static json2OpenAction(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OpenAction;
    .locals 2

    :try_start_0
    const-string v0, "openActionType"

    .line 260
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "openActionComponent"

    .line 261
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->activity(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 265
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->service(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 267
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->broadcast(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json2OpenAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceBuild##"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static json2SyncResult(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;
    .locals 4

    const/4 v0, 0x0

    .line 305
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "aborted"

    .line 307
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setAborted(Z)V

    const-string v0, "success"

    .line 308
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->setSuccess(Z)V

    const-string v0, "failReason"

    .line 309
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    const-string v0, "addCount"

    .line 310
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    const-string v0, "deleteCount"

    .line 311
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    const-string v0, "updateCount"

    .line 312
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    const-string v0, "infoUpdateCount"

    .line 313
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    .line 315
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json2SyncResult error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static openAction2Json(Lcom/xiaopeng/xuimanager/operation/OpenAction;)Lorg/json/JSONObject;
    .locals 3

    .line 276
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "openActionType"

    .line 278
    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "openActionComponent"

    .line 279
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openAction2Json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static syncResult2Json(Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "aborted"

    .line 289
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->isAborted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "success"

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "failReason"

    .line 291
    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "addCount"

    .line 292
    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deleteCount"

    .line 293
    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "updateCount"

    .line 294
    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "infoUpdateCount"

    .line 295
    iget p0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncResult2Json error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toDownloadInfoJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 177
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    .line 179
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toDownloadStatusInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 2

    .line 187
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadStatusInfo(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromJson 2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceBuild##"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static toDownloadStatusInfo(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "id"

    .line 245
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceId(Ljava/lang/String;)V

    const-string v1, "resourceType"

    const/4 v3, -0x1

    .line 246
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceType(I)V

    const-string v1, "resourceName"

    .line 247
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceName(Ljava/lang/String;)V

    const-string v1, "progress"

    const-wide/16 v3, 0x0

    .line 248
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setProgress(F)V

    const-string v1, "downloadStatus"

    const/4 v3, 0x0

    .line 249
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setState(I)V

    const-string v1, "extraInfo"

    .line 250
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setExtraInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    .line 253
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson 2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceBuild##"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public static toDownloadStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 228
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 229
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadStatusInfo(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static toFailedInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/FailedInfo;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 212
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "id"

    .line 214
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->setResourceId(Ljava/lang/String;)V

    const-string v1, "resourceType"

    const/4 v3, -0x1

    .line 215
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->setResourceType(I)V

    const-string v1, "resourceName"

    .line 216
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->setResourceName(Ljava/lang/String;)V

    const-string v0, "failedReason"

    const-string v1, "disk space is not enough"

    .line 217
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->setFailedReason(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 219
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson 2:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceBuild##"

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public static toJson(Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "id"

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resourceName"

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resourceType"

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getResourceType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "progress"

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getProgress()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "downloadStatus"

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "extraInfo"

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 171
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static toJson(Lcom/xiaopeng/xuimanager/operation/FailedInfo;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 198
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "id"

    .line 199
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resourceName"

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "resourceType"

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->getResourceType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "failedReason"

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->getFailedReason()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 204
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ResourceBuild##"

    invoke-static {v1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;
    .locals 4

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resourceName"

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resourceType"

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "targetPath"

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getTargetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "resourceFrom"

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "downloadUrl"

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "effectTime"

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getEffectTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "expireTime"

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "createTime"

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "updateTime"

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "resourceIcon"

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extraData"

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJson: resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ResourceBuild##"

    invoke-static {v2, p0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 84
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toJsonWithDownloadParams(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)Lorg/json/JSONObject;
    .locals 1

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "useSystemTraffic"

    .line 60
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "openAction"

    .line 62
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->openAction2Json(Lcom/xiaopeng/xuimanager/operation/OpenAction;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method
