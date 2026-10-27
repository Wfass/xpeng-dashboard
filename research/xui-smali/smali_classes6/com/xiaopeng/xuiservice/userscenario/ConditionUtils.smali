.class public Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;
.super Ljava/lang/Object;
.source "ConditionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;,
        Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConditionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluateCondition(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/util/List;Ljava/lang/String;)Z
    .locals 16
    .param p0, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p2, "rule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .local p1, "keyDataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;>;"
    move-object/from16 v0, p1

    .line 13
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 14
    .local v2, "conditionMet":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 15
    .local v3, "size":I
    const/4 v4, 0x0

    .line 16
    .local v4, "result":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "result":I
    :goto_0
    const/4 v7, 0x1

    if-ge v4, v3, :cond_4

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;

    .line 18
    .local v8, "keyData":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 19
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->getKeyType()Ljava/lang/String;

    move-result-object v10

    .line 20
    .local v10, "keyType":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 21
    .local v11, "value":I
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->getMatchRule()Ljava/lang/String;

    move-result-object v12

    .line 22
    .local v12, "matchRule":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x10440

    if-eq v14, v15, :cond_0

    goto :goto_1

    :cond_0
    const-string v14, "CFC"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v13, v5

    :cond_1
    :goto_1
    if-eqz v13, :cond_2

    .end local v8    # "keyData":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keyType":Ljava/lang/String;
    .end local v11    # "value":I
    .end local v12    # "matchRule":Ljava/lang/String;
    goto :goto_2

    .line 24
    .restart local v8    # "keyData":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keyType":Ljava/lang/String;
    .restart local v11    # "value":I
    .restart local v12    # "matchRule":Ljava/lang/String;
    :cond_2
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    .line 25
    .local v13, "cfcConfig":I
    const-string v14, "match"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 26
    if-ne v13, v11, :cond_3

    .line 27
    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    .line 16
    .end local v8    # "keyData":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keyType":Ljava/lang/String;
    .end local v11    # "value":I
    .end local v12    # "matchRule":Ljava/lang/String;
    .end local v13    # "cfcConfig":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v4    # "i":I
    :cond_4
    const-string v4, "or"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    if-lez v6, :cond_5

    move v5, v7

    nop

    :cond_5
    move v2, v5

    goto :goto_3

    .line 37
    :cond_6
    const-string v4, "and"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 38
    shl-int v4, v7, v3

    sub-int/2addr v4, v7

    if-ne v6, v4, :cond_7

    move v5, v7

    nop

    :cond_7
    move v2, v5

    .line 40
    :cond_8
    :goto_3
    const-string v4, "ConditionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evaluateCondition: conditionMet = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " keyDataList = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " rule = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return v2
.end method
