.class public Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;
.super Ljava/lang/Object;
.source "ChargeData.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/bean/search/ChargeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChargingStationData"
.end annotation


# static fields
.field public static final CHARGING_SERVICE_SELF:I = 0x1


# instance fields
.field private acFreeNums:I

.field private acNums:I

.field private busiState:Z

.field private busiTime:Ljava/lang/String;

.field private chargingFee:F

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

.field private displayDistance:Ljava/lang/String;

.field private displayExpRemainDis:Ljava/lang/String;

.field private distance:F

.field private expRemainDis:F

.field private freeNumPre:Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;

.field private locationDes:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operName:Ljava/lang/String;

.field private payment:Ljava/lang/String;

.field private selfSupportFlag:I

.field private serviceFee:F

.field private stationAddr:Ljava/lang/String;

.field private stationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcFreeNums()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acFreeNums:I

    return v0
.end method

.method public getAcNums()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acNums:I

    return v0
.end method

.method public getBusiState()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiState:Z

    return v0
.end method

.method public getBusiTime()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiTime:Ljava/lang/String;

    return-object v0
.end method

.method public getChargingFee()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->chargingFee:F

    return v0
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

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->content:Ljava/util/List;

    return-object v0
.end method

.method public getDcFreeNums()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcFreeNums:I

    return v0
.end method

.method public getDcNums()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcNums:I

    return v0
.end method

.method public getDisplayDistance()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayExpRemainDis()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayExpRemainDis:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->distance:F

    return v0
.end method

.method public getExpRemainDis()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->expRemainDis:F

    return v0
.end method

.method public getFreeNumPre()Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->freeNumPre:Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;

    return-object v0
.end method

.method public getLocationDes()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->locationDes:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->operName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfSupportFlag()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->selfSupportFlag:I

    return v0
.end method

.method public getServiceFee()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->serviceFee:F

    return v0
.end method

.method public getStationAddr()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationId:Ljava/lang/String;

    return-object v0
.end method

.method public setAcFreeNums(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acFreeNums:I

    return-void
.end method

.method public setAcNums(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acNums:I

    return-void
.end method

.method public setBusiState(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiState:Z

    return-void
.end method

.method public setBusiTime(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiTime:Ljava/lang/String;

    return-void
.end method

.method public setChargingFee(F)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->chargingFee:F

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

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->content:Ljava/util/List;

    return-void
.end method

.method public setDcFreeNums(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcFreeNums:I

    return-void
.end method

.method public setDcNums(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcNums:I

    return-void
.end method

.method public setDisplayDistance(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayDistance:Ljava/lang/String;

    return-void
.end method

.method public setDisplayExpRemainDis(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayExpRemainDis:Ljava/lang/String;

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->distance:F

    return-void
.end method

.method public setExpRemainDis(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->expRemainDis:F

    return-void
.end method

.method public setLocationDes(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->locationDes:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperName(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->operName:Ljava/lang/String;

    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->payment:Ljava/lang/String;

    return-void
.end method

.method public setSelfSupportFlag(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->selfSupportFlag:I

    return-void
.end method

.method public setServiceFee(F)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->serviceFee:F

    return-void
.end method

.method public setStationAddr(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationAddr:Ljava/lang/String;

    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->getStationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stationId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->selfSupportFlag:I

    const-string v2, "selfSupportFlag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationAddr:Ljava/lang/String;

    const-string v2, "stationAddr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->expRemainDis:F

    float-to-double v1, v1

    const-string v3, "expRemainDis"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 244
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->distance:F

    float-to-double v1, v1

    const-string v3, "distance"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 245
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcNums:I

    const-string v2, "dcNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcFreeNums:I

    const-string v2, "dcFreeNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acNums:I

    const-string v2, "acNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acFreeNums:I

    const-string v2, "acFreeNums"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->chargingFee:F

    float-to-double v1, v1

    const-string v3, "chargingFee"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 250
    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->serviceFee:F

    float-to-double v1, v1

    const-string v3, "serviceFee"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 251
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiTime:Ljava/lang/String;

    const-string v2, "busiTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->locationDes:Ljava/lang/String;

    const-string v2, "locationDes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->operName:Ljava/lang/String;

    const-string v2, "operName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayDistance:Ljava/lang/String;

    const-string v2, "displayDistance"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayExpRemainDis:Ljava/lang/String;

    const-string v2, "displayExpRemainDis"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    iget-boolean v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiState:Z

    const-string v2, "busiState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 257
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->payment:Ljava/lang/String;

    const-string v2, "payment"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->content:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->content:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;

    .line 261
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ChargeBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "content"

    .line 264
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargingStationData{stationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", selfSupportFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->selfSupportFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stationAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->stationAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expRemainDis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->expRemainDis:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", distance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->distance:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", dcNums="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dcFreeNums="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->dcFreeNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", acNums="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", acFreeNums="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->acFreeNums:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chargingFee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->chargingFee:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", serviceFee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->serviceFee:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", busiTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->busiTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", locationDes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->locationDes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", operName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->operName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayExpRemainDis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->displayExpRemainDis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->content:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freeNumPre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$ChargingStationData;->freeNumPre:Lcom/xiaopeng/speech/protocol/bean/search/ChargeData$FreeNumPre;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
