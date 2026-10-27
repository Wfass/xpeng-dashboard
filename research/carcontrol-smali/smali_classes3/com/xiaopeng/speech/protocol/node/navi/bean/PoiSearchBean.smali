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
    .locals 8

    .line 32
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;-><init>()V

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "destinationPrefix"

    .line 35
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "destinationTarget"

    .line 36
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "destinationName"

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v4

    const-string v5, "PoiSearchBean"

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromJson, isOverseasCarType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_1

    .line 41
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_1
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationAddr:Ljava/lang/String;

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v2, v3

    :cond_2
    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    :goto_0
    const-string p0, "travelMode"

    .line 47
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->travelMode:Ljava/lang/String;

    const-string p0, "destinationType"

    .line 48
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationType:Ljava/lang/String;

    const-string p0, "pref"

    .line 49
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->pathPref:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
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

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destinationAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", travelMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->travelMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destinationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->destinationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pathPref=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->pathPref:Ljava/lang/String;

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
