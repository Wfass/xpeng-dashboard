.class public Lcom/xiaopeng/xuiservice/egg/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field public actionJson:Ljava/lang/String;

.field private condition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

.field public conditionJsonObject:Lorg/json/JSONObject;

.field public execCount:Lcom/xiaopeng/xuiservice/egg/ExecCount;

.field public execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

.field public id:Ljava/lang/String;

.field private stopCondition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

.field public stopConditionJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAction(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/env/Env;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 3
    .param p1, "egg"    # Lcom/xiaopeng/xuiservice/egg/Egg;
    .param p2, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 53
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "no action define"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;)V

    .line 55
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/xiaopeng/xuiservice/smart/env/TextEnvProcessor;->process(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    .line 61
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/egg/Egg;->getEggDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "create action failed, invalid egg.json"

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-object v0
.end method

.method public createCondition()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->conditionJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->conditionJsonObject:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->createCondition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->condition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 29
    return-void
.end method

.method public createStopCondition()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopConditionJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopConditionJsonObject:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggUtil;->createCondition(Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopCondition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 41
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 73
    .local v0, "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 71
    .end local v0    # "rule":Lcom/xiaopeng/xuiservice/egg/Rule;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->condition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    return-object v0
.end method

.method public getStopCondition()Lcom/xiaopeng/xuiservice/smart/condition/Condition;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopCondition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCondition(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0
    .param p1, "condition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->condition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 37
    return-void
.end method

.method public setStopCondition(Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0
    .param p1, "stopCondition"    # Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopCondition:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule{conditionJsonObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->conditionJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->actionJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", execCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->execCount:Lcom/xiaopeng/xuiservice/egg/ExecCount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", execInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->execInterval:Lcom/xiaopeng/xuiservice/egg/ExecInterval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stopConditionJsonObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Rule;->stopConditionJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
