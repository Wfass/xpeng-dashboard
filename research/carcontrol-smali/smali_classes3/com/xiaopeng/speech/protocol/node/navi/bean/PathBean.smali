.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;
.super Ljava/lang/Object;
.source "PathBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private destPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field private distance:I

.field private naviType:I

.field private rawAmapJson:Ljava/lang/String;

.field private routeSelectRef:I

.field private startPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field private strategy:I

.field private time:I

.field private toll:I

.field private viaPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;
    .locals 6

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pathBean"

    .line 60
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 62
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;-><init>()V

    const-string v2, "startPoint"

    .line 64
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->startPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    const-string v2, "destPoint"

    .line 65
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->destPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    const-string v2, "strategy"

    .line 66
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->strategy:I

    const-string v2, "distance"

    .line 67
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->distance:I

    const-string v2, "time"

    .line 68
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->time:I

    const-string v2, "toll"

    .line 69
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toll:I

    const-string v2, "rawAmapJson"

    .line 70
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->rawAmapJson:Ljava/lang/String;

    const-string v2, "naviType"

    .line 72
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->naviType:I

    const-string v2, "routeSelectRef"

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->routeSelectRef:I

    const-string v2, "viaPoints"

    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->viaPoints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 80
    new-instance v4, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;

    invoke-direct {v4}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;-><init>()V

    const-string v5, "pointInfo"

    .line 81
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->setPointInfo(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V

    const-string v5, "viaType"

    .line 82
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;->setViaType(I)V

    .line 83
    iget-object v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->viaPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getDestPoint()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->destPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->distance:I

    return v0
.end method

.method public getNaviType()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->naviType:I

    return v0
.end method

.method public getRawAmapJson()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->rawAmapJson:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteSelectRef()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->routeSelectRef:I

    return v0
.end method

.method public getStartPoint()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->startPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->strategy:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->time:I

    return v0
.end method

.method public getToll()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toll:I

    return v0
.end method

.method public getViaPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->viaPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDestPoint(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->destPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->distance:I

    return-void
.end method

.method public setNaviType(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->naviType:I

    return-void
.end method

.method public setRawAmapJson(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->rawAmapJson:Ljava/lang/String;

    return-void
.end method

.method public setRouteSelectRef(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->routeSelectRef:I

    return-void
.end method

.method public setStartPoint(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->startPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-void
.end method

.method public setStrategy(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->strategy:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->time:I

    return-void
.end method

.method public setToll(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toll:I

    return-void
.end method

.method public setViaPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/ViaBean;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->viaPoints:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathBean{destPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->destPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viaPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->viaPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->strategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", naviType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->naviType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeSelectRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->routeSelectRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawAmapJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->rawAmapJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
