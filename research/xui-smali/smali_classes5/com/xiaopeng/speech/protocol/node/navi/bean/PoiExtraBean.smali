.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;
.super Ljava/lang/Object;
.source "PoiExtraBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PoiExtraBean"


# instance fields
.field private acFreeNums:I

.field private acNums:I

.field private busiState:Z

.field private busiTime:Ljava/lang/String;

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;",
            ">;"
        }
    .end annotation
.end field

.field private dcFreeNums:I

.field private dcNums:I

.field private payment:Ljava/lang/String;

.field private selfSupportFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;
    .locals 8
    .param p0, "fromJson"    # Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;-><init>()V

    .line 103
    .local v0, "poiExtra":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v1

    .line 104
    .local v1, "isOverseasCarType":Z
    const-string v2, "PoiExtraBean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromJson, isOverseasCarType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "dcNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "dcNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    .line 111
    :cond_0
    const-string v3, "dcFreeNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "dcFreeNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    .line 114
    :cond_1
    const-string v3, "acNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const-string v3, "acNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    .line 117
    :cond_2
    const-string v3, "acFreeNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    if-nez v1, :cond_3

    .line 119
    const-string v3, "acFreeNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    goto :goto_0

    .line 121
    :cond_3
    const-string v3, "acFreeNums"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    .line 124
    :cond_4
    :goto_0
    const-string v3, "selfSupportFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 125
    const-string v3, "selfSupportFlag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    .line 127
    :cond_5
    if-eqz v1, :cond_b

    .line 128
    const-string v3, "busiState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    const-string v3, "busiState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    .line 131
    :cond_6
    const-string v3, "busiTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    const-string v3, "busiTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    .line 134
    :cond_7
    const-string v3, "payment"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 135
    const-string v3, "payment"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    .line 137
    :cond_8
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 138
    .local v3, "charges":Lorg/json/JSONArray;
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v4, "chargeBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 143
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 144
    .local v6, "object":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->parseChargeBean(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    move-result-object v7

    .line 145
    .local v7, "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    if-eqz v7, :cond_9

    .line 146
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    .end local v5    # "i":I
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    :cond_a
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->setContent(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "charges":Lorg/json/JSONArray;
    .end local v4    # "chargeBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;>;"
    :cond_b
    goto :goto_2

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private static parseChargeBean(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    .locals 2
    .param p0, "beanObject"    # Lorg/json/JSONObject;

    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;-><init>()V

    .line 183
    .local v0, "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    const-string v1, "total"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setTotal(I)V

    .line 184
    const-string v1, "available"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setAvailable(I)V

    .line 185
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setPower(Ljava/lang/String;)V

    .line 186
    return-object v0
.end method


# virtual methods
.method public getAcFreeNums()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    return v0
.end method

.method public getAcNums()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    return v0
.end method

.method public getBusiState()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    return v0
.end method

.method public getBusiTime()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDcFreeNums()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    return v0
.end method

.method public getDcNums()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    return v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfSupportFlag()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    return v0
.end method

.method public setAcFreeNums(I)V
    .locals 0
    .param p1, "acFreeNums"    # I

    .line 66
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    .line 67
    return-void
.end method

.method public setAcNums(I)V
    .locals 0
    .param p1, "acNums"    # I

    .line 58
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    .line 59
    return-void
.end method

.method public setBusiState(Z)V
    .locals 0
    .param p1, "busiState"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    .line 75
    return-void
.end method

.method public setBusiTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "busiTime"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    .line 99
    return-void
.end method

.method public setDcFreeNums(I)V
    .locals 0
    .param p1, "dcFreeNums"    # I

    .line 50
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    .line 51
    return-void
.end method

.method public setDcNums(I)V
    .locals 0
    .param p1, "dcNums"    # I

    .line 42
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    .line 43
    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0
    .param p1, "payment"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSelfSupportFlag(I)V
    .locals 0
    .param p1, "selfSupportFlag"    # I

    .line 34
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    .line 35
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "dcNums"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v1, "dcFreeNums"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    const-string v1, "acNums"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v1, "acFreeNums"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v1, "selfSupportFlag"

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    const-string v1, "busiState"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    const-string v1, "busiTime"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v1, "payment"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 169
    .local v1, "jsArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    .line 171
    .local v3, "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 172
    .end local v3    # "chargeBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    goto :goto_0

    .line 174
    :cond_0
    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiExtraBean{dcNums=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dcFreeNums=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", acNums=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", acFreeNums="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", selfSupportFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", busiState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", busiTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", payment=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
