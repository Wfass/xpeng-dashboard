.class public Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;
.super Ljava/lang/Object;
.source "ConditionJsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static condition2JSONObject(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 369
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->getType()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "type":Ljava/lang/String;
    const-string v2, "type"

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v3, "unknown"

    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    invoke-interface {p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 375
    const-string v2, "id"

    invoke-interface {p0}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_1
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/AND;

    if-nez v2, :cond_1a

    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/OR;

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 386
    :cond_2
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    if-eqz v2, :cond_3

    .line 387
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    .line 388
    .local v2, "conditionTime":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 389
    .local v3, "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 390
    .local v4, "timeJsonArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 391
    .local v5, "dateJsonObject":Lorg/json/JSONObject;
    const-string v6, "date"

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v6

    .line 394
    const-string v6, "date"

    sget-object v7, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7, v8}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 396
    const-string v6, "between"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v6, "repeat"

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->getRepeat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    .end local v2    # "conditionTime":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
    .end local v3    # "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4    # "timeJsonArray":Lorg/json/JSONArray;
    .end local v5    # "dateJsonObject":Lorg/json/JSONObject;
    goto/16 :goto_4

    :cond_3
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    if-eqz v2, :cond_17

    .line 400
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    if-eqz v2, :cond_4

    .line 401
    const-string v2, "eq"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 402
    :cond_4
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotEqual;

    if-eqz v2, :cond_5

    .line 403
    const-string v2, "neq"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 404
    :cond_5
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatEqual;

    if-eqz v2, :cond_6

    .line 405
    const-string v2, "ge"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 406
    :cond_6
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/GreatThan;

    if-eqz v2, :cond_7

    .line 407
    const-string v2, "gt"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 408
    :cond_7
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessEqual;

    if-eqz v2, :cond_8

    .line 409
    const-string v2, "le"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 410
    :cond_8
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/LessThan;

    if-eqz v2, :cond_9

    .line 411
    const-string v2, "lt"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 412
    :cond_9
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/In;

    if-eqz v2, :cond_a

    .line 413
    const-string v2, "in"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 414
    :cond_a
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotIn;

    if-eqz v2, :cond_b

    .line 415
    const-string v2, "nin"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 416
    :cond_b
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;

    if-eqz v2, :cond_c

    .line 417
    const-string v2, "between"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 418
    :cond_c
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/xuiservice/smart/condition/operator/NotBetween;

    if-eqz v2, :cond_d

    .line 419
    const-string v2, "notbetween"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 421
    :cond_d
    const-string v2, "op"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p0

    check-cast v4, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->getTargetValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    :goto_1
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;

    if-eqz v2, :cond_e

    .line 425
    const-string v2, "door"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->getDoor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 426
    :cond_e
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;

    if-eqz v2, :cond_f

    .line 427
    const-string v2, "seat"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;->getSeat()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 428
    :cond_f
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;

    if-eqz v2, :cond_10

    .line 429
    const-string v2, "belt"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->getBelt()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 430
    :cond_10
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;

    if-eqz v2, :cond_11

    .line 431
    const-string v2, "mode"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 432
    :cond_11
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;

    if-eqz v2, :cond_12

    .line 433
    const-string/jumbo v2, "window"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->getWindow()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 434
    :cond_12
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;

    if-eqz v2, :cond_13

    .line 435
    const-string v2, "tire"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->getTire()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 436
    :cond_13
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionCode;

    if-eqz v2, :cond_14

    .line 437
    const-string v2, "packageName"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionCode;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionCode;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 438
    :cond_14
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;

    if-eqz v2, :cond_15

    .line 439
    const-string v2, "packageName"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 440
    :cond_15
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;

    if-eqz v2, :cond_16

    .line 441
    const-string v2, "property"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->getProperty()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 442
    :cond_16
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;

    if-eqz v2, :cond_1c

    .line 443
    const-string v2, "key"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v2, "uid"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->isUseUid()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 446
    :cond_17
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;

    if-eqz v2, :cond_19

    .line 447
    const-string v2, "count"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    const-string/jumbo v2, "window"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionBugBase;->getWindow()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 449
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrashSingle;

    if-eqz v2, :cond_18

    .line 450
    const-string v2, "package"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrashSingle;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrashSingle;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 451
    :cond_18
    instance-of v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;

    if-eqz v2, :cond_1c

    .line 452
    const-string v2, "package"

    move-object v3, p0

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 455
    :cond_19
    const-string v2, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    .end local v1    # "type":Ljava/lang/String;
    goto :goto_4

    .line 379
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1a
    :goto_2
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/Group;

    .line 380
    .local v2, "group":Lcom/xiaopeng/xuiservice/smart/condition/Group;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 381
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/condition/Group;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 382
    .local v5, "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->condition2JSONObject(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)Lorg/json/JSONObject;

    move-result-object v6

    .line 383
    .local v6, "sub":Lorg/json/JSONObject;
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 384
    .end local v5    # "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .end local v6    # "sub":Lorg/json/JSONObject;
    goto :goto_3

    .line 385
    :cond_1b
    const-string v4, "conditions"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v2    # "group":Lcom/xiaopeng/xuiservice/smart/condition/Group;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    nop

    .line 459
    .end local v1    # "type":Ljava/lang/String;
    :cond_1c
    :goto_4
    goto :goto_5

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "condition2JSONObject error"

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_5
    return-object v0
.end method

.method private static getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 314
    const-string v0, "eq"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "eq"

    return-object v0

    .line 317
    :cond_0
    const-string v0, "neq"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const-string v0, "neq"

    return-object v0

    .line 320
    :cond_1
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const-string v0, "lt"

    return-object v0

    .line 323
    :cond_2
    const-string v0, "le"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string v0, "le"

    return-object v0

    .line 326
    :cond_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    const-string v0, "gt"

    return-object v0

    .line 329
    :cond_4
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const-string v0, "ge"

    return-object v0

    .line 332
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static jsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 358
    :cond_0
    instance-of v0, p0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 360
    .local v0, "jsonArray":Lorg/json/JSONArray;
    move-object v1, p0

    check-cast v1, Landroid/util/Pair;

    .line 361
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 362
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 363
    return-object v0

    .line 365
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static jsonObject2Condition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .locals 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "accPedal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "sysReady"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "bug_native_crash"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v3, "wheelAngle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "chargePort"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "bug_kernel_panic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "bug_system_server_restart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "app_version_name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "app_version_code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "resource_exist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "speed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "brake"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "seat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "gear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "door"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "belt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "uid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "AND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "ig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "OR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "rom_version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "battery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "resource_selected"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "bug_app_crash_single"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "rearTrunk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "drivingDistance"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_1c
    const-string v3, "bug_app_crash"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :sswitch_1d
    const-string v3, "sr_icon_click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x23

    goto :goto_0

    :sswitch_1e
    const-string v3, "property"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :sswitch_1f
    const-string v3, "bug_app_anr_single"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :sswitch_20
    const-string v3, "bonnet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_21
    const-string v3, "bug_app_anr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x16

    goto :goto_0

    :sswitch_22
    const-string v3, "key_value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x22

    goto :goto_0

    :sswitch_23
    const-string v3, "tirePressure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 295
    :pswitch_0
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 296
    goto/16 :goto_4

    .line 292
    :pswitch_1
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v2

    .line 293
    goto/16 :goto_4

    .line 289
    :pswitch_2
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;-><init>()V

    move-object v0, v2

    .line 290
    goto/16 :goto_4

    .line 283
    :pswitch_3
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 285
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "property"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 277
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_4
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 279
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRomVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 271
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_5
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 273
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 265
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_6
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 267
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionCode;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionCode;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 261
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_7
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionNativeCrash;

    const-string v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "window"

    .line 262
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionNativeCrash;-><init>(IJ)V

    move-object v0, v2

    .line 263
    goto/16 :goto_4

    .line 257
    :pswitch_8
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionSystemServerRestart;

    const-string v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "window"

    .line 258
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionSystemServerRestart;-><init>(IJ)V

    move-object v0, v2

    .line 259
    goto/16 :goto_4

    .line 253
    :pswitch_9
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionKernelPanic;

    const-string v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "window"

    .line 254
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionKernelPanic;-><init>(IJ)V

    move-object v0, v2

    .line 255
    goto/16 :goto_4

    .line 249
    :pswitch_a
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrashSingle;

    const-string v3, "package"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    .line 250
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrashSingle;-><init>(Ljava/lang/String;IJ)V

    move-object v0, v2

    .line 251
    goto/16 :goto_4

    .line 245
    :pswitch_b
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrash;

    const-string v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "window"

    .line 246
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppCrash;-><init>(IJ)V

    move-object v0, v2

    .line 247
    goto/16 :goto_4

    .line 241
    :pswitch_c
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;

    const-string v3, "package"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    .line 242
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANRSingle;-><init>(Ljava/lang/String;IJ)V

    move-object v0, v2

    .line 243
    goto/16 :goto_4

    .line 237
    :pswitch_d
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANR;

    const-string v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "window"

    .line 238
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->intervalString2milliSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/bug/ConditionAppANR;-><init>(IJ)V

    move-object v0, v2

    .line 239
    goto/16 :goto_4

    .line 233
    :pswitch_e
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceType"

    .line 234
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;-><init>(Ljava/lang/Boolean;Ljava/lang/String;I)V

    move-object v0, v2

    .line 235
    goto/16 :goto_4

    .line 230
    :pswitch_f
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    move-object v0, v2

    .line 231
    goto/16 :goto_4

    .line 227
    :pswitch_10
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBrakeStatus;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBrakeStatus;-><init>(Ljava/lang/Integer;)V

    move-object v0, v2

    .line 228
    goto/16 :goto_4

    .line 221
    :pswitch_11
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 223
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAccPedal;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAccPedal;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 215
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_12
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 217
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWheelAngle;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWheelAngle;-><init>(Ljava/lang/Float;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 212
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_13
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "belt"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;-><init>(Ljava/lang/Integer;I)V

    move-object v0, v2

    .line 213
    goto/16 :goto_4

    .line 209
    :pswitch_14
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "seat"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;-><init>(Ljava/lang/Integer;I)V

    move-object v0, v2

    .line 210
    goto/16 :goto_4

    .line 203
    :pswitch_15
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 205
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "tire"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;-><init>(Ljava/lang/Float;Ljava/lang/String;I)V

    move-object v0, v3

    goto/16 :goto_4

    .line 200
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_16
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "port"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;-><init>(Ljava/lang/Integer;I)V

    move-object v0, v2

    .line 201
    goto/16 :goto_4

    .line 197
    :pswitch_17
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBonnet;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBonnet;-><init>(Ljava/lang/Integer;)V

    move-object v0, v2

    .line 198
    goto/16 :goto_4

    .line 194
    :pswitch_18
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk;-><init>(Ljava/lang/Integer;)V

    move-object v0, v2

    .line 195
    goto/16 :goto_4

    .line 188
    :pswitch_19
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 190
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;-><init>(Ljava/lang/Float;Ljava/lang/String;I)V

    move-object v0, v3

    goto/16 :goto_4

    .line 182
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_1a
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 184
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 176
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_1b
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 178
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "mode"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;-><init>(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_4

    .line 173
    .end local v2    # "opName":Ljava/lang/String;
    :pswitch_1c
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSysReady;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSysReady;-><init>(Ljava/lang/Integer;)V

    move-object v0, v2

    .line 174
    goto/16 :goto_4

    .line 170
    :pswitch_1d
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "door"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;-><init>(Ljava/lang/Integer;I)V

    move-object v0, v2

    .line 171
    goto/16 :goto_4

    .line 159
    :pswitch_1e
    const-string v2, "between"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeedBetween;

    const-string v3, "between"

    .line 161
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 160
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2DoublePair(Lorg/json/JSONArray;)Landroid/util/Pair;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeedBetween;-><init>(Landroid/util/Pair;)V

    move-object v0, v2

    goto/16 :goto_4

    .line 163
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->getCompareOP(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2    # "opName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 165
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    move-object v0, v3

    .line 168
    .end local v2    # "opName":Ljava/lang/String;
    :cond_2
    goto/16 :goto_4

    .line 155
    :pswitch_1f
    const-string v2, "in"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 156
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2StringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;-><init>([Ljava/lang/String;)V

    move-object v0, v3

    .line 157
    goto/16 :goto_4

    .line 152
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :pswitch_20
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;

    const-string v3, "eq"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;-><init>(Ljava/lang/Integer;)V

    move-object v0, v2

    .line 153
    goto/16 :goto_4

    .line 144
    :pswitch_21
    const-string v2, "repeat"

    const-string v3, "once"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "repeat":Ljava/lang/String;
    const-string v3, "between"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 146
    .local v3, "jsonArray":Lorg/json/JSONArray;
    nop

    .line 147
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 148
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 146
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 149
    .local v4, "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v5, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    invoke-direct {v5, v4, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;-><init>(Landroid/util/Pair;Ljava/lang/String;)V

    move-object v0, v5

    .line 150
    goto :goto_4

    .line 129
    .end local v2    # "repeat":Ljava/lang/String;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :pswitch_22
    const-string v2, "conditions"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 130
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 132
    .local v3, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v4, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    nop

    .line 133
    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 134
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Condition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v6

    .line 135
    .local v6, "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    if-eqz v6, :cond_3

    .line 136
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v6    # "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .restart local v6    # "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid condition json"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    .end local v5    # "i":I
    .end local v6    # "c":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    :cond_4
    const-string v5, "AND"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->AND(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/condition/Group;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->OR(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/condition/Group;

    move-result-object v5

    :goto_2
    move-object v0, v5

    .line 142
    goto :goto_4

    .line 298
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "length":I
    .end local v4    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/smart/condition/Condition;>;"
    :goto_3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown condition type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 302
    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_7
    return-object v0

    .line 307
    .end local v0    # "result":Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "jsonObject2Condition error"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x72371a33 -> :sswitch_23
        -0x61f3f06f -> :sswitch_22
        -0x56186404 -> :sswitch_21
        -0x527537c4 -> :sswitch_20
        -0x484b4e15 -> :sswitch_1f
        -0x3b32222b -> :sswitch_1e
        -0x3741b3de -> :sswitch_1d
        -0x3171a402 -> :sswitch_1c
        -0x2ef42410 -> :sswitch_1b
        -0x2bf64b24 -> :sswitch_1a
        -0x2b15a590 -> :sswitch_19
        -0x2247b457 -> :sswitch_18
        -0x183ff054 -> :sswitch_17
        -0x13be51f3 -> :sswitch_16
        -0x3a85297 -> :sswitch_15
        0x9e3 -> :sswitch_14
        0xd1e -> :sswitch_13
        0xfdb7 -> :sswitch_12
        0x1c450 -> :sswitch_11
        0x2e150b -> :sswitch_10
        0x2f23ae -> :sswitch_f
        0x30598f -> :sswitch_e
        0x35ce05 -> :sswitch_d
        0x3652cd -> :sswitch_c
        0x59a4b2b -> :sswitch_b
        0x6890047 -> :sswitch_a
        0x1143cf86 -> :sswitch_9
        0x15c7be52 -> :sswitch_8
        0x15cc8af0 -> :sswitch_7
        0x3174a998 -> :sswitch_6
        0x36fcdfe0 -> :sswitch_5
        0x5484b555 -> :sswitch_4
        0x60afae38 -> :sswitch_3
        0x70b4716a -> :sswitch_2
        0x73e962d6 -> :sswitch_1
        0x7ee17579 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static jsonObject2Timestamp(Lorg/json/JSONObject;)J
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 336
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 337
    return-wide v0

    .line 340
    :cond_0
    :try_start_0
    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v3, "date"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->parse(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 342
    .local v2, "date":Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    return-wide v3

    .line 345
    .end local v2    # "date":Ljava/util/Date;
    :cond_1
    nop

    .line 350
    goto :goto_0

    .line 346
    :cond_2
    const-string v2, "timestamp"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "parse Date error"

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method
