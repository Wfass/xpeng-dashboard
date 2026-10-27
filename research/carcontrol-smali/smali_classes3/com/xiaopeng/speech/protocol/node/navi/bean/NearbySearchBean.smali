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
    .locals 6

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;-><init>()V

    .line 30
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "destinationPrefix"

    const-string/jumbo v2, "\u7ec8\u70b9\u4fee\u9970"

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v2

    const-string v3, "NearbySearchBean"

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromJson, isOverseasCarType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "\u7ec8\u70b9\u76ee\u6807"

    const-string v4, "destination"

    if-nez v2, :cond_0

    .line 35
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_0
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationAddr:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    :goto_0
    const-string p0, "destinationType"

    const-string/jumbo v2, "\u7ec8\u70b9\u7c7b\u578b"

    .line 40
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationType:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

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

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destinationAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destinationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->destinationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
