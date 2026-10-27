.class public Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "CommandBean.java"


# instance fields
.field private json:Ljava/lang/String;

.field private packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    .line 19
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;-><init>()V

    .line 32
    .local v1, "commandBean":Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
    const-string v2, "packagename"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->setPackagename(Ljava/lang/String;)V

    .line 33
    const-string v2, "json"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->setJson(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v1

    .line 35
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "commandBean":Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getJson()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->json:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->json:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->packagename:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandBean{packagename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", json=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->json:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
