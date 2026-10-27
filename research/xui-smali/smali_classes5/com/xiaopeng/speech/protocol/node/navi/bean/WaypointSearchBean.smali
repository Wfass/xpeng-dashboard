.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;
.super Ljava/lang/Object;
.source "WaypointSearchBean.java"


# instance fields
.field private destinationName:Ljava/lang/String;

.field private destinationType:Ljava/lang/String;

.field private isSetAsDestination:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;-><init>()V

    .line 21
    .local v0, "waypointBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "destinationName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationName:Ljava/lang/String;

    .line 23
    const-string v2, "destinationType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationType:Ljava/lang/String;

    .line 24
    const-string v2, "isSetAsDestination"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v3, v4

    nop

    :cond_0
    iput-boolean v3, v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->isSetAsDestination:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getDestinationName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationType:Ljava/lang/String;

    return-object v0
.end method

.method public isSetAsDestination()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->isSetAsDestination:Z

    return v0
.end method

.method public setDestinationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setDestinationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "destinationType"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSetAsDestination(Z)V
    .locals 0
    .param p1, "setAsDestination"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->isSetAsDestination:Z

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaypointSearchBean{destinationName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destinationType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->destinationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isSetAsDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->isSetAsDestination:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
