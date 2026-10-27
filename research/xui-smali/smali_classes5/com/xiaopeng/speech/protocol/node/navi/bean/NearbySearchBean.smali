.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;
.super Ljava/lang/Object;
.source "NearbySearchBean.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NearbySearchBean"


# instance fields
.field private destination:Ljava/lang/String;

.field private destinationAddr:Ljava/lang/String;

.field private destinationType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;-><init>()V

    .line 30
    .local v0, "poiSearchBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "destinationPrefix"

    const-string v3, "\u7ec8\u70b9\u4fee\u9970"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "destinationPrefix":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v3

    .line 33
    .local v3, "isOverseasCarType":Z
    const-string v4, "NearbySearchBean"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromJson, isOverseasCarType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    if-nez v3, :cond_0

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "destination"

    const-string v6, "\u7ec8\u70b9\u76ee\u6807"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_0
    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationAddr:Ljava/lang/String;

    .line 38
    const-string v4, "destination"

    const-string v5, "\u7ec8\u70b9\u76ee\u6807"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    .line 40
    :goto_0
    const-string v4, "destinationType"

    const-string v5, "\u7ec8\u70b9\u7c7b\u578b"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "destinationPrefix":Ljava/lang/String;
    .end local v3    # "isOverseasCarType":Z
    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAddr()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NearbySearchBean{destination=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
