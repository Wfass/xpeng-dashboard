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

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;
    .locals 2

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;-><init>()V

    const-string v1, "packagename"

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->setPackagename(Ljava/lang/String;)V

    const-string v1, "json"

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->setJson(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
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

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->json:Ljava/lang/String;

    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->packagename:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandBean{packagename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", json=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/command/bean/CommandBean;->json:Ljava/lang/String;

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
