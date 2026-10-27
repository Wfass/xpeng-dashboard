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
    .locals 12

    const-string v0, "payment"

    const-string v1, "busiTime"

    const-string v2, "busiState"

    const-string v3, "selfSupportFlag"

    const-string v4, "acNums"

    const-string v5, "dcFreeNums"

    const-string v6, "dcNums"

    const-string v7, "acFreeNums"

    .line 102
    new-instance v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;

    invoke-direct {v8}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;-><init>()V

    .line 103
    invoke-static {}, Lbvh;->a()Z

    move-result v9

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fromJson, isOverseasCarType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PoiExtraBean"

    invoke-static {v11, v10}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    .line 111
    :cond_0
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    .line 114
    :cond_1
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 115
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    .line 117
    :cond_2
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez v9, :cond_3

    .line 119
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    .line 124
    :cond_4
    :goto_0
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 125
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    :cond_5
    if-eqz v9, :cond_b

    .line 128
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 129
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    .line 131
    :cond_6
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 132
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    .line 134
    :cond_7
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 135
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    :cond_8
    const-string p0, "content"

    .line 137
    invoke-virtual {v10, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 138
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 142
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->parseChargeBean(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_a
    invoke-virtual {v8, v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->setContent(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-object v8
.end method

.method private static parseChargeBean(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;-><init>()V

    const-string v1, "total"

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setTotal(I)V

    const-string v1, "available"

    .line 184
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setAvailable(I)V

    const-string v1, "power"

    .line 185
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->setPower(Ljava/lang/String;)V

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

    .line 66
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    return-void
.end method

.method public setAcNums(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    return-void
.end method

.method public setBusiState(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    return-void
.end method

.method public setBusiTime(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    return-void
.end method

.method public setDcFreeNums(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    return-void
.end method

.method public setDcNums(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    return-void
.end method

.method public setSelfSupportFlag(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 160
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcNums:I

    const-string v2, "dcNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->dcFreeNums:I

    const-string v2, "dcFreeNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acNums:I

    const-string v2, "acNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->acFreeNums:I

    const-string v2, "acFreeNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->selfSupportFlag:I

    const-string v2, "selfSupportFlag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    iget-boolean v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiState:Z

    const-string v2, "busiState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->busiTime:Ljava/lang/String;

    const-string v2, "busiTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->payment:Ljava/lang/String;

    const-string v2, "payment"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 169
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiExtraBean;->content:Ljava/util/List;

    if-eqz v2, :cond_0

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
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "content"

    .line 174
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
