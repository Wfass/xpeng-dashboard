.class public Lcom/xiaopeng/xuiservice/egg/EggUtil;
.super Ljava/lang/Object;
.source "EggUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCondition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 79
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Condition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static parseExecCount(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/egg/ExecCount;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    const-string v0, "execCount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    .local v0, "execCountJsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_0
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 93
    const-string v2, "scope"

    const-string v3, "all"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "scope":Ljava/lang/String;
    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ig"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ExecCount scope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_2
    :goto_0
    new-instance v3, Lcom/xiaopeng/xuiservice/egg/ExecCount;

    invoke-direct {v3, v1, v2}, Lcom/xiaopeng/xuiservice/egg/ExecCount;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 90
    .end local v2    # "scope":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExecCount count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", must > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseExecInterval(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/egg/ExecInterval;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    const-string v0, "execInterval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .local v0, "execIntervalJsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    const-string v1, "interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "interval":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v2, "intervalMs":J
    nop

    .line 114
    nop

    .line 117
    const-string v4, "scope"

    const-string v5, "all"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "scope":Ljava/lang/String;
    const-string v5, "all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ig"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    new-instance v5, Lorg/json/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ExecInterval scope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_2
    :goto_0
    new-instance v5, Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/egg/ExecInterval;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v5

    .line 113
    .end local v2    # "intervalMs":J
    .end local v4    # "scope":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "ExecInterval no interval"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseFromFile(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/egg/Egg;
    .locals 14
    .param p0, "eggFile"    # Ljava/lang/String;
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "egg.json"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "eggMainFileContent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin parse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 30
    return-object v0

    .line 33
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/egg/Egg;-><init>()V

    .line 35
    .local v4, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->setResourceId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, p0}, Lcom/xiaopeng/xuiservice/egg/Egg;->setEggDir(Ljava/lang/String;)V

    .line 37
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/egg/Egg;->setId(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/egg/Egg;->setVersion(Ljava/lang/String;)V

    .line 39
    const-string v5, "displayName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/egg/Egg;->setDisplayName(Ljava/lang/String;)V

    .line 40
    const-string v5, "image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/egg/Egg;->setImage(Ljava/lang/String;)V

    .line 41
    const-string v5, "startTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xuiservice/egg/Egg;->setStartTime(J)V

    .line 42
    const-string v5, "expireTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xuiservice/egg/Egg;->setExpireTime(J)V

    .line 44
    const-string v5, "rules"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 45
    .local v5, "rulesArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 46
    .local v6, "size":I
    new-array v7, v6, [Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 47
    .local v7, "rules":[Lcom/xiaopeng/xuiservice/egg/Rule;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 48
    .local v8, "idSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 48
    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 49
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 50
    .local v10, "ruleObject":Lorg/json/JSONObject;
    new-instance v11, Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-direct {v11}, Lcom/xiaopeng/xuiservice/egg/Rule;-><init>()V

    .line 51
    .local v11, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    const-string v12, "id"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    .line 52
    iget-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 55
    iget-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->parseExecCount(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/egg/ExecCount;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->execCount:Lcom/xiaopeng/xuiservice/egg/ExecCount;

    .line 57
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->parseExecInterval(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    .line 58
    const-string v12, "condition"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->conditionJsonObject:Lorg/json/JSONObject;

    .line 59
    const-string v12, "stopCondition"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->stopConditionJsonObject:Lorg/json/JSONObject;

    .line 60
    const-string v12, "action"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    .line 61
    aput-object v11, v7, v9

    .line 48
    .end local v10    # "ruleObject":Lorg/json/JSONObject;
    .end local v11    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 53
    .restart local v10    # "ruleObject":Lorg/json/JSONObject;
    .restart local v11    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    :cond_2
    new-instance v12, Lorg/json/JSONException;

    const-string v13, "rule id is empty"

    invoke-direct {v12, v13}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 63
    .end local v9    # "i":I
    .end local v10    # "ruleObject":Lorg/json/JSONObject;
    .end local v11    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    :cond_3
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 67
    iput-object v7, v4, Lcom/xiaopeng/xuiservice/egg/Egg;->rules:[Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse success: file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", egg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 71
    return-object v4

    .line 64
    :cond_4
    new-instance v9, Lorg/json/JSONException;

    const-string v10, "find duplicated ids!"

    invoke-direct {v9, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    .end local v5    # "rulesArray":Lorg/json/JSONArray;
    .end local v6    # "size":I
    .end local v7    # "rules":[Lcom/xiaopeng/xuiservice/egg/Rule;
    .end local v8    # "idSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error, file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-object v0
.end method
