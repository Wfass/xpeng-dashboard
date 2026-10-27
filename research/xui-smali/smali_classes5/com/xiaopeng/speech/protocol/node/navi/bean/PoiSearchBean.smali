.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;
.super Ljava/lang/Object;
.source "PoiSearchBean.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PoiSearchBean"


# instance fields
.field private destination:Ljava/lang/String;

.field private destinationAddr:Ljava/lang/String;

.field private destinationType:Ljava/lang/String;

.field private pathPref:Ljava/lang/String;

.field private travelMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;-><init>()V

    .line 34
    .local v0, "poiSearchBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "destinationPrefix"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "destinationPrefix":Ljava/lang/String;
    const-string v3, "destinationTarget"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "destinationTarget":Ljava/lang/String;
    const-string v4, "destinationName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "destinationName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v5

    .line 39
    .local v5, "isOverseasCarType":Z
    const-string v6, "PoiSearchBean"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromJson, isOverseasCarType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    if-nez v5, :cond_1

    .line 41
    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    goto :goto_2

    .line 44
    :cond_1
    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationAddr:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    .line 47
    :goto_2
    const-string v6, "travelMode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->travelMode:Ljava/lang/String;

    .line 48
    const-string v6, "destinationType"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationType:Ljava/lang/String;

    .line 49
    const-string v6, "pref"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->pathPref:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "destinationPrefix":Ljava/lang/String;
    .end local v3    # "destinationTarget":Ljava/lang/String;
    .end local v4    # "destinationName":Ljava/lang/String;
    .end local v5    # "isOverseasCarType":Z
    goto :goto_3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v0
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAddr()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationType:Ljava/lang/String;

    return-object v0
.end method

.method public getPathPref()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->pathPref:Ljava/lang/String;

    return-object v0
.end method

.method public getTravelMode()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->travelMode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiSearchBean{destination=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", travelMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->travelMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pathPref=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->pathPref:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
